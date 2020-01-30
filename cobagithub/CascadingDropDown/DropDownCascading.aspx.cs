using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CascadingDropDown
{
    public partial class DropDownCascading : System.Web.UI.Page
    {
        string Mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cascadingdropdown();
            }
        }

        protected void cascadingdropdown()
        {
            SqlConnection sqlconn = new SqlConnection(Mainconn);
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand("select * from [dbo].[db_province_data]", sqlconn);
            sqlcomm.CommandType = CommandType.Text;
            ddProvince.DataSource = sqlcomm.ExecuteReader();
            ddProvince.DataTextField = "province_name";
            ddProvince.DataValueField = "province_code";
            ddProvince.DataBind();
            ddProvince.Items.Insert(0, new ListItem("-- Select Pronvisi --", "0"));
        }

        protected void ddProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ProvinceID = Convert.ToString(ddProvince.SelectedValue);
            SqlConnection sqlconn = new SqlConnection(Mainconn);
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand("select * from [dbo].[db_postal_code_data] where province_code LIKE " +ProvinceID, sqlconn);
            sqlcomm.CommandType = CommandType.Text;
            ddUrban.DataSource = sqlcomm.ExecuteReader();
            ddUrban.DataTextField = "urban";
            ddUrban.DataValueField = "id";
            ddUrban.DataBind();
            ddUrban.Items.Insert(0, new ListItem("-- Select Kelurahan --", "0"));
        }

        protected void ddUrban_SelectedIndexChanged(object sender, EventArgs e)
        {
            string UrbanName = Convert.ToString(ddUrban.SelectedValue);
            SqlConnection sqlconn = new SqlConnection(Mainconn);
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand("select * from [dbo].[db_postal_code_data] where id = " +UrbanName, sqlconn);
            sqlcomm.CommandType = CommandType.Text;
            ddSubDistrict.DataSource = sqlcomm.ExecuteReader();
            ddSubDistrict.DataTextField = "sub_district";
            ddSubDistrict.DataValueField = "id";
            ddSubDistrict.DataBind();
            //ddSubDistrict.Items.Insert(0, new ListItem("-- Select Kecamatan --", "0"));
        }

        protected void ddPosCode_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddSubDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
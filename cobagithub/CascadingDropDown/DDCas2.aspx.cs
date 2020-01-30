using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CascadingDropDown
{
    public partial class DDCas2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDataReader();
            }
        }

        protected void ddProvince_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BindDataReader()
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

        protected void ddUrban_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddSubDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
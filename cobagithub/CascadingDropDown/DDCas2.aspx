<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DDCas2.aspx.cs" Inherits="CascadingDropDown.DDCas2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table align="center">
                <tr>
                    <td>
                        Provinsi : 
                    </td>
                    <td>
                        <asp:DropDownList ID="ddProvince" runat="server" AutoPostBack="true"
                            OnSelectedIndexChanged="ddProvince_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                         Kelurahan :
                    </td>
                    <td>
                        <asp:DropDownList ID="ddUrban" runat="server" AutoPostBack="true" 
                             OnSelectedIndexChanged="ddUrban_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                         Kode Pos :
                    </td>
                    <td>
                        <asp:DropDownList ID="ddSubDistrict" AutoPostBack="true"  runat="server" 
                             OnSelectedIndexChanged="ddSubDistrict_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                   
            </table>

        </div>
    </form>
</body>
</html>

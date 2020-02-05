<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterKK.aspx.cs" Inherits="KTP.RegisterKK" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Data KK
            <br /><br />

            noKK :
            <asp:TextBox ID="iNoKK" runat="server"></asp:TextBox>
            <br /><br />
            Kode Pos :
            <asp:TextBox ID="iKodePos" runat="server"></asp:TextBox>
            <br /><br />
            Provinsi :
            <asp:TextBox ID="iProv" runat="server"></asp:TextBox>
            <br /><br />
            Kota / Kabupaten :
            <asp:TextBox ID="iKota" runat="server"></asp:TextBox>
            <br /><br />
            Kecamatan :
            <asp:TextBox ID="iKec" runat="server"></asp:TextBox>
            <br /><br />
            Kelurahan :
            <asp:TextBox ID="iKel" runat="server"></asp:TextBox>
            <br /><br />
            Alamat :
            <asp:TextBox ID="iAlam" runat="server"></asp:TextBox>
            <br /><br />
            RT :
            <asp:TextBox ID="iRT" runat="server"></asp:TextBox>
            <br /><br />
            RW :
            <asp:TextBox ID="iRW" runat="server"></asp:TextBox>
            <br /><br />
            ThnBlnTerbit
            <asp:TextBox ID="iTerbit" runat="server"></asp:TextBox>
            <br /><br />
            
            Image KK :
            <asp:FileUpload ID="iImageKK" runat="server" />
            <br /><br />
            
            No KK :
            <asp:TextBox ID="iNoKK2" runat="server"></asp:TextBox>
            <br /><br />
            No NIK :
            <asp:TextBox ID="iNoNIK" runat="server"></asp:TextBox>
            <br /><br />
            Nama :
            <asp:TextBox ID="iNama" runat="server"></asp:TextBox>
            <br /><br />
            Pendidikan :
            <asp:TextBox ID="iPendidikan" runat="server"></asp:TextBox>
            <br /><br />
            Jenis Pekerjaan :
            <asp:TextBox ID="iPekerjaan" runat="server"></asp:TextBox>
            <br /><br />
            Status Perkawinan :
            <asp:TextBox ID="iStatus" runat="server"></asp:TextBox>
            <br /><br />
            Kewarganegaraan :
            <asp:TextBox ID="iWarganegara" runat="server"></asp:TextBox>
            <br /><br />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterKTP.aspx.cs" Inherits="KTP.RegisterKTP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>

    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Data KTP
            <br /><br />

            noNIK :
            <asp:TextBox ID="iNoNIK" runat="server"></asp:TextBox>
            <br /><br />
            Nama :
            <asp:TextBox ID="iNama" runat="server"></asp:TextBox>
            <br /><br />
            Tempat Lahir :
            <asp:TextBox ID="iTempat" runat="server"></asp:TextBox>
            <br /><br />
            TglLahir :
            <asp:TextBox ID="iLahir" runat="server"></asp:TextBox>
            <br /><br />
            Jenis Kelamin :
            <asp:TextBox ID="iGender" runat="server"></asp:TextBox>
            <br /><br />
            Alamat :
            <asp:TextBox ID="iAddress" runat="server"></asp:TextBox>
            <br /><br />
            RT :
            <asp:TextBox ID="iRT" runat="server"></asp:TextBox>
            <br /><br />
            RW :
            <asp:TextBox ID="iRW" runat="server"></asp:TextBox>
            <br /><br />
            Kota / Kabupaten :
            <asp:TextBox ID="iKotaKab" runat="server"></asp:TextBox>
            <br /><br />
            Kecamatan :
            <asp:TextBox ID="iKecamatan" runat="server"></asp:TextBox>
            <br /><br />
            Golongan Darah :
            <asp:TextBox ID="iGolDar" runat="server"></asp:TextBox>
            <br /><br />
            Kelurahan :
            <asp:TextBox ID="iKelurahan" runat="server"></asp:TextBox>
            <br /><br />
            Foto :
            <asp:FileUpload ID="iPasFoto" runat="server" />
            <br /><br />
            Image KTP :
            <asp:TextBox ID="iImageKTP" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Button ID="cInput" runat="server" Text="Input" />

        </div>
    </form>
</body>
</html>

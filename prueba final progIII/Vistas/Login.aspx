<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ingresar</title>
    <link rel="stylesheet" type="text/css" href="estilos.css"/>
</head>
<body class="bodyLogoColor">

    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label0" runat="server" Text="Bienvenido" CssClass="labelPrincipal"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="tb_Usuario" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Email"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contraseña: "></asp:Label>
            <asp:TextBox ID="tb_Contraseña" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="hyperlink" NavigateUrl="~/Ventana_Registro.aspx">¡Quiero registrarme!</asp:HyperLink>
            <br />
            <br />
            <asp:Button ID="btn_Entrar" runat="server" Text="Entrar" CssClass="BotonPrincipal" OnClick="btn_Entrar_Click" />
        </div>
    </form>
</body>
</html>

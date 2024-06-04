<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventana_Registro.aspx.cs" Inherits="Vistas.Ventana_Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" type="text/css" href="estilos.css"/>
    <title>Nuevo Usuario</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese sus datos para registrarse" CssClass="labelPrincipal"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Nombre y Apellido"></asp:Label>
            <asp:TextBox ID="tb_NombreApellido" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="DNI"></asp:Label>
            <asp:TextBox ID="tb_DNI" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Direccion"></asp:Label>
            <asp:TextBox ID="tb_Direccion" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Localidad"></asp:Label>
            <asp:DropDownList ID="ddl_Localidad" runat="server">
                <asp:ListItem Selected="True">Tapalque</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="tb_Email" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="tb_DNI0" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Repetir contraseña"></asp:Label>
            <asp:TextBox ID="tb_Direccion0" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="btn_Registrarse" runat="server" Text="¡ Registrarme !" CssClass="BotonPrincipal"/>
            <br />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventana_Registro.aspx.cs" Inherits="Vistas.Ventana_Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" type="text/css" href="estilos.css"/>
    <title>Nuevo Usuario</title>
</head>
<body class="bodyLogoColor">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese sus datos para registrarse" CssClass="labelPrincipal"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Nombre y Apellido"></asp:Label>
            <asp:TextBox ID="tb_NombreApellido" runat="server" ValidationGroup="GrupoRegistro"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="rfvNombreApellido" runat="server" ControlToValidate="tb_NombreApellido" ForeColor="#FF3300" ValidationGroup="GrupoRegistro">*Debe ingresar un nombre y apellido</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="DNI"></asp:Label>
            <asp:TextBox ID="tb_DNI" runat="server" ValidationGroup="GrupoRegistro"></asp:TextBox>
            <br />
            <asp:CustomValidator ID="cvDNIrepetido" runat="server" ControlToValidate="tb_DNI" ErrorMessage="CustomValidator" ForeColor="#FF3300" OnServerValidate="cvDNIrepetido_ServerValidate" ValidationGroup="GrupoRegistro">*El DNI ya se encuentra registrado</asp:CustomValidator>
            <asp:RequiredFieldValidator ID="rfvNombreApellido0" runat="server" ControlToValidate="tb_DNI" ForeColor="#FF3300" ValidationGroup="GrupoRegistro">*Debe ingresar un DNI</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Direccion"></asp:Label>
            <asp:TextBox ID="tb_Direccion" runat="server" ValidationGroup="GrupoRegistro"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="tb_Direccion" ForeColor="#FF3300">*Debe ingresar una direccion</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Localidad"></asp:Label>
            <asp:DropDownList ID="ddl_Localidad" runat="server">
                <asp:ListItem Selected="True">Tapalque</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="tb_Email" runat="server" ValidationGroup="GrupoRegistro"></asp:TextBox>
            <br />
            <asp:CustomValidator ID="cvEmailRepetido" runat="server" ControlToValidate="tb_Email" ErrorMessage="CustomValidator" ForeColor="#FF3300" OnServerValidate="cvEmailRepetido_ServerValidate" ValidationGroup="GrupoRegistro">*El Email ya se encuentra registrado</asp:CustomValidator>
            <strong>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="tb_Email" Display="Dynamic" Font-Bold="False" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="GrupoRegistro">*Ingrese un Correo Electronico Valido</asp:RegularExpressionValidator>
            </strong>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="tb_Contraseña" runat="server" TextMode="Password" ValidationGroup="GrupoRegistro"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="tb_Contraseña" ForeColor="#FF3300" ValidationGroup="GrupoRegistro">*Debe ingresar una contraseña</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Repetir contraseña"></asp:Label>
            <asp:TextBox ID="tb_Contraseña2" runat="server" TextMode="Password" ValidationGroup="GrupoRegistro"></asp:TextBox>
            <br />
            <strong>
            <asp:CompareValidator ID="cvErrorPassw" runat="server" ControlToCompare="tb_Contraseña" ControlToValidate="tb_Contraseña2" CssClass="auto-style5" Display="Dynamic" Font-Bold="False" ForeColor="#FF3300" ValidationGroup="GrupoRegistro">*La contraseña no coincide </asp:CompareValidator>
            </strong>
            <br />
            <asp:Button ID="btn_Registrarse" runat="server" Text="¡ Registrarme !" CssClass="BotonPrincipal" OnClick="btn_Registrarse_Click" ValidationGroup="GrupoRegistro" CausesValidation="true"/>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="hyperlink" NavigateUrl="~/Login.aspx">Si ya tienes cuenta ¡ Inicia Sesion !</asp:HyperLink>
            <asp:Label ID="lblInfo" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login Modernizado</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('imagen01.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }
        form {
            width: 300px;
            margin: 100px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7); 
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        label {
            display: block;
            margin-top: 20px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 25px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            cursor: pointer;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;

        }
        button:hover {
            background-color: white;
            color: black;
            border: 2px solid #007bff;
        }
       .hyperlink {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Usuario: "></asp:Label>
            <asp:TextBox ID="tb_Usuario" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contraseña: "></asp:Label>
            <asp:TextBox ID="tb_Contraseña" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="hyperlink">¡Quiero registrarme!</asp:HyperLink>
            <br />
            <br />
            <asp:Button ID="btn_Entrar" runat="server" Text="Entrar" />
        </div>
    </form>
</body>
</html>

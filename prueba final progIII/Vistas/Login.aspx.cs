using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_Entrar_Click(object sender, EventArgs e)
        {
            NegocioUsuario negocioUsuario = new NegocioUsuario();
            
            if(negocioUsuario.IniciarSesion(new Usuario(tb_Usuario.Text, tb_Contraseña.Text)))
            {
                //Inicia
            }
            else
            {
                //Email o contraseña invalido
                tb_Usuario.Text= string.Empty;
                tb_Contraseña.Text = string.Empty;
            }
        }
    }
}
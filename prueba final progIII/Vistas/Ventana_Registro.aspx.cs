using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace Vistas
{
    public partial class Ventana_Registro : System.Web.UI.Page
    {
        NegocioUsuario NegocioUsuario = new NegocioUsuario();
        Usuario usuario = new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cvDNIrepetido_ServerValidate(object source, ServerValidateEventArgs args)
        {
            usuario.DNI = tb_DNI.Text;
            if (!NegocioUsuario.ExisteDNICliente(args.Value.ToString()))
            {
                args.IsValid = true;
                return;
            }
            else
            {
                args.IsValid = false;
            }
                
        }

        protected void cvEmailRepetido_ServerValidate(object source, ServerValidateEventArgs args)
        {
            usuario.Email = tb_Email.Text;
            if (!NegocioUsuario.ExisteEmailCliente(args.Value.ToString()))
            {
                args.IsValid = true;
                return;
            }
            else
            {
                args.IsValid = false;
                
            }
        }

        protected void btn_Registrarse_Click(object sender, EventArgs e)
        {
            int usuariosAgregados = 0;
            usuariosAgregados = NegocioUsuario.AgregarCliente(new Usuario(tb_NombreApellido.Text, tb_DNI.Text, tb_Direccion.Text,
                                                        "Tapalque", tb_Email.Text, tb_Contraseña.Text));
            if(usuariosAgregados==1)
            {
                lblInfo.Text = "Se agrego correctamente el usuario "+ tb_NombreApellido.Text;
            }
            LimpiarPantallaRegistro();
        }

        private void LimpiarPantallaRegistro()
        {
            tb_NombreApellido.Text = string.Empty;
            tb_DNI.Text = string.Empty;
            tb_Direccion.Text = string.Empty;
            tb_Email.Text = string.Empty;
            tb_Contraseña.Text = string.Empty;
            tb_Contraseña2.Text = string.Empty;
        }
    }
}
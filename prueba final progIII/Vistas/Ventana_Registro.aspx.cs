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
            if (!NegocioUsuario.ExisteDNICliente(args.Value.ToString()) && btn_Registrarse.Enabled == true)
            {
                args.IsValid = true;
                
            }
            else
            {
                args.IsValid = false;
                btn_Registrarse.Enabled = false; // Deshabilita el botón si la validación falla
            }
        }

        protected void cvEmailRepetido_ServerValidate(object source, ServerValidateEventArgs args)
        {
            usuario.Email = tb_Email.Text;
            if (!NegocioUsuario.ExisteEmailCliente(args.Value.ToString()))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
                btn_Registrarse.Enabled = false; // Deshabilita el botón si la validación falla
            }
        }

        protected void btn_Registrarse_Click(object sender, EventArgs e)
        {
            if (btn_Registrarse.Enabled) // Verifica que el botón esté habilitado
            {
                int usuariosAgregados = 0;
                usuariosAgregados = NegocioUsuario.AgregarCliente(new Usuario(tb_NombreApellido.Text, tb_DNI.Text, tb_Direccion.Text,
                                                                        "Tapalque", tb_Email.Text, tb_Contraseña.Text));
                if (usuariosAgregados == 1)
                {
                    lblInfo.Text = "Se agrego correctamente el usuario " + tb_NombreApellido.Text;
                }
                LimpiarPantallaRegistro();
            }
            else
            {
                btn_Registrarse.Enabled = true; // Si estaba desabilitado se vuelve a habilitar luego de omitir el alta del usuario
            }

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
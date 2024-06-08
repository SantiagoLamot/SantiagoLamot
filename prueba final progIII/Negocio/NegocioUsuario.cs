using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;

namespace Negocio
{
    public class NegocioUsuario
    {
        DaoCliente daoCliente = new DaoCliente();
        
        public NegocioUsuario()
        { }
        
        public bool IniciarSesion(Usuario usuario)
        {
            return daoCliente.IntentoIniciarSesionCliente(usuario);
        }

        public bool ExisteDNICliente(string Cliente)
        {
            return daoCliente.ExisteDNICliente(Cliente);
        }
        public bool ExisteEmailCliente(String Email )
        {
            return daoCliente.ExisteEmailCliente(Email);
        }

        public int AgregarCliente(Usuario usuario)
        {
            return daoCliente.agregarCliente(usuario);
        }
    }
}

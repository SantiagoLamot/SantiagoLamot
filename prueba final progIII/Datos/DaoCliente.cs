using Entidades;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;

namespace Datos
{
    public class DaoCliente
    {
        AccesoDatos dt = new AccesoDatos();
        
        public Boolean IntentoIniciarSesionCliente(Usuario usuario)
        {
            String consulta = "select * from Cliente where Email='"+usuario.Email+"' and Contraseña='"+usuario.Contraseña+"'";
            return dt.existe(consulta);
        }

        public Boolean ExisteDNICliente(String Cliente)
        {
            return dt.existe("select * from Cliente where DNI='" + Cliente + "'");
        }
        public Boolean ExisteEmailCliente(String Email)
        {
            return dt.existe("select * from Cliente where Email='" + Email + "'");
        }

        public int agregarCliente(Usuario usuario)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosAgregarCliente(ref comando, usuario);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spAltaCliente");
        }

        private void ArmarParametrosAgregarCliente(ref SqlCommand Comando, Usuario usuario)
        {
            SqlParameter SqlParametros = new SqlParameter();
            
            SqlParametros = Comando.Parameters.Add("@NOMBREAPELLIDO", SqlDbType.VarChar, 50);
            SqlParametros.Value = usuario.NombreApellido;
            
            SqlParametros = Comando.Parameters.Add("@DNI", SqlDbType.VarChar, 10);
            SqlParametros.Value = usuario.DNI;
            
            SqlParametros = Comando.Parameters.Add("@DIRECCION", SqlDbType.VarChar, 30);
            SqlParametros.Value = usuario.Direccion;
            
            SqlParametros = Comando.Parameters.Add("@EMAIL", SqlDbType.VarChar, 50);
            SqlParametros.Value = usuario.Email;
            
            SqlParametros = Comando.Parameters.Add("@CONTRASEÑA", SqlDbType.VarChar, 50);
            SqlParametros.Value = usuario.Contraseña;

        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    internal class Usuario
    {
        private string _NombreApellido;
        private string _DNI;
        private string _Direccion;
        private string _Localidad;
        private string _Email;
        private string _Contraseña;
        
        Usuario()
        { }
        Usuario(string NombreApellido, string DNI, string Direccion, string Localidad, string Email, string Contraseña)
        {
            _NombreApellido = NombreApellido;
            _DNI = DNI;
            _Direccion = Direccion;
            _Localidad = Localidad;
            _Email = Email;
            _Contraseña = Contraseña;
        }

        public string NombreApellido
        {
            get { return _NombreApellido; }
            set { _NombreApellido = value; }
        }
        public string DNI { 
            get { return _DNI; } 
            set { _DNI = value; } 
        }
        public string Direccion
        {
            get { return _Direccion; }
            set { _Direccion = value; }
        }
        public string Localidad
        {
            get { return _Localidad; }
            set { _Localidad = value; }
        }
        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }
        public string Contraseña
        {
            get { return _Contraseña; }
            set { _Contraseña = value; }
        }

    }

}

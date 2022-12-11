using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestLogin.UsuarioRegular
{
    public partial class Profile_Regular : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lcorreo.Text = ClsUsuario.correo;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsUsuario.correo = Tcorreo.Text;
            ClsUsuario.clave = Tclave.Text;
            ClsUsuario.nombre = Tname.Text;
            ClsUsuario.telefono = int.Parse(Ttelefono.Text);
            ClsUsuario.rutina = DDLrutina.SelectedValue;

            if (ClsUsuario.ModificarUsuario(ClsUsuario.correo, ClsUsuario.clave, ClsUsuario.nombre, ClsUsuario.Tipo) > 0)
            {
                if (ClsUsuario.AgregarPerfil(ClsUsuario.rutina, ClsUsuario.telefono) > 0)
                {
                    Label1.Text = "Modificado correctamente";
                }
                else
                {
                    
                }
                
            }
            else
            {
                Label1.Text = "Ha ocurrido un error";
            }
        }
    }
}
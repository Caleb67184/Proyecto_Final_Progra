using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestLogin.Clases;

namespace TestLogin
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bregistrar_Click(object sender, EventArgs e)
        {
            ClsUsuario.correo = Temail.Text;
            ClsUsuario.clave = Tcontrasena.Text;
            ClsUsuario.nombre = Tnombre.Text;
            
            

            if (ClsUsuario.AgregarUSuario(ClsUsuario.correo, ClsUsuario.clave, ClsUsuario.nombre) > 0)
            {
                Lmensaje2.Text = "Registrado correctamente";
            }
            else
            {
                Lmensaje2.Text = "Ha ocurrido un error, vuelvalo a intentar";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestLogin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Blogin_Click(object sender, EventArgs e)
        {
            ClsUsuario.correo = username.Text;
            ClsUsuario.clave = password.Text;
            

            if (ClsUsuario.ValidarLogin(ClsUsuario.correo, ClsUsuario.clave) > 0)
            {
                if (ClsUsuario.Tipo.Equals("Administrador"))
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Redirect("UsuarioRegular/Home_Regular.aspx");
                }

            }
            else
            {
                Lmensaje.Text = " Correo o contraseña incorrecto";
            }
        }

        protected void Breg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrar.aspx");
        }
    }
}
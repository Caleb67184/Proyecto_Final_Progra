using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestLogin
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Badd_Click(object sender, EventArgs e)
        {
            

            ClsUsuario.correo = Tmail.Text;
            ClsUsuario.clave = Tpassword.Text;
            ClsUsuario.nombre = Tname.Text;

            if (DDLtipo.SelectedIndex == 0)
            {
                ClsUsuario.Tipo = "Regular";
            }
            else if (DDLtipo.SelectedIndex == 1)
            {
                ClsUsuario.Tipo = "Administrador";
            }


            if (ClsUsuario.AgregarAdmin(ClsUsuario.correo, ClsUsuario.clave, ClsUsuario.nombre, ClsUsuario.Tipo) > 0)
            {
                Label1.Text = "Agregado correctamente";
            }
            else
            {
                Label1.Text = "Ha ocurrido un error";
            }
        }

        protected void Bmodify_Click(object sender, EventArgs e)
        {
            ClsUsuario.correo = Tmail.Text;
            ClsUsuario.clave = Tpassword.Text;
            ClsUsuario.nombre = Tname.Text;

            if (DDLtipo.SelectedIndex == 0)
            {
                ClsUsuario.Tipo = "Regular";
            }
            else if (DDLtipo.SelectedIndex == 1)
            {
                ClsUsuario.Tipo = "Administrador";
            }

            if (ClsUsuario.ModificarUsuario(ClsUsuario.correo, ClsUsuario.clave, ClsUsuario.nombre, ClsUsuario.Tipo) > 0)
            {
                Label1.Text = "Modificado correctamente";
            }
            else
            {
                Label1.Text = "Ha ocurrido un error";
            }
        }

        protected void Bdelete_Click(object sender, EventArgs e)
        {
            ClsUsuario.correo = Tmail.Text;

            if (ClsUsuario.EliminarUsuario(ClsUsuario.correo) > 0)
            {
                Label1.Text = "Eliminado correctamente";
            }
            else
            {
                Label1.Text = "Ha ocurrido un error";
            }
        }
    }
}
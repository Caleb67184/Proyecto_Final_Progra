using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestLogin.Clases;

namespace TestLogin
{
    public partial class Canton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {
            ClsCanton.nombre_Canton = Tnombre.Text;

            if (ClsCanton.AgregarCanton(ClsCanton.nombre_Canton) > 0)
            {
                Label1.Text = "Agregado correctamente";
            }
            else
            {
                Label1.Text = "Ha ocurrido un error";
            }
        }

        protected void Bmodificar_Click(object sender, EventArgs e)
        {
            ClsCanton.nombre_Canton = Tnombre.Text;
            ClsCanton.codigo_Canton = Tcodigo.Text;

            if (ClsCanton.ModificarCanton(ClsCanton.nombre_Canton, ClsCanton.codigo_Canton) > 0)
            {
                Label1.Text = "Modificado correctamente";
            }
            else
            {
                Label1.Text = "Ha ocurrido un error";
            }
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            ClsCanton.codigo_Canton = Tcodigo.Text;

            if (ClsCanton.EliminarCanton(ClsCanton.codigo_Canton) > 0)
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
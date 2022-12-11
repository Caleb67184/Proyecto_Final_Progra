using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestLogin.Clases;

namespace TestLogin
{
    public partial class Provincia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {
            ClsProvincia.nombre_Provincia = Tnombre.Text;

            if (ClsProvincia.AgregarProvincia(ClsProvincia.nombre_Provincia) > 0)
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
            ClsProvincia.nombre_Provincia = Tnombre.Text;
            ClsProvincia.codigo_Provincia = Tcodigo.Text;

            if (ClsProvincia.ModificarProvincia(ClsProvincia.nombre_Provincia, ClsProvincia.codigo_Provincia) > 0)
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
            ClsProvincia.codigo_Provincia = Tcodigo.Text;

            if (ClsProvincia.EliminarProvincia(ClsProvincia.codigo_Provincia) > 0)
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
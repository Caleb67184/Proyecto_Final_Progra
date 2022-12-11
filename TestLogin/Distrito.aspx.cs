using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestLogin.Clases;

namespace TestLogin
{
    public partial class Distrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {
            ClsDistrito.nombre_Distrito = Tnombre.Text;

            if (ClsDistrito.AgregarDistrito(ClsDistrito.nombre_Distrito) > 0)
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
            ClsDistrito.nombre_Distrito = Tnombre.Text;
            ClsDistrito.codigo_Distrito = Tcodigo.Text;

            if (ClsDistrito.ModificarDistrito(ClsDistrito.nombre_Distrito, ClsDistrito.codigo_Distrito) > 0)
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
            ClsDistrito.codigo_Distrito = Tcodigo.Text;

            if (ClsDistrito.EliminarDistrito(ClsDistrito.codigo_Distrito) > 0)
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestLogin.Clases;

namespace TestLogin
{
    public partial class Rutinas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {
            ClsRutinas.nombre_Rutina = Trutina.Text;

            if (ClsRutinas.AgregarRutina(ClsRutinas.nombre_Rutina) > 0)
            {
                Lmensaje.Text = "Rutina agregada correctamente";
            }
            else
            {
                Lmensaje.Text = "Ha ocurrido un error";
            }
        }

        protected void Bmodificar_Click(object sender, EventArgs e)
        {
            ClsRutinas.nombre_Rutina = Trutina.Text;
            ClsRutinas.codigo_Rutina = Tcodigo.Text;

            if (ClsRutinas.ModificarRutina(ClsRutinas.nombre_Rutina, ClsRutinas.codigo_Rutina) > 0)
            {
                Lmensaje.Text = "Rutina modificada correctamente";
            }
            else
            {
                Lmensaje.Text = "Ha ocurrido un error";
            }
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            ClsRutinas.codigo_Rutina = Tcodigo.Text;

            if (ClsRutinas.EliminarRutina(ClsRutinas.codigo_Rutina) > 0)
            {
                Lmensaje.Text = "Rutina eliminada correctamente";
            }
            else
            {
                Lmensaje.Text = "Ha ocurrido un error";
            }
        }
    }
}
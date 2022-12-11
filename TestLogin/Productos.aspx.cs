using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestLogin.Clases;

namespace TestLogin
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {
            ClsProducto.nombre_Producto = Tnombre.Text;
            ClsProducto.precio = Tprecio.Text;

            if (ClsProducto.AgregarProducto(ClsProducto.nombre_Producto, ClsProducto.precio) > 0)
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
            ClsProducto.nombre_Producto = Tnombre.Text;
            ClsProducto.precio = Tprecio.Text;
            ClsProducto.codigo_Producto = Tcodigo.Text;

            if (ClsProducto.ModificarProducto(ClsProducto.nombre_Producto, ClsProducto.precio, ClsProducto.codigo_Producto) > 0)
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
            ClsProducto.codigo_Producto = Tcodigo.Text;

            if (ClsProducto.EliminarProducto(ClsProducto.codigo_Producto) > 0)
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
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestLogin.Clases;

namespace TestLogin
{
    public partial class Facturación : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5] { new DataColumn("Codigo"), new DataColumn("Nombre"), new DataColumn("cantidad"), new DataColumn("Precio"), new DataColumn("Subtotal") });
                ViewState["Factura"] = dt;
                this.BindGrid();

            }
        }

        protected void Tproducto_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void BindGrid()
        {
            GridView1.DataSource = (DataTable)ViewState["Factura"];
            GridView1.DataBind();
        }

        protected void Bingresar_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = (DataTable)ViewState["Factura"];
                float sb = (float.Parse(Tcantidad.Text) * float.Parse(Tprecio.Text));
                ViewState["Subtotal"] = (float.Parse(Tcantidad.Text) * float.Parse(Tprecio.Text));
                dt.Rows.Add(Tcodigo.Text.Trim(), Tproducto.Text.Trim(), Tcantidad.Text.Trim(), Tprecio.Text.Trim(), ViewState["Subtotal"]);
                ViewState["Factura"] = dt;
                this.BindGrid();

                ViewState["subtotal"] = (float.Parse(LSB.Text) + sb);
                LSB.Text = (ViewState["subtotal"]).ToString();
                ViewState["IVA"] = (float.Parse(LSB.Text) * 0.13);
                LIVA.Text = (ViewState["IVA"]).ToString();
                ViewState["total"] = (float.Parse(LSB.Text) + float.Parse(LIVA.Text));
                LTOTAL.Text = (ViewState["total"]).ToString();

                Tcodigo.Focus();
                Tcodigo.Text = "";
                Tproducto.Text = "";
                Tcantidad.Text = "";
                Tprecio.Text = "";


            }
            catch (Exception)
            {


            }


            finally
            {


            }
        }

        protected void Tcodigo_TextChanged(object sender, EventArgs e)
        {
            Tproducto.Text = ClsProducto.BuscarProducto(Tcodigo.Text);
            Tprecio.Text = ClsProducto.precio;
        }

        protected void Bfacturar_Click(object sender, EventArgs e)
        {
            ClsFacturas.total = float.Parse(LTOTAL.Text);
            ClsFacturas.Cliente = Tcodigocliente.Text;

            if (ClsFacturas.AgregarMaeFactura(ClsFacturas.Cliente, ClsFacturas.total) > 0)
            {
                int linea = 0;
                foreach (GridViewRow item in GridView1.Rows)
                {

                    int codigo = int.Parse(item.Cells[0].Text);
                    int cantidad = int.Parse(item.Cells[2].Text);
                    float precio = float.Parse(item.Cells[3].Text);
                    linea++;
                    if (ClsFacturas.AgregarDetalleFactura(linea, codigo, cantidad, precio) > 0)
                    {
                        Lmensaje.Text = "Factura agregada correctamente";
                    }

                }
                DataTable ds = new DataTable();
                ds = null;
                GridView1.DataSource = ds;
                GridView1.DataBind();

            }
        
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace TestLogin.Clases
{
    public class ClsFacturas
    {
        public static int codigo_Produc { get; set; }
        public static string Cliente { get; set; }

        public static float total { get; set; }

        public static int linea { get; set; }

        public static int cantidad { get; set; }

        public static float precio_unitario { get; set; }


        public static int AgregarMaeFactura(string Cliente, float total)
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = DboConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("MaeFactura", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@cliente", Cliente));
                    cmd.Parameters.Add(new SqlParameter("@total", total));



                    retorno = cmd.ExecuteNonQuery();

                }
            }
            catch (System.Data.SqlClient.SqlException)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }

        public static int AgregarDetalleFactura(int linea, int codigo_Produc, int cantidad, float total)
        {
            int retorno = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = DboConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("DetFactura", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@linea", linea));
                    cmd.Parameters.Add(new SqlParameter("@codigo_Produc", codigo_Produc));
                    cmd.Parameters.Add(new SqlParameter("@cantidad", cantidad));
                    cmd.Parameters.Add(new SqlParameter("@precio_unitario", total));



                    retorno = cmd.ExecuteNonQuery();

                }
            }
            catch (System.Data.SqlClient.SqlException)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }
    }
}
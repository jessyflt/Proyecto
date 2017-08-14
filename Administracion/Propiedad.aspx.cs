using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administracion_Propiedad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
            {




                conn.Open();
                string query = @"insert into Propiedades  (codPropiedad, FechaContrato, Estado, codDue, TipoP, DireccionT, SectorT, CiudadT) 
                            values (@cod, @fechac,@estado, @codDue,  @tipo, @direccion, @sector, @ciudad)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@cod", txtCodigoPropiedad.Text);
                cmd.Parameters.AddWithValue("@fechac", calendarP.SelectedDate.ToShortDateString());
                cmd.Parameters.AddWithValue("@estado", listEstado.SelectedValue);
                cmd.Parameters.AddWithValue("@codDue", listDue.SelectedValue);
                cmd.Parameters.AddWithValue("@tipo", tipoP.SelectedValue);
                cmd.Parameters.AddWithValue("@direccion", txtDireccionT.Text);
                cmd.Parameters.AddWithValue("@sector", txtSector.Text);
                cmd.Parameters.AddWithValue("@ciudad", txtCiudad.Text);




                cmd.ExecuteNonQuery();
                String Valor = txtCodigoPropiedad.Text;
                if (tipoP.SelectedValue == "Casa")
                {
                    Response.Redirect("Casas.aspx?valor=" + Valor);
                } else
                {
                    if(tipoP.SelectedValue == "Terreno")
                    {
                        Response.Redirect("Terreno.aspx?valor=" + Valor);
                    }
                    else
                    {
                        Response.Redirect("Departamento.aspx?valor=" + Valor);
                    }
                }
                

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void txtNDue_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dueno.aspx");
    }
}
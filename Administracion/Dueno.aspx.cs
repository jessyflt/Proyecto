using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administracion_Dueno : System.Web.UI.Page
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
                string query = @"insert into Dueño  (codDue, CIDue, nombreDue, apellidoDue, tlfDue, DireccionDue, CiudadDue) 
                            values (@cod, @cedula,@nombre, @apellido,  @telefono, @direccion, @ciudad)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@cod", txtCodigoDue.Text);
                cmd.Parameters.AddWithValue("@cedula", txtCedulaD.Text);
                cmd.Parameters.AddWithValue("@apellido", txtApellidoD.Text);
                cmd.Parameters.AddWithValue("@nombre", txtNombreD.Text);
                cmd.Parameters.AddWithValue("@telefono", txtTelefonoD.Text);
                cmd.Parameters.AddWithValue("@direccion", txtDireccionD.Text);
                cmd.Parameters.AddWithValue("@ciudad", txtCiudadD.Text);




                cmd.ExecuteNonQuery();

                Response.Redirect("Propiedad.aspx");

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Propiedad.aspx");

    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administracion_RegistrarCliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["InmobiliariaConnectionString"].ToString()))
            {
                conn.Open();
                string query = @"insert into COMPRADOR(codCompr, ciCompr, nombreCompr,apellidoCompr,tlfCompr,DireccionCompr,CiudadCompr) 
                            values (@codCompr,@ciCompr,@nombreCompr,@apellidoCompr,@tlfCompr,@DireccionCompr,@CiudadCompr)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@codCompr",txtCod.Text);
                cmd.Parameters.AddWithValue("@ciCompr", txtCedCom.Text);
                cmd.Parameters.AddWithValue("@nombreCompr", txtNomCom.Text);
                cmd.Parameters.AddWithValue("@apellidoCompr", txtApelCom.Text);
                cmd.Parameters.AddWithValue("@tlfCompr", txtTelfCom.Text);
                cmd.Parameters.AddWithValue("@DireccionCompr", txtDirCom.Text);
                cmd.Parameters.AddWithValue("@CiudadCompr", txtCiuCom.Text);
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }

}

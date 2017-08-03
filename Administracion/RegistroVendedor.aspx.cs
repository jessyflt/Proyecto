using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Administracion_RegistroVendedor : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    


    protected void btnregistro_Click(object sender, EventArgs e)
    {
        try
        {

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["InmobiliariaConnectionString"].ToString()))
            {
                conn.Open();
                string query = @"insert into VENDEDOR(codVend, nombreVend, apellidoVend) 
                            values (@codVend, @nombreVend, @apellidoVend)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@codVend", txtcodigo.Text);
                cmd.Parameters.AddWithValue("@nombreVend", txtname);
                cmd.Parameters.AddWithValue("@apellidoVend", txtapellido.Text);
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Administracion_RegistroVendedor : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        String source = @"Data Source = WORK; Initial Catalog = Inmobiliaria; Integrated Security = True"; 
SqlConnection conexion = new SqlConnection(source);
        conexion.Open();
        SqlCommand query = new SqlCommand("Insert into VENDEDOR(codVend, nombreVend, apellidoVend) Values('" +codigo.text + "'',''" + name.text +"','"+ username.text + "'');", conexion);
        query.ExecuteNonQuery();
        conexion.Close();
       
       
    }
    
}

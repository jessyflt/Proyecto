using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administracion_Catalogo : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
       

}

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
       
        //Recuperar el identificador
        string codT = Request.QueryString["codT"];
        //Crear conexion
        using (SqlConnection con = new SqlConnection())
        {
            //Obtener ConnectionSctring de web.config
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("~");
            System.Configuration.ConnectionStringSettings connString;
            if (0 < rootWebConfig.ConnectionStrings.ConnectionStrings.Count)
            {
                connString = rootWebConfig.ConnectionStrings.ConnectionStrings["Data Source=WORK;Initial Catalog=Inmobiliaria;Integrated Security=True"];
                if (null != connString)
                {
                    con.ConnectionString = connString.ToString();
                    con.Open();
                    using (SqlCommand com = con.CreateCommand())
                    {
                        //tipo de comado StoreProcedure o consulta
                        com.CommandType = CommandType.Text;
                        //nombre del StoreProcedure o consulta
                        com.CommandText = "SELECT Inmobiliaria FROM TERRENOS WHERE codT=" + codT;
                        try
                        {
                            //Ejecutar comando
                            byte[] img = (byte[])com.ExecuteScalar();
                        }
                        catch (SqlException se) { }
                    }
                    //Cerrar conexion
                    con.Close();
                }

            }
        }
    }

}
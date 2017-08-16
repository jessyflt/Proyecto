using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administracion_Prueba : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(GridView1.SelectedRow != null)
        {
            String cprop = GridView1.SelectedRow.Cells[2].Text.ToString();
            // = 
            GridView1.Visible = false;
            GridView3.Visible = false;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand("SELECT p.[Estado], p.[DireccionT], p.[SectorT],p.[CiudadT],c.[AreaC], c.[NrPisos], c.[NrHabitacionesC], c.[NrBañosC], c.[TelefC], c.[GarajeC]  FROM[Inmobiliaria].[dbo].[Propiedades] p inner join[Inmobiliaria].[dbo].[CASA] c  on p.codPropiedad = c.codPropiedad and p.codPropiedad = '" + cprop+"'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            foreach (DataTable dt in ds.Tables)
            {
                GridView2.DataSource = dt;
                GridView2.DataBind();
                GridView2.Visible = true;
            }
        }


    }
}
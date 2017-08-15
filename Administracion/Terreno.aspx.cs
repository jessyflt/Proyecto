using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administracion_Terreno : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private Boolean ValidarExtension(string sExtension)
    {
        Boolean verif = false;
        switch (sExtension)
        {
            case ".jpg":
            case ".jpeg":
            case ".png":
            case ".gif":
            case ".bmp":
                verif = true;
                break;
            default:
                verif = false;
                break;
        }
        return verif;
    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        try
        {
            string Extension = string.Empty;
            string Nombre = string.Empty;

            if (txtCodigoTe.Text != "" && txtArea.Text != "" && txtFrente.Text != "" && txtFondo.Text != ""  && FileUpload1.HasFile)
            {
                Nombre = FileUpload1.FileName;
                Extension = Path.GetExtension(Nombre);

                if (ValidarExtension(Extension))
                {

                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
                    {




                        conn.Open();
                        string query = @"insert into Terrenos  (codT, AreaT, FrenteT, FondoT, codPropiedad, fotoTerreno) 
                            values (@cod, @area,@frente, @fondo, @prop, @photo)";

                        SqlCommand cmd = new SqlCommand(query, conn);
                        cmd.CommandType = CommandType.Text;
                        String Valor = Request.QueryString["Valor"];
                        cmd.Parameters.AddWithValue("@cod", txtCodigoTe.Text);
                        cmd.Parameters.AddWithValue("@area", txtArea.Text);
                        cmd.Parameters.AddWithValue("@frente", txtFrente.Text);
                        cmd.Parameters.AddWithValue("@fondo", txtFondo.Text);
                        cmd.Parameters.AddWithValue("@prop", Valor);
                        cmd.Parameters.AddWithValue("@photo", FileUpload1.FileBytes);




                        cmd.ExecuteNonQuery();

                        Response.Redirect("Home.aspx");

                    }
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }


    }
}
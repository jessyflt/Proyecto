using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administracion_AdminUsuario : System.Web.UI.Page
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
                string query = @"insert into Usuario  (usrid, usrcedula, usrapellidop, usrapellidom, usrnombrec, usrmail, usridusuario, usrclave, prfcodigoi) 
                            values (@id, @cedula, @apellidop, @apellidom, @nombres, @mail, @usuario, @clave, @perfil)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@id", txtIdUs.Text);
                cmd.Parameters.AddWithValue("@cedula", txtCedula.Text);
                cmd.Parameters.AddWithValue("@apellidop", txtApellidoP.Text);
                cmd.Parameters.AddWithValue("@apellidom", txtApellidoM.Text);
                cmd.Parameters.AddWithValue("@nombres", txtNombres.Text);
                cmd.Parameters.AddWithValue("@mail", txtMail.Text);
                cmd.Parameters.AddWithValue("@usuario", txtUserName.Text);
                cmd.Parameters.AddWithValue("@clave", txtClave.Text);
                cmd.Parameters.AddWithValue("@perfil", perfil.SelectedValue);


                int exito = cmd.ExecuteNonQuery();
                if(exito == 1)
                {
                    //Mensaje exitoso
                    //MsgBox("Usuario guardado exitosamente");
                    Response.Redirect("ListarUsuario.aspx");
                }

                
                else
                {
                    //Mensaje de error
                    MsgBox("El usuario no se ha guardado");

                }
                cmd.Connection.Close();


            }

        }
        catch (Exception ex)
        {
            throw ex;
        }

    }

    public void MsgBox(String msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'>alert('" + msg + "')</script>");
    }
}
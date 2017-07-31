using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void LogginButton_Click(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
        {

            cn.Open();
           // SqlCommand cmd = new SqlCommand();
            SqlCommand cmd = new SqlCommand("select * from Usuario where usridusuario =@USUARIO and usrclave=@CLAVE");

            cmd.Connection = cn;
            cmd.Parameters.AddWithValue("@USUARIO", Login1.UserName);
            cmd.Parameters.AddWithValue("@CLAVE", Login1.Password);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Session["UserName"] = reader.GetValue(2);
                    Session["idPerfil"] = reader.GetValue(0);
                }
                e.Authenticated = true;

            }
            else
            {
                e.Authenticated = false;

                Response.Redirect("Login.aspx");
                //Response.Write("<script>alert('Usuario o contrase�a invalidos');</script>");
            }
        }
    }

    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        int tipo = Convert.ToInt32(Session["idPerfil"].ToString());
        if (tipo == 1)
        {
            Response.Redirect("./Administracion/AdminUsuario.aspx");
        }
        else
        {
            //Session["tiempo"] = 120;
            Response.Redirect("./Default.aspx");
        }
    }
}
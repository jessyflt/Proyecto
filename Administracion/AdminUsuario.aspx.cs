using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administracion_AdminUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void EnviaMail()
    {
        //Funcion para enviar mail
        System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();

        msg.To.Add(txtMail.Text);
        //Direcc�n de mail del emisor
        msg.From = new MailAddress("jannethburi@gmail.com", "Janneth", System.Text.Encoding.UTF8);
        //Asunto
        msg.Subject = "Bienvenida";
        msg.SubjectEncoding = System.Text.Encoding.UTF8;

        //Cuerpo del Mensaje
        msg.Body = "Bienes Raices J&J le da la cordial bienvenida a disfrutar de nuestros servicios y grandes beneficios\n Su usuario es: "+txtUserName.Text+"\n Su clave es: "+txtClave.Text;
        msg.BodyEncoding = System.Text.Encoding.UTF8;
        msg.IsBodyHtml = false;

        //Aqu� es donde se hace lo especial
        SmtpClient client = new SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("jannethburi@gmail.com", "@m0rn0existe");
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true; //Esto es para que vaya a trav�s de SSL que es obligatorio con GMail
                                 //Adjunto:
       
        try
        {
            client.Send(msg);
        }
        catch (System.Net.Mail.SmtpException ex)
        {
            Console.WriteLine(ex.Message);
            Console.ReadLine();
        }
    }

   


    protected void btnGuardar_Click(object sender, EventArgs e)
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



            cmd.ExecuteNonQuery();

            EnviaMail();
           
        }




    }
}


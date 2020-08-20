using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;

namespace Haramain_High_Speed_Rail
{
    public partial class Default : System.Web.UI.Page
    {
        private string abc = WebConfigurationManager.ConnectionStrings["HaramainRailwayConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            MailMessage mm = new MailMessage("sender@gmail.com", "receiver@gmail.com");
            mm.Subject = txtSubject.Text;
            mm.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br />" + txtBody.Text;
            if (FileUpload1.HasFile)
            {
                string FileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                mm.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileName));
            }
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "ticketreservation0@gmail.com";
            NetworkCred.Password = "ticket12345";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            lblMessage.Text = "Email Sent SucessFully.";
        }
    }

           
}
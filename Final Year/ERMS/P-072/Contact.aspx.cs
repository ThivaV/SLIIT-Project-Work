using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnter_Click(object sender, EventArgs e)
    {
        string UsrName = txtName.Text.Trim();
        string UsrMail = txtEmail.Text.Trim();
        string UsrMsg = txtMsg.Text.Trim();
        try
        {
            MailMessage mail = new MailMessage();
            MailAddress mailAddress = new MailAddress("erms.latlonginfo.latlong@gmail.com", "LatLong.Info"); /// ppremje@gmail.com,ytharangi@gmail.com
            mail.To.Add(mailAddress);
            mail.From = mailAddress;

            mail.Subject = "ERMS Mail service";
            mail.Body = "User Name :" + UsrName + "User Email ID : " + UsrMail + "User Message :" + UsrMsg;
            //mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
            //mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "my_username_here");
            //mail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "super_secret");


            string sendEmailsFrom = "erms.latlonginfo.latlong@gmail.com";
            string sendEmailsFromPassword = "edmsemtesaepi";
            NetworkCredential credentials = new NetworkCredential(sendEmailsFrom, sendEmailsFromPassword);


            SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
            mailClient.Credentials = credentials;
            mailClient.EnableSsl = true;
            mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            mailClient.Send(mail);
        }
        catch (Exception ex)
        {
            throw;
        }
    }
}
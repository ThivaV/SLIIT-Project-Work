using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BL;
using System.Web.Mail;
using System.Collections.Generic;  

public partial class _Default : System.Web.UI.Page
{
    BL.OnlinePay objonlinePay = new OnlinePay();  
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = Session["EmailId"].ToString();
        Session["EmailId"] = email; 
        txtSerialNo.Text   = objonlinePay.GetSerialNo().ToString() ;
        MailSender.SendEmail("thivaharan28@gmail.com", "iloveamma", email, "test subject", "test message", System.Web.Mail.MailFormat.Text, "");
 
      if (!IsPostBack)
      {

          //System.Net.Mail.MailMessage Mail = new System.Net.Mail.MailMessage();
          //Mail.From = "teva@gmail.com";
          //Mail.To = "";
          //Mail.Subject = "Registeration Detail";           
          //Mail.Body = "Your SerializableAttribute No : " + txtSerialNo.Text.ToString();
          //System.Net.Mail.SmtpClient = "smtp.gmail.com";   
        
      }
    }
}

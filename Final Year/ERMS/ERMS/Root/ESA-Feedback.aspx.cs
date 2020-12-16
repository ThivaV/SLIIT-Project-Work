using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class ESA_Feedback : System.Web.UI.Page
{
    MailSender objMailSender = new MailSender();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        string body = txtName.Text + ".." + txtMail.Text + "..," + txtMsg.Text;

        objMailSender.strMailAdd = "erms.latlonginfo.latlong@gmail.com";
        objMailSender.strMailBody = body;       
        objMailSender.autoMail(objMailSender);
    }
}
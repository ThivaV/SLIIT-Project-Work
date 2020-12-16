using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BL;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


public partial class EPI_Send_Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        CheckAndSendMessage();
    }

    private void CheckAndSendMessage()
    {
        if (txtRece.Text == "")
        {           
            lblMsg.Text = "Recipient field must't be empty!" + "," + "Incorrect field value";
            return;
        }
        else
        {
            string errorMsg = "";
            BL.DatabaseHandling.insertMessage(txtRece.Text, txtMsg.Text, out errorMsg);            
            lblMsg.Text = "Result of inserting message";
        }
    }
}
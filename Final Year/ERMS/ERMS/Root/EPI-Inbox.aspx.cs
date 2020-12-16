using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using BL;

public partial class EPI_Inbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        IncomeGridBind();
    }

    /// <summary>
    /// Incoming sms Grid Bind
    /// </summary>
    public void IncomeGridBind()
    {
        //Grid SMS Out
        SqlConnection sqlconView = new SqlConnection(DL.SQL.connSMS);
        SqlDataAdapter adp = new SqlDataAdapter("SELECT id AS ID,sender AS Sender,msg AS Message,senttime AS SentTime,receivedtime AS ReceivedTime FROM ozekimessagein ", sqlconView);
        SqlCommandBuilder cb = new SqlCommandBuilder(adp);
        sqlconView.Open();

        DataSet dsItem = new DataSet();
        adp.Fill(dsItem, "sample1");
        GridViewInbox.DataSource = dsItem.Tables[0];
        GridViewInbox.DataBind();
    }   
}
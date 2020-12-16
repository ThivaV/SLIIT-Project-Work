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

public partial class EPI_Outbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OutgoingGridBind();
    }

    /// <summary>
    /// Outgoing sms Grid Bind
    /// </summary>
    public void OutgoingGridBind()
    {        
        //Grid SMS Out
        SqlConnection sqlconView = new SqlConnection(DL.SQL.connSMS);
        SqlDataAdapter adp = new SqlDataAdapter("SELECT id AS ID,senttime AS SentTime,receiver AS Receiver,msg AS Message,status AS Status FROM ozekimessageout ", sqlconView);
        SqlCommandBuilder cb = new SqlCommandBuilder(adp);
        sqlconView.Open();

        DataSet dsItem = new DataSet();
        adp.Fill(dsItem, "sample1");
        GridViewOutbox.DataSource = dsItem.Tables[0];
        GridViewOutbox.DataBind();
    }   
}
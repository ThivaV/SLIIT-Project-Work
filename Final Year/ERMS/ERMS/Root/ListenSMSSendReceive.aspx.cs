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

public partial class ListenSMSSendReceive : System.Web.UI.Page
{
    BL.GeoOrganization objGeoOrganization = new GeoOrganization();

    string strlat;
    string strlng;
    string strBlockTyp;
    string strDes;

    protected void Page_Load(object sender, EventArgs e)
    {
        IncomeGridBind();
        OutgoingGridBind();
    }
    protected void BtnSend_Click(object sender, EventArgs e)
    {
        CheckAndSendMessage();
    }
    private void CheckAndSendMessage()
    {
        if (txtRecipient.Text == "")
        {
            //MessageBox.Show("Recipient field mustn't be empty!","Incorrect field value");
            lblMsg.Text= "Recipient field must't be empty!" + "," + "Incorrect field value";
            return;
        }

        string errorMsg = "";       
        BL.DatabaseHandling.insertMessage(txtRecipient.Text, txtMessage.Text, out errorMsg);
        //MessageBox.Show(errorMsg, "Result of inserting message");
        lblMsg.Text="Result of inserting message";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ReadSMS();
        objGeoOrganization.strLatPoint = strlat;
        objGeoOrganization.strLngPoint = strlng;
        objGeoOrganization.FindNearestGeo(objGeoOrganization);
    }
    protected void Btn1Refrsh_Click(object sender, EventArgs e)
    {
        IncomeGridBind();
    }
    protected void Btn2Refrsh_Click(object sender, EventArgs e)
    {
        OutgoingGridBind();
    }

    /// <summary>
    /// Incoming sms Grid Bind
    /// </summary>
    public void IncomeGridBind() 
    {
        //Grid SMS Out
        SqlConnection sqlconView = new SqlConnection(DL.SQL.connSMS);
        SqlDataAdapter adp = new SqlDataAdapter("SELECT id AS ID,receiver AS Receiver,msg AS Message,status AS Status FROM ozekimessageout ", sqlconView);
        SqlCommandBuilder cb = new SqlCommandBuilder(adp);
        sqlconView.Open();

        DataSet dsItem = new DataSet();
        adp.Fill(dsItem, "sample1");
        GridOut.DataSource = dsItem.Tables[0];
        GridOut.DataBind();
    }
    /// <summary>
    /// Outgoing sms Grid Bind
    /// </summary>
    public void OutgoingGridBind() 
    {
        //Grid SMS In
        SqlConnection sqlconView = new SqlConnection(DL.SQL.connSMS);
        SqlDataAdapter adp = new SqlDataAdapter("SELECT id AS ID,sender AS Sender,msg AS Message,reference AS Reference FROM ozekimessagein ", sqlconView);
        SqlCommandBuilder cb = new SqlCommandBuilder(adp);
        sqlconView.Open();

        DataSet dsItem = new DataSet();
        adp.Fill(dsItem, "sample1");
        GridIn.DataSource = dsItem.Tables[0];
        GridIn.DataBind();
    }    
    /// <summary>
    /// Read SMS
    /// </summary>
    public void ReadSMS() 
    {
        ArrayList myWordLoopArray = new ArrayList();       

        int intInputID = int.Parse(txtID.Text.Trim());

        SqlConnection sqlconn = new SqlConnection(DL.SQL.connSMS);
        sqlconn.Open();

        SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand("SELECT msg FROM ozekimessagein WHERE id=" + intInputID + " ", sqlconn);
        SqlDataReader sqlred = sqlcom.ExecuteReader();
        sqlred.Read();

        string Message = sqlred["msg"].ToString();

        sqlred.Close();
        sqlconn.Close();

        string[] Words = Message.Split('*');

        int Key = 0;

        foreach(String Word in Words)
        {
            myWordLoopArray.Insert(Key, Word);
            Key++;
        }
        strBlockTyp = myWordLoopArray[0].ToString();
        strDes = myWordLoopArray[1].ToString();
        strlat = myWordLoopArray[2].ToString();
        strlng = myWordLoopArray[3].ToString();    
    }
}
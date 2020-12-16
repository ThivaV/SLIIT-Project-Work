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

public partial class EPI_Default : System.Web.UI.Page
{
    BL.GeoOrganization objGeoOrganization = new GeoOrganization();

    string id;

    ArrayList SplitWordArray = new ArrayList();
    int index = 0;

    string AccType;
    string AccDes;
    string lat;
    string lng;

    protected void Page_Load(object sender, EventArgs e)
    {
        IncomeGridBind();
    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
        if (txtID.Text != "")
        {
            SqlConnection sqlConn = new SqlConnection(DL.SQL.connSMS);
            sqlConn.Open();

            try
            {
                SqlCommand sqlcom = new SqlCommand("SELECT msg FROM ozekimessagein WHERE id ='" + txtID.Text.Trim() + "' ", sqlConn);
                SqlDataReader sqlred = sqlcom.ExecuteReader();

                if (sqlred.HasRows)
                {
                    sqlred.Read();
                    string Message = sqlred["msg"].ToString();
                    string[] Words = Message.Split('*');

                    foreach (string Word in Words)
                    {
                        SplitWordArray.Insert(index, Word);
                        index++;
                    }

                    txtBlockType.Text = SplitWordArray[0].ToString();
                    txtDes.Text = SplitWordArray[1].ToString();

                    AccType = SplitWordArray[0].ToString();
                    AccDes = SplitWordArray[1].ToString();
                    lat = SplitWordArray[2].ToString();
                    lng = SplitWordArray[3].ToString();

                    lbllat.Text = lat;
                    lbllng.Text = lng;   
                }
            }
            catch (Exception ex)
            {
                lblMSg.Text = "Error In Inseted Value.";
            }
        }
        else
            lblMSg.Text = "Error Inserted value";
    }

    protected void btnNotifi_Click(object sender, EventArgs e)
    {
        if (txtID.Text != "" && txtBlockType.Text != "" && txtDes.Text != "" && ddlOption.SelectedValue.ToString() != "-- Select --" && ddlVol.SelectedValue.ToString() != "-- Select --")
        {
            // Update ozekimessagein tbl in ozeki DB
            SqlConnection sqlConnUpdate = new SqlConnection(DL.SQL.connSMS);
            sqlConnUpdate.Open();

            string upDate = "Done";

            SqlCommand sqlcom = new SqlCommand("UPDATE ozekimessagein SET reference= '" + upDate + "'  WHERE [id] =" + txtID.Text + " ", sqlConnUpdate);
            SqlDataReader sqlred = sqlcom.ExecuteReader();

            sqlred.Close();
            sqlConnUpdate.Close();
            // Update ozekimessagein tbl in ozeki DB is done

            // Insert the values to ERMS DB tblTrafficStatus
            string vol = ddlVol.SelectedItem.ToString();
            AccType = txtBlockType.Text;
            AccDes = txtDes.Text;
            lat = lbllat.Text;
            lng = lbllng.Text;            

            // Insert Value into TrafficStatus tbl
            SqlConnection sqlConnInsert = new SqlConnection(DL.SQL.conn);
            sqlConnInsert.Open();

            string InsertInfo = "INSERT INTO tblTrafficStatus(RoadBlockType ,Description ,lat ,lng , AccidentVol,DelFlag)" +
                                "VALUES ('" + AccType + "','" + AccDes + "','" + lat + "','" + lng + "','" + vol + "','" + 0 + "')";

            SqlCommand sqlcomInsert = new SqlCommand(InsertInfo, sqlConnInsert);
            sqlcomInsert.ExecuteNonQuery();
            sqlConnInsert.Close();

            // Insertion Done

            lblMSg.Text = "Successfully Work Done";

            // Get Max ID
            GetID();
            // Send Coordinates, to Send Alerts 
            SendAlert();
        }
        else
            lblMSg.Text = "Error In Operating";
    }

    /// <summary>
    /// Incoming sms Grid Bind
    /// </summary>
    public void IncomeGridBind()
    {        
        //Grid SMS Out
        SqlConnection sqlconView = new SqlConnection(DL.SQL.connSMS);
        SqlDataAdapter adp = new SqlDataAdapter("SELECT id AS ID,sender AS Sender,senttime AS SentTime,receivedtime AS ReceivedTime FROM ozekimessagein Where reference IS NULL ", sqlconView);
        SqlCommandBuilder cb = new SqlCommandBuilder(adp);
        sqlconView.Open();

        DataSet dsItem = new DataSet();
        adp.Fill(dsItem, "sample1");
        GridViewAlert.DataSource = dsItem.Tables[0];
        GridViewAlert.DataBind();
    }

    public void GetID() 
    {        
        SqlConnection sqlConnGet = new SqlConnection(DL.SQL.conn);
        sqlConnGet.Open();

        SqlCommand sqlcomGetID = new SqlCommand("SELECT Max(ID) AS maxID FROM tblTrafficStatus", sqlConnGet); 
        SqlDataReader sqlredGetID = sqlcomGetID.ExecuteReader();

        sqlredGetID.Read();
                    
        id = sqlredGetID["maxID"].ToString();     

        sqlConnGet.Close();        
    }

    /// <summary>
    /// Send Alert
    /// </summary>
    public void SendAlert() 
    {
        objGeoOrganization.intID = int.Parse(id);
        objGeoOrganization.strLatPoint = lbllat.Text;
        objGeoOrganization.strLngPoint = lbllng.Text;
        objGeoOrganization.strOrganizationType = ddlOption.SelectedValue.ToString();
        objGeoOrganization.strEmergencyVol = ddlVol.SelectedValue.ToString();
        objGeoOrganization.FindNearestGeo(objGeoOrganization);
    }

}

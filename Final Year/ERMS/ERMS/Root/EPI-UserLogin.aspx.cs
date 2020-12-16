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

public partial class EPI_UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnter_Click(object sender, EventArgs e)
    {
        if (txtID.Text != "" && txtPswrd.Text != "" && txtUsr.Text != "")
        {
            LoginCheck();
            GetPoint();
            Response.Redirect("./EPI-UserMap.aspx");
        }
        else
            lblMsg.Text = "Error In Inserted Values.";
    }

    private void LoginCheck() 
    {
        //---login Check---        
        SqlConnection constrin = new SqlConnection(DL.SQL.conn);
        constrin.Open();

        SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand("SELECT lat,lng,OrganizationName,UserName,Password FROM tblGeoOrganization WHERE UserName='" + txtUsr.Text.Trim() + "' and Password='" + txtPswrd.Text.Trim() + "' ", constrin);
        SqlDataReader sqlred = sqlcom.ExecuteReader();

        if (sqlred.HasRows)
        {
            sqlred.Read();
            Session["Orglat"] = sqlred["lat"].ToString();
            Session["Orglng"] = sqlred["lng"].ToString();
            Session["OrgNam"] = sqlred["OrganizationName"].ToString();           
        }
        else
        {
            lblMsg.Text = "Error In Inserted Values.";
        }

        sqlred.Close();
        constrin.Close();
    }

    private void GetPoint() 
    {
        //---login Check---        
        SqlConnection constrin = new SqlConnection(DL.SQL.conn);
        constrin.Open();

        SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand("SELECT ID,RoadBlockType,Description,lat,lng FROM tblTrafficStatus WHERE ID='" + txtID.Text.Trim() + "' ", constrin);
        SqlDataReader sqlred = sqlcom.ExecuteReader();

        if (sqlred.HasRows)
        {
            sqlred.Read();
            Session["Block_Typ"] = sqlred["RoadBlockType"].ToString();
            Session["Block_Des"] = sqlred["Description"].ToString();
            Session["Block_lat"] = sqlred["lat"].ToString();
            Session["Block_lng"] = sqlred["lng"].ToString();           
        }
        else
        {
            lblMsg.Text = "Error In Inserted Values.";
        }

        sqlred.Close();
        constrin.Close();
    }
}
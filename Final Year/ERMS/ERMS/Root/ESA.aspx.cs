using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BL;
using System.Text;
using InfoSoftGlobal;

public partial class ESA : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegVSNoOfVehicle();
    }

    //Graph-2 (All Regions-No Of Vehicles)
    public void RegVSNoOfVehicle()
    {
        //---Region-NO OF Vehicles-----
        StringBuilder xmlData = new StringBuilder();
        xmlData.Append("<chart caption='Region-Vehicle Output Report' subCaption='By Count' pieSliceDepth='30' showBorder='1' formatNumberScale='0' numberSuffix=' '>");

        string conn = ConfigurationManager.ConnectionStrings["ERMSdbConnectionString"].ConnectionString;
        SqlConnection constrin = new SqlConnection(conn);
        constrin.Open();

        SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand("SELECT Region,SUM(NoOfVehicles) as Veh FROM tblTraffic Group By Region", constrin);
        SqlDataReader sqlred = sqlcom.ExecuteReader();
        sqlred.Read();

        while (sqlred.Read())
        {
            //Generate <set name='..' value='..' /> 
            xmlData.AppendFormat("<set label='{0}' value='{1}' />", sqlred["Region"].ToString(), sqlred["Veh"].ToString());
        }
        sqlred.Close();
        //Close chart element
        xmlData.Append("</chart>");
        ////Create the chart - Pie 3D Chart with data from xmlData
        Graph2.Text = FusionCharts.RenderChart("FusionCharts/Pie3D.swf", "", xmlData.ToString(), "PieRegVehRte", "700", "300", false, true);
        //-------------------------
    }
    protected void btnEnter_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ESA-Population.aspx");
    }
}
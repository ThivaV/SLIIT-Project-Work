using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BL;
using Microsoft.Reporting.WebForms;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
        {
            Report();
        }
    }
    
    public void Report() 
    {
        SqlConnection sqlConn = new SqlConnection(DL.SQL.conn);

        string query = @"Select Year,SUM(NoOfVehicles) AS YearlyTrafficCount From tblTrafficSL Group by Year";

        SqlDataAdapter sqlDAda = new SqlDataAdapter(query, sqlConn);
        DataTable dT = new DataTable();
        sqlDAda.Fill(dT);
        List<ReportClass> lst = new List<ReportClass>();
        foreach (DataRow r in dT.Rows)
        {
            ReportClass rprt = new ReportClass();
            rprt.Year = r["Year"].ToString();
            rprt.YearlyTrafficCount = r["YearlyTrafficCount"].ToString();
            lst.Add(rprt);
        }
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportDataSource report = new ReportDataSource("DataSetReport", lst);
        ReportViewer1.LocalReport.DataSources.Add(report);
        ReportViewer1.LocalReport.Refresh();
    }
}
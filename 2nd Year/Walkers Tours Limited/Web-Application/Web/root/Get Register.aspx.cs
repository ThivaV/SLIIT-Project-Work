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

public partial class _Default : System.Web.UI.Page
{
    BL.CustmerRegisteration objCoustomerRegister = new CustmerRegisteration();  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objCoustomerRegister.strFirstName = txtFirstName.Text.Trim();
        objCoustomerRegister.strLastName = txtLastName.Text.Trim();
        objCoustomerRegister.strAddress = txtAddress.Text.Trim();
        objCoustomerRegister.strComments = txtComments.Text.Trim();
        objCoustomerRegister.strCountry = drpCountry.SelectedItem.ToString().Trim();
        objCoustomerRegister.strEmail = TxtEmailID.Text.Trim();
        objCoustomerRegister.strPassport = txtPassport.Text.Trim();
        objCoustomerRegister.strTelNo = txtPhoneNo.Text.Trim();
        objCoustomerRegister.dteTimeStartDte = DateTime.Parse(drpMonth.SelectedValue.Trim() + "/" + drpDate.SelectedValue.Trim() + "/" + drpYear.SelectedValue.Trim()); 
        objCoustomerRegister.insertCustmerRegisteration(objCoustomerRegister);
        Session["EmailId"] = TxtEmailID.Text.Trim();
        Response.Redirect("~/OnLine Pay.aspx");
    }
    public class SQLhelper
    {
        public static string constring = @"Data Source=Sutha;Initial Catalog=DMS;uid=sa;pwd=sliit;";
        public SQLhelper()
        {
            //
            // TODO: Add constructor logic here

            //

        }

        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}

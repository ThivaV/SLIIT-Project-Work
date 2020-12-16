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
public partial class OnLine_Pay : System.Web.UI.Page
{
    BL.OnlinePay objOnline = new OnlinePay();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = Session["EmailId"].ToString();
        Session["EmailId"] = email; 
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        

    }
    protected void BtnOkOnLine_Click(object sender, EventArgs e)
    {
        try
        {
            objOnline.strCreditCardType = drpCreditCardType.SelectedItem.ToString();
            objOnline.strCusName = txtFullName.Text.Trim();
            objOnline.strPassport = txtPassportNo.Text.Trim();
            objOnline.strPin = txtPinNo.Text.Trim();

            objOnline.SavePaymentDetail(objOnline);
        }
        catch (Exception ex)
        {

        }
        Response.Redirect("~/Provide Serial No.aspx");
    }
    protected void BtnCanOnline_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}

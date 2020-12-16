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

public partial class Totel_Bill : System.Web.UI.Page
{
    BL.CustmerRegisteration objCustomerReservation = new CustmerRegisteration();   
    protected void Page_Load(object sender, EventArgs e)
    {
        string hotel = Session["Hotel"].ToString();
        Session["Hotel"] = hotel;
        string place = Session["Place"].ToString();
        Session["Place"] = place;

        string step = Session["Step"].ToString();
        Session["Step"] = step;

        string VID = Session["VisitorID"].ToString();
        Session["VisitorID"] = VID;

        grdReservation.DataSource = objCustomerReservation.DisplayReservationDetails(int.Parse(VID));
       grdReservation.DataBind();  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Get Register.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SelectPlaces.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}

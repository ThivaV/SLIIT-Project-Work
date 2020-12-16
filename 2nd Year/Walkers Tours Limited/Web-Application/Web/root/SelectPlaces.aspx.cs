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

public partial class SelectPlaces : System.Web.UI.Page
{
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
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["Place"] = "Colombo";
        Response.Redirect("~/col-city.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["Place"] = "Polonnaruwa";
        Response.Redirect("~/Polon.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["Place"] = "Kandy";
        Response.Redirect("~/Kandy-city.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["Place"] = "Galle";
        Response.Redirect("~/Galle-city.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session["Place"] = "Sigiriya";
        Response.Redirect("~/Sigiriya.aspx");
    }
}

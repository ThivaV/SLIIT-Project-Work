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

public partial class polon_hot : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ReservationForm.aspx");
    }
}

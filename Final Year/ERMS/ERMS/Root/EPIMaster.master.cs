using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EPI_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./EPI-Default.aspx");
    }
    protected void btn2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./EPI-SeeMap.aspx");
    }
    
    protected void btn4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./EPI-Inbox.aspx");
    }
    protected void btn5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./EPI-Outbox.aspx");
    }
    protected void btn6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./EPI-Send Message.aspx");
    }
}

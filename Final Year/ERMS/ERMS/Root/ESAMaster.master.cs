using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ESAMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./ESA-Default.aspx");
    }
    protected void btn2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./ESA-PastAnalysis.aspx");
    }
    protected void btn3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./ESA-Report.aspx");
    }
    protected void btn4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./ESA-Sim.aspx");
    }
    protected void btn5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./ESA-Feedback.aspx");
    }
    protected void btn6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./ESA-Help.aspx");
    }
}

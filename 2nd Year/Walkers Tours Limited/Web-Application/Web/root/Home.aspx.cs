using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["VisitorID"] = "non";
        
        Session["Hotel"] = "non";
    
        Session["Place"] = "non";

        Session["Step"] = "non";

       
        
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        DateTime ObjTime = new DateTime();
        ObjTime.ToLocalTime();
    }
}

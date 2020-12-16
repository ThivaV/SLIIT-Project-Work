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


public partial class Colombo : System.Web.UI.Page
{
    BL.HotelPricesViewer objView = new HotelPricesViewer();
    //BL.HotelFacility objHotelFacility = new HotelFacility();  
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    objView.strHotName = "Tajsamudra";
        //    grdTag.DataSource = objView.selectPriceInfo(objView);
        //    grdTag.DataBind();
        //    grdTag.Visible = true;
        //    string step = Session["Step"].ToString();
        //    Session["Step"] = step; 

        //}
        //catch (Exception ex)
        //{

        //}

    }
    //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    //{
    //    Session["Hotels"] = "Hilton";
    //}
    

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void grdTarg_SelectedIndexChanged(object sender, EventArgs e)
    {
       //String GridView="select* from HotPri where HotName=Tajsamudra";
       //GrdDataGrid.DataSource = View.selectPriceInfo(GridView);
       //GrdDataGrid.DataBind();

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/ReservationForm.aspx");
    }
}

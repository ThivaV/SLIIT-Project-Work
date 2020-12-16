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


public partial class Reservation_Form : System.Web.UI.Page
{
    BL.RoomReserversation objRoomReservation = new RoomReserversation();

    protected void Page_Load(object sender, EventArgs e)
    {
        string hotel =  Session["Hotel"].ToString();
        Session["Hotel"] = hotel;
        string place = Session["Place"].ToString();
        Session["Place"] = place;

        string step = Session["Step"].ToString();
        Session["Step"] = step;

        string VID = Session["VisitorID"].ToString();
        Session["VisitorID"] = VID;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //SQLhelper.InsertRecords("+text  
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
    }
   


   
    protected void btnok_Click(object sender, EventArgs e)
    {
        try
        {
            string VID = Session["VisitorID"].ToString();
            if (VID == "non")
            {
              int tem  = objRoomReservation.GetVisitorID();

              objRoomReservation.intID = tem+1;
              Session["VisitorID"] = objRoomReservation.intID.ToString();
            }
            else
            {
                objRoomReservation.intID = int.Parse(Session["VisitorID"].ToString());
            }
                        
            string step = Session["Step"].ToString();
            if(step == "non")
            {
                objRoomReservation.intHotelID = "Step1";
            }
            else if (step == "Step1")
            {
                objRoomReservation.intHotelID = "Step2";
            }
            else if (step == "Step2")
            {
                objRoomReservation.intHotelID = "Step3";
            }
            else if (step == "Step3")
            {
                objRoomReservation.intHotelID = "Step4";
            }
            else if (step == "Step4")
            {
                objRoomReservation.intHotelID = "Step5";
            }
            Session["Step"] = objRoomReservation.intHotelID;
            objRoomReservation.strMealType = this.drpMealType.SelectedItem.ToString();
            objRoomReservation.strRoomType = this.drpRoomType.SelectedItem.ToString();
            objRoomReservation.strGuiType = this.drpGuidType.SelectedItem.ToString(); 
            objRoomReservation.dtBookingDate = DateTime.Parse(drpMonth.SelectedValue.Trim()+"/"+drpDate.SelectedValue.Trim()+"/"+drpYear.SelectedValue.Trim())         ;
            objRoomReservation.strVehType = this.drpVechicleType.SelectedItem.ToString();
            //From where
            objRoomReservation.strPlace = Session["Place"].ToString() ;
            objRoomReservation.insertRooomReservation(objRoomReservation);
              Response.Redirect("~/Totel Bill.aspx");
        }
        catch (Exception ex)
        {

        }
        
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using BL;

public partial class ESA_UserMap : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        // Organization
        string OrgName = Session["OrgNam"].ToString();
        string OrgLat = Session["Orglat"].ToString();
        string OrgLng = Session["Orglng"].ToString();
        // Block
        string BlockType = Session["Block_Typ"].ToString();
        string BlockDes = Session["Block_Des"].ToString();
        string BlockLat = Session["Block_lat"].ToString();
        string BlockLng = Session["Block_lng"].ToString();


        GoogleMapForASPNet1.GoogleMapObject.APIKey = ConfigurationManager.AppSettings["GoogleAPIKey"];

        GoogleMapForASPNet1.GoogleMapObject.Width = "940px";
        GoogleMapForASPNet1.GoogleMapObject.Height = "600px";

        GoogleMapForASPNet1.GoogleMapObject.ZoomLevel = 10;

       
        GoogleMapForASPNet1.GoogleMapObject.CenterPoint = new GooglePoint("1", 6.932817124836652, 79.86442565917969);// 6.276505 ...  43.66619, -79.44268

        // --- Organization ---
        GooglePoint GP1 = new GooglePoint();
        GP1.ID = "1";
        GP1.Latitude = Convert.ToDouble(OrgLat);
        GP1.Longitude = Convert.ToDouble(OrgLng);
        GP1.InfoHTML = "<div style='font:bold 14px verdana;color:darkgreen;margin-left:2px;'>" + OrgName + "</div>" + "the Serivce Provider";
        GP1.ToolTip = "the Service Provider";
        GP1.IconImage = "icons/FireTruck.png";
        GoogleMapForASPNet1.GoogleMapObject.Points.Add(GP1);

        // --- Block Point ---
        GooglePoint GP2 = new GooglePoint();
        GP2.ID = "2";
        GP2.Latitude = Convert.ToDouble(BlockLat);
        GP2.Longitude = Convert.ToDouble(BlockLng);
        GP2.InfoHTML = "<div style='font:bold 14px verdana;color:darkgreen;margin-left:2px;'>" + BlockType + "</div>" + BlockDes;
        GP2.ToolTip = BlockType;
        GP2.IconImage = "icons/pushpin-yellow.png";
        GoogleMapForASPNet1.GoogleMapObject.Points.Add(GP2);
    }
}
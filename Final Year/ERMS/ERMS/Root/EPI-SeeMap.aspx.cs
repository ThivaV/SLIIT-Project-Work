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

public partial class EPI_SeeMap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {        
            //You must specify Google Map API Key for this component. You can obtain this key from http://code.google.com/apis/maps/signup.html
            //For samples to run properly, set GoogleAPIKey in Web.Config file.
            GoogleMapForASPNet1.GoogleMapObject.APIKey = ConfigurationManager.AppSettings["GoogleAPIKey"];

            //Specify width and height for map. You can specify either in pixels or in percentage relative to it's container.
            GoogleMapForASPNet1.GoogleMapObject.Width = "800px"; // You can also specify percentage(e.g. 80%) here
            GoogleMapForASPNet1.GoogleMapObject.Height = "600px";

            //Specify initial Zoom level.
            GoogleMapForASPNet1.GoogleMapObject.ZoomLevel = 10;

            //Specify Center Point for map. Map will be centered on this point.
            GoogleMapForASPNet1.GoogleMapObject.CenterPoint = new GooglePoint("1", 6.932817124836652, 79.86442565917969);// 6.276505 ...  43.66619, -79.44268

            //Add push pins for map. 
            //This should be done with intialization of GooglePoint class. 
            //ID is to identify a pushpin. It must be unique for each pin. Type is string.
            //Other properties latitude and longitude.

            SqlConnection sqlcon = new SqlConnection(DL.SQL.conn);
            SqlDataReader drMax = null;

            sqlcon.Open();
            //------------------------------------------------------
            SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand("SELECT ID,RoadBlockType,Description,AccidentVol,lat,lng FROM tblTrafficStatus", sqlcon);
            drMax = sqlcom.ExecuteReader();
            //drMax.Read();

            while (drMax.Read())
            {
                GooglePoint GP1 = new GooglePoint();
                GP1.ID = drMax["ID"].ToString();
                GP1.Latitude = Convert.ToDouble(drMax["lat"]);
                GP1.Longitude = Convert.ToDouble(drMax["lng"]);

                //Specify bubble text here. You can use standard HTML tags here.
                string DisInfo = "<div style='font:bold 14px verdana;color:darkgreen;margin-left:2px;'>" + drMax["RoadBlockType"].ToString() + "</div>" + drMax["Description"].ToString();
                GP1.InfoHTML = DisInfo;

                //Specify icon image. This should be relative to root folder.
                string iconType = drMax["AccidentVol"].ToString();
                string iconUrl;
                if (iconType == "High")
                    iconUrl = "icons/High.png";
                else if (iconType == "Medium")
                    iconUrl = "icons/Medium.png";
                else
                    iconUrl = "icons/Low.png";

                GP1.IconImage = iconUrl;

                GoogleMapForASPNet1.GoogleMapObject.Points.Add(GP1);
            }
            drMax.Close();
            //------------------------------------------------------
            sqlcon.Close();        
    }
}
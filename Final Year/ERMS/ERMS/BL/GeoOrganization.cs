using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DL;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Net.Mail;
using System.Net.Mime;
using System.Net;

namespace BL
{
    public class GeoOrganization
    {
        private int PlaceID;
        public int intPlaceID
        {
            get { return PlaceID; }
            set { PlaceID = value; }
        }
        private string Country;
        public string strCountry
        {
            get { return Country; }
            set { Country = value; }
        }
        private string Region;
        public string strRegion
        {
            get { return Region; }
            set { Region = value; }
        }
        private string Address;
        public string strAddress
        {
            get { return Address; }
            set { Address = value; }
        }
        private string Email;
        public string strEmail
        {
            get { return Email; }
            set { Email = value; }
        }
        private string TelNo;
        public string strTelNo
        {
            get { return TelNo; }
            set { TelNo = value; }
        }
        private string lat;
        public string strLat
        {
            get { return lat; }
            set { lat = value; }
        }
        private string lng;
        public string strLng
        {
            get { return lng; }
            set { lng = value; }
        }
        private string OrganizationType;
        public string strOrganizationType
        {
            get { return OrganizationType; }
            set { OrganizationType = value; }
        }
        private string OrganizationName;
        public string strOrganizationName
        {
            get { return OrganizationName; }
            set { OrganizationName = value; }
        }
        private string OrganizationDescription;
        public string strOrganizationDescription
        {
            get { return OrganizationDescription; }
            set { OrganizationDescription = value; }
        }
        private string OrganizationUrl;
        public string strOrganizationUrl
        {
            get { return OrganizationUrl; }
            set { OrganizationUrl = value; }
        }
        private double Differ;
        public double doubleDiffer
        {
            get { return Differ; }
            set { Differ = value; }
        }
        private string latPoint;
        public string strLatPoint
        {
            get { return latPoint; }
            set { latPoint = value; }
        }
        private string lngPoint;
        public string strLngPoint
        {
            get { return lngPoint; }
            set { lngPoint = value; }
        }       
        private string EmergencyVol;
        public string strEmergencyVol
        {
            get { return EmergencyVol; }
            set { EmergencyVol = value; }
        }
        private int ID;
        public int intID
        {
            get { return ID; }
            set { ID = value; }
        }

        /// <summary>
        /// Insert Values into tblGeoOrganization -->> From UserNoteMaker.aspx
        /// UserNoteMaker.aspx is a Customer enable page
        /// </summary>
        /// <param name="myInsertGeoOrganization"></param>
        public void InsertGeoOrganization(GeoOrganization myInsertGeoOrganization) 
        {
            SqlConnection sqlcon = new SqlConnection(DL.SQL.conn);
            try 
            {
                SqlCommand SqlCom = new SqlCommand("INSERT INTO tblGeoOrganization (Country,Region,Address,Email,TelNo,lat,lng,OrganizationType,OrganizationName,OrganizationDescription,OrganizationUrl) VALUES ('"+ myInsertGeoOrganization.strCountry + "', '" + myInsertGeoOrganization.strRegion + "', '" + myInsertGeoOrganization.strAddress + "', '" + myInsertGeoOrganization.strEmail + "', '" + myInsertGeoOrganization.strTelNo + "', '" + myInsertGeoOrganization.strLat + "', '" + myInsertGeoOrganization.strLng + "', '" + myInsertGeoOrganization.strOrganizationType + "', '" + myInsertGeoOrganization.strOrganizationName + "', '" + myInsertGeoOrganization.strOrganizationDescription + "', '" + myInsertGeoOrganization.strOrganizationUrl + "' )", sqlcon);
                sqlcon.Open();
                SqlCom.ExecuteNonQuery();
                sqlcon.Close();
            }
            catch (Exception ex)
            {
                
            }
        }

        /// <summary>
        /// Find the nearest Geo Coordinate.
        /// </summary>
        /// <param name="myNearestGeo"></param>
        public void FindNearestGeo(GeoOrganization myNearestGeo) 
        {
            SqlConnection sqlcon = new SqlConnection(DL.SQL.conn);
            SqlDataReader sDR = null;
            sqlcon.Open();

            try
            {                
                string check = myNearestGeo.strOrganizationType;
                if (check == "Police and Hospital")
                {
                    string hotel = "Hotel";
                    string other = "Other";
                    SqlCommand sqlcom = new SqlCommand("SELECT PlaceID,Email,TelNo,lat,lng,OrganizationType FROM tblGeoOrganization Where OrganizationType != '" + hotel + "' AND  OrganizationType != '" + other + "' ", sqlcon);
                    sDR = sqlcom.ExecuteReader();

                    //-----------------------------------
                    int Key = 0;

                    ArrayList myNearestArray = new ArrayList();

                    while (sDR.Read())
                    {
                        double lat1 = double.Parse(myNearestGeo.strLatPoint);
                        double long1 = double.Parse(myNearestGeo.strLngPoint);

                        /// --- Assign Values ---
                        string plcID = sDR["PlaceID"].ToString();
                        string plcMail = sDR["Email"].ToString();
                        string plcTelNo = sDR["TelNo"].ToString();
                        double lat2 = Convert.ToDouble(sDR["lat"]);
                        double long2 = Convert.ToDouble(sDR["lng"]);
                        string orgType = sDR["OrganizationType"].ToString();
                        /// ---------------------
                        double Distance = 0;

                        double dLat = (lat2 - lat1) / 180 * Math.PI;
                        double dLong = (long2 - long1) / 180 * Math.PI;

                        double a = Math.Pow(Math.Sin(dLat / 2), 2) + Math.Cos(lat2) * Math.Pow(Math.Sin(dLong / 2), 2);
                        double c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));

                        // Calculate Radius of Earth
                        // For this you can assume any of the two points.
                        double radiusE = 6378135;  // Equatorial radius, in metres
                        double radiusP = 6356750; // Polar Radius

                        // Numerator Part of Function
                        double nr = Math.Pow(radiusE * radiusP * Math.Cos(lat1 / 180 * Math.PI), 2);
                        // Denominator Part of the Function
                        double dr = Math.Pow(radiusE * Math.Cos(lat1 / 180 * Math.PI), 2) + Math.Pow(radiusP * Math.Sin(lat1 / 180 * Math.PI), 2);
                        double radius = Math.Sqrt(nr / dr);

                        //Calaculate Distance in Metres.
                        Distance = radius * c;

                        /// Insert the Distance to an ArrayList --->> myNearestArray.
                        /// To Find the Smallest Value.
                        GeoOrganization obj = new GeoOrganization();
                        obj.intPlaceID = int.Parse(plcID);
                        obj.strEmail = plcMail;
                        obj.strTelNo = plcTelNo;
                        obj.strLat = lat2.ToString();
                        obj.strLng = long2.ToString();
                        obj.doubleDiffer = Distance;
                        obj.strOrganizationType = orgType;

                        myNearestArray.Insert(Key, obj);
                        Key = Key + 1;
                        /// ----------------------------------------------------------
                    }
                    /// Sort the ArrayList.
                    /// myNearestArray[0] is contains the least value in the ArrayList.
                    GeoOrganization objCheck = (GeoOrganization)(myNearestArray[0]);
                    double DifrCheck = objCheck.doubleDiffer;
                    int ArrayKey = 0;

                    int ArrayCount = myNearestArray.Count;
                    for (int i = 1; i < ArrayCount; i++)
                    {
                        GeoOrganization objGet = (GeoOrganization)(myNearestArray[i]);
                        double Distnce = objGet.doubleDiffer;
                        if (DifrCheck > Distnce)
                        {
                            DifrCheck = Distnce;
                            ArrayKey = i;
                        }
                    }
                    GeoOrganization objAlert = (GeoOrganization)(myNearestArray[ArrayKey]);
                    string Recipient_TelNo = objAlert.strTelNo;
                    string Org_Type = objAlert.strOrganizationType;
                    string mailID = objAlert.strEmail;

                    int ID = myNearestGeo.intID;

                    string msg = "Alert..!!,Please Check Your mail." + "Key :" + ID;
                    string errorMsg = "";

                    /// Send Alert Message.
                    BL.DatabaseHandling.insertMessage(Recipient_TelNo, msg, out errorMsg);

                    /// Send Mail
                    MailSender objMailSender = new MailSender();
                    objMailSender.strMailAdd = mailID;
                    objMailSender.strMailBody = "http://localhost:1686/Root/EPI-UserLogin.aspx" + " --- " + "Your Login ID : " + ID;
                    objMailSender.autoMail(objMailSender);
                }
                else
                {                   
                    //-----------------------------------
                    SqlCommand sqlcom = new SqlCommand("GetLatLng", sqlcon);
                    sqlcom.CommandType = CommandType.StoredProcedure;
                    sqlcom.Parameters.Add("@OrganType", myNearestGeo.strOrganizationType);

                    sDR = sqlcom.ExecuteReader();
                    //-----------------------------------
                    int Key = 0;

                    ArrayList myNearestArray = new ArrayList();

                    while (sDR.Read())
                    {
                        double lat1 = double.Parse(myNearestGeo.strLatPoint);
                        double long1 = double.Parse(myNearestGeo.strLngPoint);

                        /// --- Assign Values ---
                        string plcID = sDR["PlaceID"].ToString();
                        string plcMail = sDR["Email"].ToString();
                        string plcTelNo = sDR["TelNo"].ToString();
                        double lat2 = Convert.ToDouble(sDR["lat"]);
                        double long2 = Convert.ToDouble(sDR["lng"]);
                        string orgType = sDR["OrganizationType"].ToString();
                        /// ---------------------
                        double Distance = 0;

                        double dLat = (lat2 - lat1) / 180 * Math.PI;
                        double dLong = (long2 - long1) / 180 * Math.PI;

                        double a = Math.Pow(Math.Sin(dLat / 2), 2) + Math.Cos(lat2) * Math.Pow(Math.Sin(dLong / 2), 2);
                        double c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));

                        // Calculate Radius of Earth
                        // For this you can assume any of the two points.
                        double radiusE = 6378135;  // Equatorial radius, in metres
                        double radiusP = 6356750; // Polar Radius

                        // Numerator Part of Function
                        double nr = Math.Pow(radiusE * radiusP * Math.Cos(lat1 / 180 * Math.PI), 2);
                        // Denominator Part of the Function
                        double dr = Math.Pow(radiusE * Math.Cos(lat1 / 180 * Math.PI), 2) + Math.Pow(radiusP * Math.Sin(lat1 / 180 * Math.PI), 2);
                        double radius = Math.Sqrt(nr / dr);

                        //Calaculate Distance in Metres.
                        Distance = radius * c;

                        /// Insert the Distance to an ArrayList --->> myNearestArray.
                        /// To Find the Smallest Value.
                        GeoOrganization obj = new GeoOrganization();
                        obj.intPlaceID = int.Parse(plcID);
                        obj.strEmail = plcMail;
                        obj.strTelNo = plcTelNo;
                        obj.strLat = lat2.ToString();
                        obj.strLng = long2.ToString();
                        obj.doubleDiffer = Distance;
                        obj.strOrganizationType = orgType;

                        myNearestArray.Insert(Key, obj);
                        Key = Key + 1;
                        /// ----------------------------------------------------------
                    }
                    /// Sort the ArrayList.
                    /// myNearestArray[0] is contains the least value in the ArrayList.
                    GeoOrganization objCheck = (GeoOrganization)(myNearestArray[0]);
                    double DifrCheck = objCheck.doubleDiffer;
                    int ArrayKey = 0;

                    int ArrayCount = myNearestArray.Count;
                    for (int i = 1; i < ArrayCount; i++)
                    {
                        GeoOrganization objGet = (GeoOrganization)(myNearestArray[i]);
                        double Distnce = objGet.doubleDiffer;
                        if (DifrCheck > Distnce)
                        {
                            DifrCheck = Distnce;
                            ArrayKey = i;
                        }
                    }
                    GeoOrganization objAlert = (GeoOrganization)(myNearestArray[ArrayKey]);
                    string Recipient_TelNo = objAlert.strTelNo;
                    string Org_Type = objAlert.strOrganizationType;
                    string mailID = objAlert.strEmail;

                    int ID = myNearestGeo.intID;

                    string msg = "Alert..!!,Please Check Your mail." + "Key :" + ID;
                    string errorMsg = "";

                    /// Send Alert Message.
                    BL.DatabaseHandling.insertMessage(Recipient_TelNo, msg, out errorMsg);

                    /// Send Mail
                    MailSender objMailSender = new MailSender();
                    objMailSender.strMailAdd = mailID;
                    objMailSender.strMailBody = "http://localhost:1686/Root/EPI-UserLogin.aspx" + " --- " + "Your Login ID : " + ID;
                    objMailSender.autoMail(objMailSender);
                }
            }
            catch (Exception ex)
            {

            }
        }

        /// <summary>
        /// Populate the Items in Google Map
        /// </summary>
        public ArrayList DisplayGeoInfo(GeoOrganization myDisplayGeoInfo)
        {   
            ArrayList myGeoInfo=new ArrayList();
            int Key = 0;

            try 
            {
                SqlConnection sqlconn = new SqlConnection(DL.SQL.conn);
                sqlconn.Open();

                SqlCommand sqlcom = new SqlCommand("SELECT Country,Region,Address,Email,TelNo,lat,lng,OrganizationType,OrganizationName,OrganizationDescription,OrganizationUrl FROM tblGeoOrganization WHERE OrganizationType='" + myDisplayGeoInfo.strOrganizationType + "'", sqlconn);
                SqlDataReader sqlred = sqlcom.ExecuteReader();

                while (sqlred.Read()) 
                {
                    GeoOrganization objGeoOrganization = new GeoOrganization();
                    objGeoOrganization.strCountry = sqlred["Country"].ToString();
                    objGeoOrganization.strRegion=sqlred["Region"].ToString();
                    objGeoOrganization.strAddress = sqlred["Address"].ToString();
                    objGeoOrganization.strEmail=sqlred["Email"].ToString();
                    objGeoOrganization.strTelNo=sqlred["TelNo"].ToString();
                    objGeoOrganization.strLat=sqlred["lat"].ToString();
                    objGeoOrganization.strLng=sqlred["lng"].ToString();
                    objGeoOrganization.strOrganizationType = sqlred["OrganizationType"].ToString();
                    objGeoOrganization.strOrganizationName = sqlred["OrganizationName"].ToString();
                    objGeoOrganization.strOrganizationDescription = sqlred["OrganizationDescription"].ToString();
                    objGeoOrganization.strOrganizationUrl = sqlred["OrganizationUrl"].ToString();

                    myGeoInfo.Insert(Key,objGeoOrganization);
                    Key++;
                }              

                sqlred.Close();
                sqlconn.Close();

            }
            catch (Exception ex)
            {

            }
            return myGeoInfo;
        }
    }
}

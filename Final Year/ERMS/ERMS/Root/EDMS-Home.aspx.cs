using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class index : System.Web.UI.Page
{
    GeoOrganization myPlcFindGeo = new GeoOrganization();

    private string str;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnEnter_Click(object sender, EventArgs e)
    {
        if (ddlOrgTyp.Text != "-- Select --")
        {
            myPlcFindGeo.strOrganizationType = ddlOrgTyp.SelectedValue.ToString();
            myPlcFindGeo.DisplayGeoInfo(myPlcFindGeo);

            ArrayList CallGeoArray = myPlcFindGeo.DisplayGeoInfo(myPlcFindGeo);

            int Get = CallGeoArray.Count;
            for (int i = 0; i < Get; i++)
            {
                GeoOrganization myPlcFind = (GeoOrganization)(CallGeoArray[i]);

                string strCountry = myPlcFind.strCountry;
                string strReg = myPlcFind.strRegion;
                string strAdd = myPlcFind.strAddress;
                string strEmail = myPlcFind.strEmail;
                string strTelno = myPlcFind.strTelNo;
                string strlat = myPlcFind.strLat;
                string strlng = myPlcFind.strLng;
                string strOrgTyp = myPlcFind.strOrganizationType;
                string strOrgNam = myPlcFind.strOrganizationName;
                string strOrgDes = myPlcFind.strOrganizationDescription;
                string strOrgUrl = myPlcFind.strOrganizationUrl;

                str = str + "~" + '"' + strCountry + '"' + strReg + '"' + strAdd + '"' + strEmail + '"' + strTelno + '"' + strlat + '"' + strlng + '"' + strOrgTyp + '"' + strOrgNam + '"' + strOrgDes + '"' + strOrgUrl;
            }           
            lblOutput.Text = str;
            HiddenField.Value = str;
        }
    }   
}
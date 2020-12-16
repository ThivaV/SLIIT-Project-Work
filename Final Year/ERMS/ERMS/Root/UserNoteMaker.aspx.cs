using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class index : System.Web.UI.Page
{
    BL.GeoOrganization objGeoOrganization = new GeoOrganization();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblLat.Text = txtLatitude.Text.Trim();
            lblLng.Text = txtLongitude.Text.Trim();
        }
    }
    
    protected void btnEnter_Click(object sender, EventArgs e)
    {
        //---Insert GeoOrganization,Function InsertValue().       
        InsertValue();   
    }

    /// <summary>
    /// Insert Organization values to DB,table is tblGeoOrganization.
    /// Class in BL is GeoOrganization.
    /// Function in GeoOrganization is InsertGeoOrganization.
    /// </summary>
    private void InsertValue() 
    {
        try
        {
            objGeoOrganization.strCountry = txtCountry.Text.Trim();
            objGeoOrganization.strRegion = txtRegion.Text.Trim();
            objGeoOrganization.strAddress = txtAddress.Text.Trim();
            objGeoOrganization.strEmail = txtEmail.Text.Trim();
            objGeoOrganization.strTelNo = txtTelNo.Text.Trim();
            objGeoOrganization.strLat = txtLatitude.Text.Trim(); ///txtLatitude ///lblLat
            objGeoOrganization.strLng = txtLongitude.Text.Trim(); ///txtLongitude ///lblLng
            objGeoOrganization.strOrganizationType = ddlOrganizationType.SelectedValue.ToString();
            objGeoOrganization.strOrganizationName = txtOrganizationName.Text.Trim();
            objGeoOrganization.strOrganizationDescription = txtOrganizationDes.Text.Trim();
            objGeoOrganization.strOrganizationUrl = txtOrganizationUrl.Text.Trim();
            objGeoOrganization.InsertGeoOrganization(objGeoOrganization);

            lblMsg.Text = "Item Inserted";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error In Insertion";
        }
    }
}
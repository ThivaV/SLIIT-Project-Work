using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BL;
using System.Collections;
using System.Text;
using InfoSoftGlobal;


public partial class ESA_Sim_GDP : System.Web.UI.Page
{
    BL.EconomicPredict objEconomicPredict = new EconomicPredict();

    int EntrYr = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        if (txt1.Text != "")
        {
            int CurrentYr = DateTime.Now.Year;
            EntrYr = Convert.ToInt16(txt1.Text);
            int t = EntrYr - CurrentYr;

            //if (0 <= t && t < 5)
            {               
                GDP();
                ListBox1.Visible = true;
            }
        }
        //else
        {
            //lblMsg.Text = "Error in inserted Year";            
        }
    }


    /// <summary>
    /// GDP
    /// </summary>
    public void GDP()
    {
        objEconomicPredict.intYear = Convert.ToInt16(txt1.Text);
        ArrayList FindGDP = objEconomicPredict.FindGDP(objEconomicPredict);

        // --- xml Graph---
        StringBuilder xmlDataGDP = new StringBuilder();
        xmlDataGDP.Append("<chart caption='Year-Transport GDP Report' subCaption='' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");

        int Get = FindGDP.Count;
        for (int i = 0; i < Get; i++)
        {
            BL.ArrayEconomic objEcono = (BL.ArrayEconomic)(FindGDP[i]);
            //string NationGDP = objEcono.strNationalGDP;
            string TransGDP = objEcono.strTransportGDP;
            int yr = objEcono.intYear;

            //int Yr = objEcono.intYear;

            xmlDataGDP.AppendFormat("<set label='{0}' value='{1}' />", yr.ToString(), TransGDP.ToString());
            ListBox1.Items.Add("Year --->" + yr + " Value --> " + TransGDP);
        }
        xmlDataGDP.Append("</chart>");
        LiteralGraph.Text = FusionCharts.RenderChart("FusionCharts/Line.swf", "", xmlDataGDP.ToString(), "LineGDP", "950", "400", false, true);
    }
}
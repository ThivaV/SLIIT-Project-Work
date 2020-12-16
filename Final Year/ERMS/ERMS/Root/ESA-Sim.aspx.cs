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

public partial class ESA_Sim : System.Web.UI.Page
{
    BL.PopulationPredict objPopulation = new PopulationPredict();
    BL.AccidentPredict objAccident = new AccidentPredict();
    BL.VehiclePopulationPredict objVehiclePopulationPredict = new VehiclePopulationPredict();
    BL.TrafficPredict objTrafficPredict = new TrafficPredict();
    BL.EconomicPredict objEconomicPredict = new EconomicPredict();

    int EntrYr = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        if (txt1.Text != "")
        {
            int CurrentYr = DateTime.Now.Year;
            EntrYr = Convert.ToInt16(txt1.Text);
            int t=EntrYr-CurrentYr;

            //if(0 <= t && t < 5)
            {
                Population();
                VehiclePopulation();
                VehcleAccident();
                Traffic();
                GDP();

                btnPopulation.Visible = true;
            }
        }
        //else 
        {
           // lblMsg.Text = "Error in inserted Year";
           // btnPopulation.Visible = false;
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
        xmlDataGDP.Append("<chart caption='Year-National GDP Report' subCaption='' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");

        int Get = FindGDP.Count;
        for (int i = 0; i < Get; i++)
        {
            BL.ArrayEconomic objEcono = (BL.ArrayEconomic)(FindGDP[i]);
            string NationGDP = objEcono.strNationalGDP;
            //string TransGDP = objEcono.strTransportGDP;
            int yr = objEcono.intYear;

            //int Yr = objEcono.intYear;

            xmlDataGDP.AppendFormat("<set label='{0}' value='{1}' />", yr.ToString(), NationGDP.ToString());
        }
        xmlDataGDP.Append("</chart>");
        GDPGraph.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlDataGDP.ToString(), "Pie3DGDP", "400", "300", false, true);
    }


    /// <summary>
    /// Traffic
    /// </summary>
    public void Traffic() 
    {
        objTrafficPredict.intYear = Convert.ToInt16(txt1.Text);
        ArrayList FindTraffic = objTrafficPredict.FindTraffic(objTrafficPredict);

        // --- xml Graph---
        StringBuilder xmlDataTraffic = new StringBuilder();
        xmlDataTraffic.Append("<chart caption='Year-Traffic Count Report' subCaption='' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");

        int Get = FindTraffic.Count;
        for (int i = 0; i < Get; i++)
        {
            BL.ArrayTraffic obj = (BL.ArrayTraffic)(FindTraffic[i]);
            int yr = obj.intYear;
            double val = Math.Ceiling(obj.doubleNoOfVehicles);

            xmlDataTraffic.AppendFormat("<set label='{0}' value='{1}' />", yr.ToString(), val.ToString());

            //ListBox1.Items.Add("Year --->" + yr + " Value --> " + val);
        }

        xmlDataTraffic.Append("</chart>");
        TrafficGraph.Text = FusionCharts.RenderChart("FusionCharts/Line.swf", "", xmlDataTraffic.ToString(), "Column3DTraffic", "825", "350", false, true);
      } 

    /// <summary>
    /// Population
    /// </summary>
    public void Population() 
    {
        objPopulation.strPredictDistrict = "Colombo";
        objPopulation.intPredictYear = EntrYr;

        objPopulation.FindBirth(objPopulation);
        objPopulation.FindDeath(objPopulation);
        ArrayList CalcPop = objPopulation.FindPopulation(objPopulation);

        // ---Graph---
        /// --- Population ---
        StringBuilder xmlDataPopu = new StringBuilder();
        xmlDataPopu.Append("<chart caption='Year- Human Population Report' subCaption='' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");
        // ----------

        /// --- Population ---
        int j = CalcPop.Count - 1;
        int GetPopLoop = CalcPop.Count;
        for (int i = 0; i < GetPopLoop; i++)
        {
            
            BL.ArrayPopulation arrPop = (BL.ArrayPopulation)(CalcPop[j]);
            int PopYr = arrPop.intPopulationYear;
            double Popu = arrPop.doublePopulationCount;
            j--;

            xmlDataPopu.AppendFormat("<set label='{0}' value='{1}' />", PopYr.ToString(), Popu.ToString());
        }

        xmlDataPopu.Append("</chart>");
        PopulationGraph.Text = FusionCharts.RenderChart("FusionCharts/Bar2D.swf", "", xmlDataPopu.ToString(), "Bar2DPopulation", "400", "300", false, true); 
    }

    /// <summary>
    /// Vehicle Population
    /// </summary>
    public void VehiclePopulation() 
    {
        objVehiclePopulationPredict.intYear = Convert.ToInt16(txt1.Text);
        ArrayList FindVehPop = objVehiclePopulationPredict.FindVehPopulation(objVehiclePopulationPredict);

        // --- xml Graph---
        StringBuilder xmlDataVehPop = new StringBuilder();
        xmlDataVehPop.Append("<chart caption='Year-Vehicle Population Report' subCaption='' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");

        int Get = FindVehPop.Count;
        for (int i = 0; i < Get; i++)
        {
            BL.ArrayVehiclePopulation obj = (BL.ArrayVehiclePopulation)(FindVehPop[i]);
            int yr = obj.intYear;
            double val = obj.doubleNoOfVeh;

            xmlDataVehPop.AppendFormat("<set label='{0}' value='{1}' />", yr.ToString(), val.ToString());
        }

        xmlDataVehPop.Append("</chart>");
        VehPopulationGraph.Text = FusionCharts.RenderChart("FusionCharts/Line.swf", "", xmlDataVehPop.ToString(), "Column3DPopulation", "400", "300", false, true);
    }

    /// <summary>
    /// Vehicle Accident
    /// </summary>
    public void VehcleAccident() 
    {
        objAccident.intYear = Convert.ToInt16(txt1.Text);
        ArrayList FindAcc = objAccident.FindAccident(objAccident);

        // --- xml Graph---
        StringBuilder xmlDataAccident = new StringBuilder();
        xmlDataAccident.Append("<chart caption='Year-NoOf Accident Report' subCaption='' Column3DSliceDepth='30' showBorder='1' formatNumberScale='0' numberSuffix=' '>");


        int Get = FindAcc.Count;
        for (int i = 0; i < Get; i++)
        {
            BL.ArrayAccident obj = (BL.ArrayAccident)(FindAcc[i]);
            int yr = obj.intYear;
            int val = obj.intNoOfAccidents;

            xmlDataAccident.AppendFormat("<set label='{0}' value='{1}' />", yr.ToString(), val.ToString());
        }

        xmlDataAccident.Append("</chart>");
        AccidentGraph.Text = FusionCharts.RenderChart("FusionCharts/Pie3D.swf", "", xmlDataAccident.ToString(), "Column3DAccident", "400", "300", false, true);
    }
    protected void btnPopulation_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ESA-Population.aspx");
    }
    protected void btnNxt_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ESA-Sim-GDP.aspx");
    }
}
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

public partial class ESA_PastAnalysis : System.Web.UI.Page
{
    BL.VehiclePopulationPredict objVehiclePopulationPredict = new VehiclePopulationPredict();
    BL.TrafficPredict objTrafficPredict = new TrafficPredict();

    protected void Page_Load(object sender, EventArgs e)
    {        
        if (!IsPostBack)
        {
            VehiclePopulation();            
        }
    }

    protected void btnVehType_Click(object sender, EventArgs e)
    {
        VehicleByType();
    }

    protected void btnEnter_Click(object sender, EventArgs e)
    {
        TrafficByTime();
    }

    /// <summary>
    /// Vehicle Population
    /// </summary>
    public void VehiclePopulation()
    {
        // --- xml Graph---
        StringBuilder xmlDataVehPop = new StringBuilder();
        xmlDataVehPop.Append("<chart caption='Year-NoOf Vehicle Report' subCaption='Vehicle Population' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");
        // ----------------
        
        ArrayList DisVehPopulation = objVehiclePopulationPredict.VehiclePopulation(objVehiclePopulationPredict);

        // Loop only By Vehicle Population
        int Get = DisVehPopulation.Count;

        for (int i = 0; i < Get; i++)
        {
            // --- DisVehPopulation Data To xml ---
            BL.ArrayVehiclePopulation objVehiclePop = (BL.ArrayVehiclePopulation)(DisVehPopulation[i]);
            int yrPop = objVehiclePop.intYear;
            double vehPopVal = objVehiclePop.doubleNoOfVeh;

            xmlDataVehPop.AppendFormat("<set label='{0}' value='{1}' />", yrPop.ToString(), vehPopVal.ToString());
        }

        /// Create The Vehicle Population Chart - Column3D Chart With Data From xmlDataVehPop
        xmlDataVehPop.Append("</chart>");
        LiteralVehiclePopulation.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlDataVehPop.ToString(), "Column3DVehiclepopulation", "400", "400", false, true);        
    }

    /// <summary>
    /// Vehicle By Type
    /// </summary>
    public void VehicleByType()
    {
        // --- xml Graph---
        StringBuilder xmlDataVehPopType = new StringBuilder();
        xmlDataVehPopType.Append("<chart caption='Year By VehicleType Report' subCaption='Vehicle Registration' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");
        // ----------------

        objVehiclePopulationPredict.strElementType = ddlVehType.SelectedItem.ToString();
        ArrayList DisVehPopulationType = objVehiclePopulationPredict.VehicleByType(objVehiclePopulationPredict);

        // Loop only By Vehicle Population Type
        int Get = DisVehPopulationType.Count;

        for (int i = 0; i < Get; i++)
        {
            // --- DisVehPopulation Data To xml ---
            BL.ArrayVehiclePopulation objVehiclePop = (BL.ArrayVehiclePopulation)(DisVehPopulationType[i]);
            int yrPopTyp = objVehiclePop.intYear;
            double vehPopValTyp = objVehiclePop.doubleNoOfVeh;

            xmlDataVehPopType.AppendFormat("<set label='{0}' value='{1}' />", yrPopTyp.ToString(), vehPopValTyp.ToString());
        }

        /// Create The Vehicle Population Chart - Column3D Chart With Data From xmlDataVehPop
        xmlDataVehPopType.Append("</chart>");
        LiteralVehiclePopulationType.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlDataVehPopType.ToString(), "Column3DVehiclePopulationType", "400", "350", false, true); 
    }

    /// <summary>
    /// Traffic By Time
    /// </summary>
    public void TrafficByTime()
    {
        // --- xml Graph---
        StringBuilder xmlDataTraffic = new StringBuilder();
        xmlDataTraffic.Append("<chart caption='Split Time-Traffic Status Report' subCaption='' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");
        // ----------------

        objTrafficPredict.strRegion = ddlRegion.SelectedItem.ToString();
        ArrayList DisVehTraffic = objTrafficPredict.DisplyTraffic(objTrafficPredict);

        // Loop only By Traffic
        int Get = DisVehTraffic.Count;

        for (int i = 0; i < Get; i++)
        {
            // --- DisVehPopulation Data To xml ---
            BL.ArrayTraffic objVehicleTraffic = (BL.ArrayTraffic)(DisVehTraffic[i]);
            string SplitTim = objVehicleTraffic.strSplitTime;
            double vehPopValTyp = objVehicleTraffic.doubleNoOfVehicles;

            xmlDataTraffic.AppendFormat("<set label='{0}' value='{1}' />", SplitTim.ToString(), vehPopValTyp.ToString());
        }

        /// Create The Vehicle Population Chart - Column3D Chart With Data From xmlDataVehPop
        xmlDataTraffic.Append("</chart>");
        LiteralVehicleTrafficByTime.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlDataTraffic.ToString(), "Column3DTrafficByTime", "810", "300", false, true); 
   
    }

}
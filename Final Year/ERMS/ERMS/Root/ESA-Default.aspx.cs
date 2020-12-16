using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;
using System.Text;
using System.Collections;
using InfoSoftGlobal;

public partial class ESADefault : System.Web.UI.Page
{
    BL.PopulationPredict objPopulation = new PopulationPredict();

    protected void Page_Load(object sender, EventArgs e)
    {
        // --- xml Graph---
        StringBuilder xmlDataBirth = new StringBuilder();
        xmlDataBirth.Append("<chart caption='Year-Birth Report' subCaption='For Colombo' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");

        StringBuilder xmlDataDeath = new StringBuilder();
        xmlDataDeath.Append("<chart caption='Year-Death Report' subCaption='For Colombo' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");

        StringBuilder xmlDataPopulation = new StringBuilder();
        xmlDataPopulation.Append("<chart caption='Year-Population Report' subCaption='For Colombo' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");
        // ----------

        if(!IsPostBack)
        {
            objPopulation.strPredictDistrict = "Colombo";            
            ArrayList DisBirth=objPopulation.noPredictBirth(objPopulation);
            ArrayList DisDeath = objPopulation.noPredictDeath(objPopulation);
            ArrayList DisPopulation = objPopulation.noPredictPopulation(objPopulation);

            // Loop only By Birth
            int Get=DisBirth.Count;

            for (int i=0; i < Get; i++)
            {
                // --- Birth Data To xml ---
                BL.ArrayBirth objBirth=(BL.ArrayBirth)(DisBirth[i]);
                int yrBirth=objBirth.intBirthYear;
                double valBirth=objBirth.doubleBirthCount;

                xmlDataBirth.AppendFormat("<set label='{0}' value='{1}' />", yrBirth.ToString(), valBirth.ToString());

                // --- Death Data To xml ---
                BL.ArrayDeath objDeath = (BL.ArrayDeath)(DisDeath[i]);
                int yrDeath = objDeath.intDeathYear;
                double valDeath = objDeath.doubleDeathCount;

                xmlDataDeath.AppendFormat("<set label='{0}' value='{1}' />", yrDeath.ToString(), valDeath.ToString());

                // --- Population Data To xml ---
                BL.ArrayPopulation objPop = (BL.ArrayPopulation)(DisPopulation[i]);
                int yrPopulation = objPop.intPopulationYear;
                double valPopulation = objPop.doublePopulationCount;

                xmlDataPopulation.AppendFormat("<set label='{0}' value='{1}' />", yrPopulation.ToString(), valPopulation.ToString());
            }

            
            /// Create The Birth Chart - Column3D Chart With Data From xmlDataBirth
            xmlDataBirth.Append("</chart>");
            LiteralBirth.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlDataBirth.ToString(), "Column3DBirth", "430", "200", false, true);

            /// Create The Death Chart - Column3D Chart With Data From xmlDataDeath
            xmlDataDeath.Append("</chart>");
            LiteralDeath.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlDataDeath.ToString(), "Column3DDeath", "430", "200", false, true);

            /// Create The Population Chart - Column3D Chart With Data From xmlDataPopulation
            xmlDataPopulation.Append("</chart>");
            LiteralPop.Text = FusionCharts.RenderChart("FusionCharts/Line.swf", "", xmlDataPopulation.ToString(), "Column3DPopulation", "430", "200", false, true); 

        }
    }
}

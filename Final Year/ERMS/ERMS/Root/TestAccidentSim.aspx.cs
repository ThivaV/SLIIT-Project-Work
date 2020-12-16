using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;
using System.Collections;
using InfoSoftGlobal;
using System.Text;

public partial class TestAccidentSim : System.Web.UI.Page
{
    BL.AccidentPredict objAccident = new AccidentPredict();

    BL.PopulationPredict objPopulation = new PopulationPredict();
     
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        int CurrentYear = DateTime.Now.Year;

        int Count = Convert.ToInt16(txt1.Text) - CurrentYear;

        if (0 <= Count && Count < 5) 
        {
            objAccident.intYear = Convert.ToInt16(txt1.Text);
            ArrayList FindAcc=objAccident.FindAccident(objAccident);

            // --- xml Graph---
            StringBuilder xmlDataBirth = new StringBuilder();
            xmlDataBirth.Append("<chart caption='Year-Birth Report' subCaption='By Value' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");


            int Get = FindAcc.Count;
            for (int i = 0; i < Get;i++)
            {
                BL.ArrayAccident obj = (BL.ArrayAccident)(FindAcc[i]);
                int yr = obj.intYear;
                int val = obj.intNoOfAccidents;

                ListBox1.Items.Add("Year : " + yr + " Val" + val);

                xmlDataBirth.AppendFormat("<set label='{0}' value='{1}' />", yr.ToString(), val.ToString());
            }

            xmlDataBirth.Append("</chart>");
            Literal1.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlDataBirth.ToString(), "Column3DBirth", "430", "200", false, true);

        }  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txt1.Text != "")
        {
            int CurrentYr = DateTime.Now.Year;
            int EntrYr = Convert.ToInt16(txt1.Text);
            int t = EntrYr - CurrentYr;

            // ---Graph---
            /// --- Population ---
            StringBuilder xmlDataPopu = new StringBuilder();
            xmlDataPopu.Append("<chart caption='Year-Population Report' subCaption='By Value' Column3DSliceDepth='30' showBorder='1' formatNumberScale='0' numberSuffix=' '>");
            // ----------
       

            if (0 <= t && t < 5)
            {
                objPopulation.strPredictDistrict = "Colombo";
                objPopulation.intPredictYear = EntrYr;

                objPopulation.FindBirth(objPopulation);
                objPopulation.FindDeath(objPopulation);
                ArrayList CalcPop = objPopulation.FindPopulation(objPopulation);

                /// --- Population ---
                int GetPopLoop = CalcPop.Count;
                for (int i = 0; i < GetPopLoop; i++)
                {
                    BL.ArrayPopulation arrPop = (BL.ArrayPopulation)(CalcPop[i]);
                    int PopYr = arrPop.intPopulationYear;
                    double Popu = arrPop.doublePopulationCount;

                    xmlDataPopu.AppendFormat("<set label='{0}' value='{1}' />", PopYr.ToString(), Popu.ToString());
                }

                xmlDataPopu.Append("</chart>");
                Literal1.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlDataPopu.ToString(), "Column3DRegVehRte", "750", "400", false, true);
            }
        }
        else
        {
            //lblMsg.Text = "Error in inserted Year";
        }
    }
}
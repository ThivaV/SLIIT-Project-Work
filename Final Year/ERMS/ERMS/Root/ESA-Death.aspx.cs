using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;
using InfoSoftGlobal;
using System.Text;
using System.Collections;

public partial class ESA_Death : System.Web.UI.Page
{
    BL.PopulationPredict objPopulationPredict = new PopulationPredict();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnter_Click(object sender, EventArgs e)
    {
        ClearListBx();
        if (txtYear.Text != "")
        {
            DateTime dt = DateTime.Now;
            int CurrentYear = dt.Year;

            string Reg = ddlRegion.SelectedValue.ToString();
            int t = int.Parse(txtYear.Text) - CurrentYear;


            //if (Reg != "--Select--" && 0 <= t && t < 5)
            {
                /// Clear The Error Message.
                lblMsg.Text = "";

                /// Make Visible the Content Items
                lblDeath.Visible = true;
                LstDeath.Visible = true;

                /// <summary>
                /// Pass The Value From "PopulationPredict.cs"
                /// </summary>
                objPopulationPredict.strPredictDistrict = Reg;
                objPopulationPredict.intPredictYear = int.Parse(txtYear.Text);
                ArrayList CalcDeathArray = objPopulationPredict.FindDeath(objPopulationPredict);

                /// <summary>
                /// Inialize The Graph Elements.
                /// And Get The Value From "PopulationPredict.cs" 
                /// </summary>

                // ---Graph Column3D---
                StringBuilder xmlData = new StringBuilder();
                xmlData.Append("<chart caption='Year-Death Report' subCaption='' Column3DSliceDepth='30' showBorder='1' formatNumberScale='0' numberSuffix=' '>");
                // ----------Pie------
                // -------------------

                int Get = CalcDeathArray.Count;
                for (int i = 0; i < Get; i++)
                {
                    // --- Display Birth ---
                    BL.ArrayDeath objDeath = (BL.ArrayDeath)(CalcDeathArray[i]);
                    int DeathYr = objDeath.intDeathYear;
                    double DeathVal = objDeath.doubleDeathCount;

                    LstDeath.Items.Add("Year : " + DeathYr + "  -->> " + DeathVal);

                    xmlData.AppendFormat("<set label='{0}' value='{1}' />", DeathYr.ToString(), DeathVal.ToString());
                    // ---------------------
                }

                /// Close chart Element------
                /// 
                xmlData.Append("</chart>");
                /// Create The Chart - Column3D Chart With Data From xmlData
                //DeathGraph.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlData.ToString(), "Column3DDeath", "900", "400", false, true);
                /// 
                //DeathPieGraph.Text = FusionCharts.RenderChart("FusionCharts/Pie3D.swf", "", xmlData.ToString(), "Pie3DDeath", "622", "200", false, true);
                ///
                /// ------------------------- 
            }
            //else
                //lblMsg.Text = "Error Inserted Value... :-(";
        }
        //else
            //lblMsg.Text = "Please Enter Value... :-("; 
    }

    /// <summary>
    /// Clear ListBox Contant
    /// </summary>
    public void ClearListBx()
    {
        int _countBirth = LstDeath.Items.Count;

        if (_countBirth != 0)
        {
            for (int i = 0; i < _countBirth; i++)
            {
                ListItem item = new ListItem();

                /// --- Birth ---
                item.Text = LstDeath.Items[i].Text;
                item.Value = LstDeath.Items[i].Value;
                LstDeath.Items.Add(item);

            }
        }
        //Clear the items        
        LstDeath.Items.Clear();
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ESA-Population.aspx");
    }
}
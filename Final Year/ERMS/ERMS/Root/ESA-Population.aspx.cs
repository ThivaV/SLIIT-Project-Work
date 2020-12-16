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

public partial class ESA_Population : System.Web.UI.Page
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
                lblBirth.Visible = true;
                lblDeath.Visible = true;
                lblPopulation.Visible = true;
                LstBxBirth.Visible = true;
                LstBxDeath.Visible = true;
                LstBxPopulation.Visible = true;
                btnBirth.Visible = true;
                btnDeath.Visible = true;

                /// <summary>
                /// Pass The Value From "PopulationPredict.cs"
                /// </summary>
                objPopulationPredict.strPredictDistrict = Reg;
                objPopulationPredict.intPredictYear = int.Parse(txtYear.Text);

                ArrayList CalcBirthArray=objPopulationPredict.FindBirth(objPopulationPredict);
                ArrayList CalcDeathArray=objPopulationPredict.FindDeath(objPopulationPredict);
                ArrayList CalcPopArray=objPopulationPredict.FindPopulation(objPopulationPredict);

                /// <summary>
                /// Inialize The Graph Elements.
                /// And Get The Value From "PopulationPredict.cs" 
                /// </summary>

                // ---Graph---
                StringBuilder xmlData = new StringBuilder();
                xmlData.Append("<chart caption='Year-Population Output Report' subCaption='By Value' Column3DSliceDepth='30' showBorder='1' formatNumberScale='0' numberSuffix=' '>");
                // ----------

                // --- Copy BL.PopulationPredict -->> Population,Birth & Death Values to a new ArrayList ---
                //ArrayList CalcPopArray = objPopulationPredict.FindPopulation(objPopulationPredict);
                //ArrayList CalcBirthArray = objPopulationPredict.FindBirth(objPopulationPredict);
                //ArrayList CalcDeathArray = objPopulationPredict.FindDeath(objPopulationPredict);
                // -----------------------------------------------------------------------------------------

                int Get = CalcPopArray.Count;
                for (int i = 0; i < Get; i++)
                {
                    // --- Display Population ---
                    BL.ArrayPopulation objPopulation = (BL.ArrayPopulation)(CalcPopArray[i]);
                    int Yr = objPopulation.intPopulationYear;
                    double Val = objPopulation.doublePopulationCount;

                    LstBxPopulation.Items.Add("Year : " + Yr + "  -->>" + Val);
                    xmlData.AppendFormat("<set label='{0}' value='{1}' />", Yr.ToString(), Val.ToString());
                    // --------------------------

                    // --- Display Birth ---
                    BL.ArrayBirth objBirth = (BL.ArrayBirth)(CalcBirthArray[i]);
                    int BirthYr = objBirth.intBirthYear;
                    double BirthVal = objBirth.doubleBirthCount;
                    LstBxBirth.Items.Add("Year : " + BirthYr + "  -->>" + BirthVal);
                    // ---------------------

                    // --- Display Death ---
                    BL.ArrayDeath objDeath=(BL.ArrayDeath)(CalcDeathArray[i]);
                    int DeathYr = objDeath.intDeathYear;
                    double DeathVal = objDeath.doubleDeathCount;
                    LstBxDeath.Items.Add("Year : " + DeathYr + "  -->>" + DeathVal);
                    // ---------------------
                }

                /// Close chart Element------
                /// 
                xmlData.Append("</chart>");
                /// Create The Chart - Column3D Chart With Data From xmlData
                PopulationGraph.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlData.ToString(), "Column3DRegVehRte", "900", "400", false, true);
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
        int _countPopulation = LstBxPopulation.Items.Count;
        int _countBirth = LstBxBirth.Items.Count;
        int _countDeath = LstBxDeath.Items.Count;

        if (_countPopulation != 0 && _countBirth != 0 && _countDeath != 0)
        {
            for (int i = 0; i < _countPopulation; i++)
            {
                ListItem item = new ListItem();
                /// --- Population ---
                item.Text = LstBxPopulation.Items[i].Text;
                item.Value = LstBxPopulation.Items[i].Value;
                LstBxPopulation.Items.Add(item);
                /// --- Birth ---
                item.Text = LstBxBirth.Items[i].Text;
                item.Value = LstBxBirth.Items[i].Value;
                LstBxBirth.Items.Add(item);
                /// --- Death ---
                item.Text = LstBxDeath.Items[i].Text;
                item.Value = LstBxDeath.Items[i].Value;
                LstBxDeath.Items.Add(item);
            }
        }
        //Clear the items
        LstBxPopulation.Items.Clear(); 
        LstBxBirth.Items.Clear();
        LstBxDeath.Items.Clear();
    }
    protected void btnBirth_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ESA-Birth.aspx");
    }
    protected void btnDeath_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ESA-Death.aspx");
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ESA-Default.aspx");
    }
}
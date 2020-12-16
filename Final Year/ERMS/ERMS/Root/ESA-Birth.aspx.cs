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

public partial class ESA_Birth : System.Web.UI.Page
{
    BL.PopulationPredict objPopulationPredict = new PopulationPredict();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnter_Click(object sender, EventArgs e)
    {
        ClearListBx();
        if(txtYear.Text != "")
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
                LstBirth.Visible = true;

                /// <summary>
                /// Pass The Value From "PopulationPredict.cs"
                /// </summary>
                objPopulationPredict.strPredictDistrict = Reg;
                objPopulationPredict.intPredictYear = int.Parse(txtYear.Text);
                ArrayList CalcBirthArray = objPopulationPredict.FindBirth(objPopulationPredict);

                /// <summary>
                /// Inialize The Graph Elements.
                /// And Get The Value From "PopulationPredict.cs" 
                /// </summary>

                // ---Graph Column3D---
                StringBuilder xmlData = new StringBuilder();
                xmlData.Append("<chart caption='Year-Birth Report' subCaption='' Column3DSliceDepth='10' showBorder='1' formatNumberScale='0' numberSuffix=' '>");
                // ----------Pie------
                // -------------------

                int Get = CalcBirthArray.Count;
                for (int i = 0; i < Get; i++)
                {
                    // --- Display Birth ---
                    BL.ArrayBirth objBirth = (BL.ArrayBirth)(CalcBirthArray[i]);
                    int BirthYr = objBirth.intBirthYear;
                    double BirthVal = objBirth.doubleBirthCount;

                    LstBirth.Items.Add("Year : " + BirthYr + "  -->> " + BirthVal);

                    xmlData.AppendFormat("<set label='{0}' value='{1}' />", BirthYr.ToString(), BirthVal.ToString());
                    // ---------------------
                }

                    /// Close chart Element------
                    /// 
                    xmlData.Append("</chart>");
                    /// Create The Chart - Column3D Chart With Data From xmlData
                    BirthGraph.Text = FusionCharts.RenderChart("FusionCharts/Column3D.swf", "", xmlData.ToString(), "Column3DDeath", "900", "400", false, true);
                    /// 
                    BirthPieGraph.Text = FusionCharts.RenderChart("FusionCharts/Pie3D.swf", "", xmlData.ToString(), "Pie3DDeath", "622", "200", false, true);
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
        int _countBirth = LstBirth.Items.Count;

        if (_countBirth != 0)
        {
            for (int i = 0; i < _countBirth; i++)
            {
                ListItem item = new ListItem();
              
                /// --- Birth ---
                item.Text = LstBirth.Items[i].Text;
                item.Value = LstBirth.Items[i].Value;
                LstBirth.Items.Add(item);
                
            }
        }
        //Clear the items        
        LstBirth.Items.Clear();       
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ESA-Population.aspx");
    }
}
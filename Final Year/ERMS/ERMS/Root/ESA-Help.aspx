<%@ Page Title="" Language="C#" MasterPageFile="~/ESAMaster.master" AutoEventWireup="true" CodeFile="ESA-Help.aspx.cs" Inherits="ESA_Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <div style="margin-left: 135px">
                    <div id="chartdiv" align="center">FusionGadgets</div>
                    <script type="text/javascript">
                        var myChart = new FusionCharts("FusionCharts/DrawingPad.swf", "myChartId", "550", "300", "0", "0");
                        myChart.setDataURL("DrawingPad.xml");
                        myChart.render("chartdiv");
                    </script> 
                </div>               
            </td>
        </tr>
        <tr>
            <td>

                <p style="color: #006600"><b>(1) How the simulator POPULATION going to work ? </b></p>
                <p> Step 1: Users have to select the region. </p>
                <p> Step 2: user have to enter the year which he/she wants to predict the populations. </p> 
                <p> Step 3: press the PREDICT button which is in the right Conner of the website. </p>
                <p> Step 4: System will auto generate the graphs. </p>
                <p> Step 5: user can view the statistical data’s in the bottom of the graph. </p>  
                
                <p style="color: #006600"><b>(2) How the simulator BIRTH PREDICTOR going to work ? </b></p> 
                <p> Step 1: Users have to select the region. </p>
                <p> Step 2: user have to enter the year which he/she wants to predict the birth. </p>
                <p> Step 3: press the PREDICT button which is in the right Conner of the website. </p>
                <p> Step 4: System will auto generate the graphs. </p>
                <p> Step 5: user can view the statistical data’s in the bottom of the graph. </p>    
                
                <p style="color: #006600"><b>(3) How to view the dash board ? </b></p> 
                <p> Step 1: User first has to click Dash Board button. </p>
                <p> Step 2: Within the dash board button there is a Sri Lankan map view. </p>
                <p> Step 3: Users have to select the one of the province which he/she wants to view the statistical data’s. </p>
                <p> Step 4: System will auto generate the graphs for Population, Birth, and Death. </p>
                <p> Step 5: User can view the graphs year by year. </p>    
                
                <p style="color: #006600"><b>(4) How to view the Report of E-Statistical Analyzer ? </b></p> 
                <p> Step 1: Press the REPORT button. </p>
                <p> Step 2: ESA automatically provide the REPORT. </p>
                <p> Step 3: User can view the report by selecting the page no on top of the page. </p>
                <p> Step 4: User can also download the ESA REPORT by clicking the DOWNLOAD button. </p>
                
                <p style="color: #006600"><b>(5) How to declare user’s uncertainties ? </b></p> 
                <p> Step 1: User can send mail. </p>
                <p> Step 2: Administrator will receive the mail. </p>
                <p> Step 3: Users get the reply back from the Administrator. </p>
                      
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


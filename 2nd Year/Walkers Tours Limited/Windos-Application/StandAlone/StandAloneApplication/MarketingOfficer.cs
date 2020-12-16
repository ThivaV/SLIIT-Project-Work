using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Web;
using System.IO;
using BL;

namespace Administrator
{
    public partial class MarketingOfficer : Form
    {
        public MarketingOfficer()
        {
            InitializeComponent();
        }

        private void folderBrowserDialog1_HelpRequest(object sender, EventArgs e)
        {

        }

        private void button12_Click(object sender, EventArgs e)
        {
            MarMilage objMarMilage = new MarMilage();
            objMarMilage.Show();
        } 
        private void linkLabel1_Click(object sender, EventArgs e)
        {

            panel5.Visible = true;
            lblHotelName.Text = "GalleFace Hotel";
            
        }

        private void linkLabel2_Click(object sender, EventArgs e)
        {
            panel5.Visible = true;
            lblHotelName.Text = "Hillton Hotel";
        }

        
        private void button8_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.FolderBrowserDialog openFolderDialog = new System.Windows.Forms.FolderBrowserDialog();
            openFolderDialog.ShowDialog();  
        }

        private void linkLabel4_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            panel5.Visible = true;
            lblHotelName.Text = "Amaya Hill Hotel";
        }

        private void linkLabel5_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            panel5.Visible = true;
            lblHotelName.Text = "Amangala Hotel";  
        }

        private void linkLabel6_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            panel5.Visible = true;
            lblHotelName.Text = "The Hill Club";
        }

        private void linkLabel7_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            panel5.Visible = true;
            lblHotelName.Text = "Sigiriya Rest House";
        }

        private void button9_Click(object sender, EventArgs e)
        {
            richTextBox3.Clear();
        }

        private void button11_Click(object sender, EventArgs e)
        {
            richTextBox4.Clear();
        }

        private void button20_Click(object sender, EventArgs e)
        {

        }

        private void btnChgeVehCharg_Click(object sender, EventArgs e)
        {
            MarVehicle objMarVehicle = new MarVehicle();
            objMarVehicle.Show();
        }

        private void btnGuiCharge_Click(object sender, EventArgs e)
        {
            MarGuiCharge objMarGuiCharge = new MarGuiCharge();
            objMarGuiCharge.Show();
        }

        private void btnExt_Click(object sender, EventArgs e)
        {
            this.Close();
            UserLogin objmyUser = new UserLogin();
           objmyUser.Show();
        }

        private void MarketingOfficer_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'DMSDataSet.WTLworkers' table. You can move, or remove it, as needed.
            this.WTLworkersTableAdapter.Fill(this.DMSDataSet.WTLworkers);

            //this.reportViewer1.RefreshReport();
            //this.reportViewer2.RefreshReport();
        }

        private void reportViewer2_Load(object sender, EventArgs e)
        {

        }        
        
    }
}
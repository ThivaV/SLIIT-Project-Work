using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Administrator
{
    public partial class MarGuiCharge : Form
    {
        public MarGuiCharge()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            MarketingOfficer objMarketingOfficer = new MarketingOfficer();
            this.Close();
            objMarketingOfficer.Show();
        }
    }
}
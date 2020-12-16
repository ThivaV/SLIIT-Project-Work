using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Administrator
{
    public partial class MarVehicle : Form
    {
        public MarVehicle()
        {
            InitializeComponent();
        }

        private void btncancel_Click(object sender, EventArgs e)
        {
            MarketingOfficer objMarketingOfficer = new MarketingOfficer();
            this.Close();
            objMarketingOfficer.Show();
        }

    }
}
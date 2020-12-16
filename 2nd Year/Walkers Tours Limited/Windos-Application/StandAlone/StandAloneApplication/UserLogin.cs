using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using BL;

namespace Administrator
{
    public partial class UserLogin : Form
    {
        BL.UserLogIn objUserLogin = new BL.UserLogIn();


        public UserLogin()
        {
            InitializeComponent();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            this.label3.Visible = false;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            this.label3.Visible = false;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //string usr = textBox1.Text;            
            if (BL.UserLogIn.logCheck(textBox1.Text, textBox2.Text)==true)
            {
                if (textBox1.Text.IndexOf("AD")!= -1)
                {
                    this.label3.Visible = false;
                    Administrator objAdmin = new Administrator();
                    objAdmin.Show();
                    this.Visible = false;
                    
                }
                else if(textBox1.Text.IndexOf("MA")!= -1)
                {
                    this.label3.Visible = false;
                    MarketingOfficer objMarket = new MarketingOfficer();
                    objMarket.Show();
                    this.Visible = false;                    
                }              
           
            }            
            else
            {
                this.label3.Visible = true;
            }            
           
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            MarketingOfficer objMarketingOfficer = new MarketingOfficer();
            objMarketingOfficer.Close();
            Administrator objAdministrator = new Administrator();
            objAdministrator.Close();
            textBox1.Clear();
            textBox2.Clear();
            this.label3.Visible = false;
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
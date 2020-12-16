using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using BL;

namespace Administrator
{
     
    public partial class Administrator : Form
    {
        SqlDataAdapter adp = null;
        DataSet ds = null;
        BL.Admin objAdmin = new BL.Admin();
        BL.AdminRemove objAdminRemove = new BL.AdminRemove();
        public Administrator()
        {
            InitializeComponent();
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }      

       
        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            panel3.Visible = false;
            panel2.Visible = true;

        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            panel2.Visible = false;
            panel3.Visible = true;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            txtName.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();
            textBox5.Clear();
            textBox8.Clear();
            textBox9.Clear();
            textBox30.Clear();
            richTextBox1.Clear();
            UserLogin myUser = new UserLogin();
            this.Close();
            myUser.Show();
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
            textBox8.Text = textBox3.Text + LblGrp.Text;
            // = "MA";
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void textBox9_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtName.Text.Equals(""))
            {
                this.panel4.Visible = true;
            }
            else if (textBox2.Text.Equals(""))
            {
                this.panel4.Visible = true;
            }
            else if (textBox3.Text.Equals(""))
            {
                this.panel4.Visible = true;
            }
            else if (textBox4.Text.Equals(""))
            {
                this.panel4.Visible = true;
            }
            else if (textBox5.Text.Equals(""))
            {
                this.panel4.Visible = true;
            }
            else if (richTextBox1.Text.Equals(""))
            {
                this.panel4.Visible = true;
            }

            else if (textBox8.Text.Equals(""))
            {
                this.panel4.Visible = true;
            }
            else if (textBox9.Text.Equals(""))
            {
                this.panel4.Visible = true;
            }
            
            try
            {
                objAdmin.strFirstName = this.txtName.Text;
                objAdmin.strLastName = this.textBox2.Text;
                objAdmin.strEmployeeNo = this.textBox8.Text;
                objAdmin.strNICNo = this.textBox4.Text;
                objAdmin.strAddress = this.richTextBox1.Text;
                //objAdmin.intTelNo = this.textBox5.(How to convert Interger to string);
                objAdmin.intTelNo = 0778054342;
                objAdmin.strGender = this.comboBox1.Text;
                objAdmin.strProfileType = this.comboBox6.Text;
                //objAdmin.User Name=EmployeeNo--TextBox9
                objAdmin.strPassword = this.textBox9.Text;
                //Retype Password--TextBox30
                objAdmin.insertAddUsr(objAdmin);
                string s = " Account Created Successfully!!!";
                //MessageBox.Show(s);

                MessageBox.Show(comboBox6.Text + s);
                txtName.Clear();
                textBox2.Clear();
                textBox3.Clear();
                textBox4.Clear();
                textBox5.Clear();
                textBox8.Clear();
                textBox9.Clear();
                textBox30.Clear();
                richTextBox1.Clear();
                // objRoomReservation.insertRooomReservation(objRoomReservation);
            }
            catch 
            {

            }
        }

        private void comboBox6_SelectedIndexChanged(object sender, EventArgs e)
        {
           // MessageBox.Show(comboBox6.SelectedText.ToString());
            if (comboBox6.SelectedText.Equals("Administrator")) 
            {
                LblGrp.Text = "AD";
            }
            else 
                LblGrp.Text = "MA";

            if (textBox3.Text!="")
            textBox8.Text = textBox3.Text + LblGrp.Text;

                if (panel4.Visible == true)
                {
                    this.panel4.Visible = false;
                }

        }

        private void comboBox5_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }

        private void textBox30_TextChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void panel4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label40_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void comboBox4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (panel4.Visible == true)
            {
                this.panel4.Visible = false;
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {

        }
       
        private void Administrator_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'dMSDataSet.WTLworkers' table. You can move, or remove it, as needed.
            //this.wTLworkersTableAdapter.Fill(this.dMSDataSet.WTLworkers);
            // TODO: This line of code loads data into the 'dMSDataSet.WTLworkers' table. You can move, or remove it, as needed.
            //this.wTLworkersTableAdapter1.Fill(this.dMSDataSet.WTLworkers);
            // TODO: This line of code loads data into the 'dMSDataSet.WTLworkers' table. You can move, or remove it, as needed.
            //this.wTLworkersTableAdapter.Fill(this.dMSDataSet.WTLworkers);
            // TODO: This line of code loads data into the 'dMSDataSet.WTLworkers' table. You can move, or remove it, as needed.
            //this.wTLworkersTableAdapter.Fill(this.dMSDataSet.WTLworkers);

        }

        private void RdBtnAccTyp_CheckedChanged(object sender, EventArgs e)
        {
            //if (panel6.Visible == false)
            //{
            //    this.panel6.Visible = true;
            //    this.panel5.Visible = false;
            //}
        }

        private void RdBtnEmpName_CheckedChanged(object sender, EventArgs e)
        {
            //if (panel5.Visible == false)
            //{
            //    this.panel5.Visible = true;
            //    this.panel6.Visible = false;
            //}
        }


        private void btnCancel_Click(object sender, EventArgs e)
        {
            UserLogin myUser = new UserLogin();
            this.Close();
            myUser.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            UserLogin myUser = new UserLogin();
            this.Close();
            myUser.Show();
        }

        private void button9_Click(object sender, EventArgs e)
        {
            UserLogin myUser = new UserLogin();
            this.Close();
            myUser.Show();
        }

        private void LblGrp_Click(object sender, EventArgs e)
        {

        }

        private void comboBox6_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = true;
        }

        private void fillByToolStripButton_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    this.wTLworkersTableAdapter.FillBy(this.dMSDataSet.WTLworkers);
            //}
            //catch (System.Exception ex)
            //{
            //    System.Windows.Forms.MessageBox.Show(ex.Message);
            //}

        }

        private void fillBy1ToolStripButton_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    this.wTLworkersTableAdapter.FillBy1(this.dMSDataSet.WTLworkers);
            //}
            //catch (System.Exception ex)
            //{
            //    System.Windows.Forms.MessageBox.Show(ex.Message);
            //}

        }

        

        private void label20_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click_1(object sender, EventArgs e)
        {
            String empnop = dvadmin.Rows[dvadmin.SelectedCells[0].RowIndex].Cells[2].Value.ToString();
            string constring = @"Data Source= Sinthana-PC;Initial Catalog=DMS;user = sa;password = sa";
            SqlConnection conn = new SqlConnection(constring);
            SqlCommand com = new SqlCommand("Delete from WTLworkers where employeeno='" + empnop + "'", conn);
            conn.Open();
            com.ExecuteNonQuery();

            adp = new SqlDataAdapter("SELECT FirstName, LastName, EmployeeNo, NICNo, Address, TelNo, Gender, profileType, password FROM  WTLworkers WHERE     (profileType ='" + cmbprofiletype.Text + "')", conn);
            //SqlCommandBuilder cb = new SqlCommandBuilder(adp);
            //conn.Open();
            ds = new DataSet();
            adp.Fill(ds, "sample1");
            dvadmin.DataSource = ds.Tables[0];
            dvadmin.Refresh();
            
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string constring = @"Data Source= Sinthana-PC;Initial Catalog=DMS;user = sa;password = sa";
            SqlConnection conn = new SqlConnection(constring);
            //SqlCommand com = conn.CreateCommand();
            //com.ExecuteNonQuery();
            // create the DataSet
            adp = new SqlDataAdapter("SELECT FirstName, LastName, EmployeeNo, NICNo, Address, TelNo, Gender, profileType, password FROM  WTLworkers WHERE     (profileType ='" + cmbprofiletype.Text + "')", conn);
            SqlCommandBuilder cb = new SqlCommandBuilder(adp);
            conn.Open();
            ds = new DataSet();
            adp.Fill(ds, "sample1");
            dvadmin.DataSource = ds.Tables[0];
            dvadmin.Refresh();

            //adp.Update(ds);
            
        }

        private void fillByToolStripButton_Click_1(object sender, EventArgs e)
        {
            try
            {
                this.wTLworkersTableAdapter.FillBy(this.dMSDataSet.WTLworkers);
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }
    }
}


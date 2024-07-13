using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlTypes;
using System.Web.WebSockets;
using System.Diagnostics;
using System.Web.Services.Description;

namespace Project01.Img
{
    public partial class signup : System.Web.UI.Page
    {
        string strconnect = "server=.;database=Games;integrated security=true;"; //Give a Connection String location to dataBase
        SqlConnection con = null;// Give null to SqlConnection. 
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // Save Button 
                con = new SqlConnection(strconnect);// Making a Connection 
                string query = "insert into signup (username,userpassword,gender,mobile,role) values(@un,@upass,@gen,@mob,@r)";

                cmd = new SqlCommand(query, con);//Giving written Query and Connection to SQLCommand.

                //Giving Parameters to Query 
                cmd.Parameters.AddWithValue("@un", TextBox1.Text);
                cmd.Parameters.AddWithValue("@upass", TextBox4.Text);
                string gender = null;
                if (RadioButton1.Checked)
                {
                    gender = "male";
                }
                else if (RadioButton2.Checked)
                {
                    gender = "female";
                }
                else if (RadioButton3.Checked)
                {
                    gender = "other";
                }
                else { Label1.Text = "Plese Select Gender"; }
                cmd.Parameters.AddWithValue("@gen", gender);
                cmd.Parameters.AddWithValue("@mob", TextBox3.Text);
                string role = null;
                if (RadioButton4.Checked) 
                {
                    role = "admin";
                }
                if (RadioButton5.Checked)
                {
                    role = "user";
                }
                cmd.Parameters.AddWithValue("@r", role);
                con.Open(); // open Connection 
                cmd.ExecuteNonQuery(); // Execute the Command
      
                //Clearingup
                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                TextBox3.Text = String.Empty;
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                RadioButton3.Checked = false;
                RadioButton4.Checked = false;
                RadioButton5.Checked = false;   
            }
            catch (Exception ex)
            {
                Label1.Text = "Please Enter Your Details!!!!!!";
            }
            finally 
            {
               
                con.Close(); // close The Connection

                Label1.Text = "Thanks for Signup you can Signin Noww!!";
                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                TextBox3.Text = String.Empty;
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                RadioButton3.Checked = false;
            }

        }

        public void Button2_Click(object sender, EventArgs e)
        {
            clear();

        }
        public void clear() 
        {
            //clear button
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox3.Text = String.Empty;
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            Label1.Text = String.Empty;
            TextBox1.Focus();
        }

    }
}
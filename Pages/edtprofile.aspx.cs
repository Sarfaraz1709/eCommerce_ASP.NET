using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project01
{
    public partial class edtprofile : System.Web.UI.Page
    {
        string str = "server=.;database=Games;integrated security=true;";
        SqlConnection conn = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) 
            {
                //Loding the details in Textboxes
                string uname = Session["username"].ToString();
                conn = new SqlConnection(str);
                conn.Open();
                string query = "select * from signup where username = '"+uname+"'";
     
                cmd = new SqlCommand(query,conn);

                SqlDataReader dr = cmd.ExecuteReader();
                string pass = null;
                string gender = null;
                string role = null;
                string num = null;

                if (dr.Read()) 
                {
                    pass = dr["userpassword"].ToString();
                    gender = dr["gender"].ToString();
                    role = dr["role"].ToString() ;
                    num = dr["mobile"].ToString();
                }

                dr.Close();
                conn.Close();
                
                // Set these values into Textbox of edittpage load

                TextBox1.Text = uname;
                TextBox2.Text = pass;
                TextBox3.Text = num;
                //For Geder
                if (gender == "male") { RadioButton1.Checked = true; }
                else if (gender == "female") { RadioButton2.Checked = true; }
                else { RadioButton3.Checked = true; }
                //For Role
                //if (role == "admin") { RadioButton4.Checked = true; }
                //else { RadioButton5.Checked = true; }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                //for Update the details
                conn = new SqlConnection(str);
                conn.Open();
                string query = "Update signup SET userpassword=@pw,gender=@g,mobile=@mob where username = @un";
                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@un", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pw", TextBox2.Text);
                cmd.Parameters.AddWithValue("@mob", TextBox3.Text);
                //Gender---->>
                string g = null;
                if (RadioButton1.Checked) { g = "male"; }
                else if (RadioButton2.Checked) { g = "female"; }
                else if (RadioButton3.Checked) { g = "other"; }
                cmd.Parameters.AddWithValue("@g", g);
                //role------->>
                //string r = null;
                //if (RadioButton4.Checked) { r = "admin"; }
                //else if (RadioButton5.Checked) { r = "user"; }
                //cmd.Parameters.AddWithValue("@r", r);
            //--
            cmd.ExecuteNonQuery();
            conn.Close();
            Label1.Text = "Data Updated Successfully !!";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text=string.Empty;
            TextBox3.Text=string.Empty;
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            //RadioButton4.Checked = false;
            //RadioButton5.Checked = false;
            Label1.Text=string.Empty;
        }
    }
}
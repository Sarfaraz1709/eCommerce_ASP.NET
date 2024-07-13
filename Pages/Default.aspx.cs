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
    public partial class _Default : Page
    {
        string str = "server=.;database=Games;integrated security=true;";
        SqlConnection conn = null;
        SqlCommand cmd = null;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Login Button Click.
            try
            {
                conn = new SqlConnection(str);
                conn.Open();
                string query = "Select * from signup where username = @un and userpassword = @up";
                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@un", TextBox1.Text);
                cmd.Parameters.AddWithValue("@up", TextBox2.Text);
                SqlDataReader dr = cmd.ExecuteReader(); // Reads the Data from SqlServer and store in any variable
                string role = null;
                string uname = null;
                string pwsd = null;
                if (dr.Read())
                {
                    role = dr["role"].ToString(); // Saved role of SQL will be stored in role
                    uname = dr["username"].ToString(); // Saved name of SQL will be stored in uname
                    pwsd = dr["userpassword"].ToString();
          
                    Session["username"] = uname; // the username will be stored in session that can be used for displaying his/her Name
                    if (TextBox1.Text == uname && TextBox2.Text == pwsd) 
                    {
                        if (role == "user")
                        {
                            Response.Redirect("userDB.aspx");
                        }
                        else if (role == "admin")
                        {
                            Response.Redirect("adminDB.aspx");
                        }
                        else 
                        {
                            Label1.Text = "Please Signup";
                        }
                    }
                    else 
                    {
                        Label1.Text = "Invalid Username or Password !!";
                    }

                    dr.Close();

                }
            }
            catch (Exception ex)
            {
                Label1.Text = "Error : " + ex.Message;
            }
            finally 
            {
                conn.Close();
            }
           


        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project01
{
    public partial class PrintReciept : System.Web.UI.Page
    {
        string str = "server=.;database=Games;integrated security=true";
        SqlConnection conn = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        { 
            if (!Page.IsPostBack)
            {
                string username = Request.QueryString["username"];
                if (!string.IsNullOrEmpty(username))
                {
                    // Use the username as needed
                    Label2.Text =Server.UrlDecode(username);
                }
                conn = new SqlConnection(str);
                conn.Open();
                string query = $"select * from Orders where FulName = '{username}'";

                cmd = new SqlCommand(query, conn);

                SqlDataReader dr = cmd.ExecuteReader();
                string mob = null;
                string add = null;
                string pin = null;
                string city = null;
                string state = null;
                string pay = null;
                string prod = null;
                string price = null;
                string dt = null;

                if (dr.Read())
                { 
                    mob = dr["Mobile"].ToString();
                    add = dr["Adress"].ToString();
                    pin = dr["Pincode"].ToString();
                    city = dr["City"].ToString();
                    state = dr["State"].ToString();
                    pay = dr["Payment"].ToString();
                    prod = dr["Product"].ToString();
                    price = dr["TotalPrice"].ToString();
                    dt = dr["Date_Time"].ToString();
                }

                dr.Close();
                conn.Close();

                // Set these values into Textbox of edittpage load
                //Label2.Text = Fname;
                Label3.Text = mob;
                Label4.Text = add;
                Label5.Text = pin;
                Label6.Text = city;
                Label7.Text = state;
                Label8.Text = prod;
                Label9.Text = price;
                Label10.Text = dt;
                Label11.Text = pay;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label12.Text = "Thank You For Supporting Please Visit Again";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project01
{
    public partial class BUY : System.Web.UI.Page
    {
        string str = "server=.;database=Games;integrated security=true";
        SqlConnection conn = null;
        SqlCommand cmd = null;
        SqlDataAdapter adapter = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string sid = Session["SID"].ToString();
                conn = new SqlConnection(str);
                adapter = new SqlDataAdapter($"select pname, pprice, quantity, pprice * quantity as totalamount from cart where sessionid = @sid", conn);
                adapter.SelectCommand.Parameters.AddWithValue("@sid", sid);
                DataSet ds = new DataSet();
                adapter.Fill(ds);

                DataList1.DataSource = ds;
                DataList1.DataBind();
            }

        }

        protected void Button2_Click(object sender, EventArgs e) // Save Address
        {
            using (conn = new SqlConnection(str))
            {
                conn.Open();
                string query = "insert into address_detail(fullname, mob, address, area, landmark, pincode, Town, state) values(@fn,@mob,@ad,@area,@land,@pin,@twn,@stat)";
                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@fn", TextBox1.Text);
                cmd.Parameters.AddWithValue("@mob", TextBox2.Text);
                cmd.Parameters.AddWithValue("@ad", TextBox3.Text);
                cmd.Parameters.AddWithValue("@area", TextBox4.Text);
                cmd.Parameters.AddWithValue("@land", TextBox5.Text);
                cmd.Parameters.AddWithValue("@pin", Convert.ToInt32(TextBox6.Text));
                cmd.Parameters.AddWithValue("@twn", TextBox7.Text);
                cmd.Parameters.AddWithValue("@stat", TextBox8.Text);

                cmd.ExecuteNonQuery();
                Label2.Text = "Address Added Successfully.";
            }

        }
        protected void Button3_Click(object sender, EventArgs e) // Payment
        {

            using (SqlConnection conn = new SqlConnection(str))
            {
                conn.Open();
                using (SqlTransaction transaction = conn.BeginTransaction())
                {
                    try
                    {
                        // Step 1: Insert basic order details
                        string sid = Session["SID"].ToString();
                        string insertOrderQuery = "INSERT INTO Orders (FulName, Mobile, Adress, Pincode, City, State, Payment, Date_Time) " +
                                                  "VALUES (@fn, @mob, @ad, @pin, @cty, @st, @py, @dt); " +
                                                  "SELECT SCOPE_IDENTITY();";
                        using (SqlCommand insertOrderCmd = new SqlCommand(insertOrderQuery, conn, transaction))
                        {
                            insertOrderCmd.Parameters.AddWithValue("@fn", TextBox1.Text);
                            insertOrderCmd.Parameters.AddWithValue("@mob", TextBox2.Text);
                            insertOrderCmd.Parameters.AddWithValue("@ad", TextBox3.Text);
                            insertOrderCmd.Parameters.AddWithValue("@pin", TextBox6.Text);
                            insertOrderCmd.Parameters.AddWithValue("@cty", TextBox7.Text);
                            insertOrderCmd.Parameters.AddWithValue("@st", TextBox8.Text);

                            string payment = RadioButton1.Checked ? "online" : RadioButton2.Checked ? "COD" : null;
                            insertOrderCmd.Parameters.AddWithValue("@py", payment);
                            insertOrderCmd.Parameters.AddWithValue("@dt", DateTime.Now);

                            // Get the inserted order ID
                            int orderId = Convert.ToInt32(insertOrderCmd.ExecuteScalar());

                            // Step 2: Retrieve product and total amount from the cart
                            string selectCartQuery = "SELECT pname, pprice * quantity AS totalamount FROM cart WHERE sessionid = @sid";
                            using (SqlCommand selectCartCmd = new SqlCommand(selectCartQuery, conn, transaction))
                            {
                                selectCartCmd.Parameters.AddWithValue("@sid", sid);
                                using (SqlDataReader dr = selectCartCmd.ExecuteReader())
                                {
                                    if (dr.Read())
                                    {
                                        string product = dr["pname"].ToString();
                                        string total = dr["totalamount"].ToString();

                                        dr.Close(); // Close the reader before using another command

                                        // Step 3: Update the order with product and total amount
                                        string updateOrderQuery = "UPDATE Orders SET Product = @prod, TotalPrice = @tp WHERE OrderID = @orderId";
                                        using (SqlCommand updateOrderCmd = new SqlCommand(updateOrderQuery, conn, transaction))
                                        {
                                            updateOrderCmd.Parameters.AddWithValue("@prod", product);
                                            updateOrderCmd.Parameters.AddWithValue("@tp", total);
                                            updateOrderCmd.Parameters.AddWithValue("@orderId", orderId);

                                            updateOrderCmd.ExecuteNonQuery();
                                        }
                                    }
                                }
                            }
                        }

                        // Commit the transaction
                        transaction.Commit();

                        Label3.Text = "Thank you for ordering!";
                    }
                    catch (Exception ex)
                    {
                        // Rollback the transaction in case of an error
                        transaction.Rollback();
                        Label3.Text = "An error occurred: " + ex.Message;
                    }
                }
            }

            string username = TextBox1.Text;
            string encodedUsername = Server.UrlEncode(username);
            Response.Redirect("PrintReciept.aspx?username=" + encodedUsername);

        }
    }
}

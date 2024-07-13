using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project01
{
    public partial class cart : System.Web.UI.Page
    {
        //this cart.aspx will store all the details of product with unique sessionid in MySQL server Database 

        string strcon = "server=.;database=Games;integrated security=true;";
        SqlConnection con = null;
        SqlCommand command = null;
        protected void Page_Load(object sender, EventArgs e)
        {
                string SID = Session.SessionID; // Unique Session Id For Every User / Diffrent Session Id for Diffrent Servers.
                Session["SID"] = SID;
                int qty = 1; // Product Quantity will Be 1 by default 
                string pn = null; // product Name
                int pr = 0; // Product Price numeric in database
                string pimg = null; // Product Image

                string pid = Request.QueryString["pid"].ToString(); // it will Catch the Product id sended from View Details and Store it

                //Checking the Cart table Whether item exist or not if the sessionID & product Will be same then it Will Update into Quantity.
                con = new SqlConnection(strcon);
                string qr1 = "select count(*) from cart where pid=@pid and sessionid=@sid";
                command = new SqlCommand(qr1, con);
                command.Parameters.AddWithValue("@pid", pid);
                command.Parameters.AddWithValue("@sid", Session["SID"].ToString());
                con.Open();
                int res = Convert.ToInt32(command.ExecuteScalar()); //SQl Cmd used t Fetch Single value from the Database.
                con.Close();
                //----------------------
                //insert product in cart  if product does not exist
                if (res == 0)
                {
                    //write a Query to Retrive Data From SQL Server throudh PId from Product id so that is can be filled in Cart.
                    string qr2 = $"select * from products where pid={pid}";
                    command = new SqlCommand(qr2, con);
                    con.Open();
                    SqlDataReader dr = command.ExecuteReader();

                    while (dr.Read()) // Read if the DataReader with Query(PID) in MSSQL Product has Rows(id,name,price,Img) then FIlL
                    {
                        pn = dr["pname"].ToString(); //fill
                        pr = Convert.ToInt32(dr["pprice"].ToString());
                        pimg = dr["imgname"].ToString();
                    }
                    dr.Close();

                    //=======NOW=THE=READED=DATA=FROM=PRODUCT=SHOULD=BE=FILLED=IN=CART=WITH=SESSIONID=================================================================================
                    string q3 = "insert into cart values(@pid,@pn,@pr,@pimg,@sid,@qty)";
                    command = new SqlCommand(q3, con);
                    command.Parameters.AddWithValue("@pid", pid);
                    command.Parameters.AddWithValue("@pn", pn);
                    command.Parameters.AddWithValue("@pr", pr);
                    command.Parameters.AddWithValue("@pimg", pimg);
                    command.Parameters.AddWithValue("@sid", Session["SID"].ToString());// so that SessionId Could not Change for Same User if he goes bad And Add to cart a new item every time his SessionId will Remain the Same
                    command.Parameters.AddWithValue("@qty", qty);

                    command.ExecuteNonQuery();
                    Response.Write("Saved Successfully");

                    con.Close();
                    Response.Redirect("viewcart.aspx");
                }
                //if record exist in cart then update the quantity
                else
                {
                    string qr4 = "update cart set quantity=quantity+1 where pid=@pid and sessionid=@sid";
                    command = new SqlCommand(qr4, con);
                    command.Parameters.AddWithValue("@pid", pid);
                    command.Parameters.AddWithValue("@sid", Session["SID"].ToString());
                    con.Open();
                    command.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("viewcart.aspx");
                }
            
        }
    }
}
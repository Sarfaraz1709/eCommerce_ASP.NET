using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Project01
{
    public partial class viewcart : System.Web.UI.Page
    {
        string str = "server=.;database=Games;integrated security=true;";
        SqlDataAdapter da = null;
        SqlConnection conn = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string sid = Session["SID"].ToString();
            conn = new SqlConnection(str);
               
            string Query = $"select pid,pname,pprice,imgname,quantity,pprice * quantity as 'totalamount' from cart where sessionid='{sid}'";
                da = new SqlDataAdapter(Query, conn);
                DataSet ds = new DataSet();

                int gtotal = 0;
                int ptotal = 0;
            if (!Page.IsPostBack) 
            {
                da.Fill(ds,"cart");
                foreach (DataRow dr in ds.Tables["cart"].Rows)
                {
                    ptotal++;
                    gtotal = gtotal + Convert.ToInt32(dr["totalamount"].ToString());
                }
                TotalProducts.Text = ptotal.ToString();
                grandtotal.Text = gtotal.ToString();
                DataList1.DataSource = ds.Tables["cart"];
                DataList1.DataBind();
            } 
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //Added Button in dataList1 Where CommandName = update , Delete
            string res = e.CommandName.ToString();
            //Label1.Text = "button preessed " + res;
            if (res == "plus") // finding Command Name = "plus"
            {
                TextBox txtBox = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("qty"));
                string qt = txtBox.Text;
                int cnt = Convert.ToInt32(qt) + 1;
                txtBox.Text = cnt.ToString();
            }
            else if (res == "minus")
            {
                TextBox txt = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("qty"));
                int qt = Convert.ToInt32(txt.Text);
                if (qt >= 2) //so that it cant Subtract by 0 and go in Negative
                {
                    int cnt = Convert.ToInt32(qt) - 1;
                    txt.Text = cnt.ToString();
                }

            }

            if (res == "update") //if button with CommandName "update" is Pressed
            {
                TextBox txtbox = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("qty"));// Convert to Textbox then find the textbox of Idname = "qty" Taking Textbox bcoz quantity was in Textbox
                string qt = txtbox.Text; // storing the textbox in qt

                Label pid = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("pid")); // finding Pid which is in Label Format
                string pi = pid.Text;
                using (conn = new SqlConnection(str)) 
                {
                    string qr = "update cart set quantity=@qt where pid=@pi and sessionid=@si";
                    SqlCommand cntion = new SqlCommand(qr, conn);
                    conn.Open();
                    cntion.Parameters.AddWithValue("@qt", qt);
                    cntion.Parameters.AddWithValue("@pi", pi);
                    string sid = Session["SID"].ToString();
                    cntion.Parameters.AddWithValue("@si", sid);
                    cntion.ExecuteNonQuery();
                }
                Response.Redirect("viewcart.aspx"); // Redirection Should Be Give to Reload to the same Page.
            }
            else if (res == "delete")
            {
                Label prodid = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("pid"));
                string pi = prodid.Text;
                using (conn = new SqlConnection(str)) 
                {
                    string qr = "delete from cart  where pid=@pi and sessionid=@sid";
                    SqlCommand com = new SqlCommand(qr, conn);
                    conn.Open();
                    com.Parameters.AddWithValue("@pi", pi);
                    string sid = Session["sid"].ToString(); com.Parameters.AddWithValue("@sid", sid);
                    com.ExecuteNonQuery();
                }
                Response.Redirect("viewcart.aspx");
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userDB.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e) // Procede to buy
        { 
            Response.Redirect("BUY.aspx");
        }
    }
}
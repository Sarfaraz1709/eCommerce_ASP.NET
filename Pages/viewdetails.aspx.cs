using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project01
{
    public partial class viewdetails : System.Web.UI.Page
    {
        string strcon = "server=.;database=Games;integrated security=true;";
        SqlConnection con = null;
        SqlDataAdapter da = null;
        DataSet ds;
        string pid = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            pid = Request.QueryString["pid"].ToString();//Recieved form userDB.aspx
            con = new SqlConnection(strcon);
            string query = $"Select * from products where pid = {pid}";
            da = new SqlDataAdapter(query,con);
            ds = new DataSet();
            if (!Page.IsPostBack) 
            {
                da.Fill(ds,"products");
                DataList1.DataSource = ds.Tables["products"];
                DataList1.DataBind();
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //back button
            Response.Redirect("userDB.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Add To Cart Button 
            Response.Redirect("cart.aspx?pid=" + pid);  
        }
    }
}
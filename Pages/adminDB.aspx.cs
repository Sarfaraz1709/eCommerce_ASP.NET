using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace Project01
{
    public partial class adminDB : System.Web.UI.Page
    {
        string str = "server=.;database=Games;integrated security=true";
        SqlConnection conn = null;
        SqlCommand cmd = null;
        SqlDataAdapter da = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = Session["username"].ToString();
            using (SqlConnection con = new SqlConnection(str)) 
            {
                con.Open();
                string query = $"select gender from signup where username ='{uname}'";
                cmd = new SqlCommand(query, con);
                SqlDataReader rdr = cmd.ExecuteReader();
                string gender = null;
                if (rdr.Read()) 
                {
                    gender = rdr["gender"].ToString();
                }
                if (gender == "male")
                {
                    Label2.Text = $"Mr.{uname}";
                }
                else if (gender == "female") 
                {
                    Label2.Text = $"Miss.{uname}";
                }
            }
            //-----------DATALIST-----------
            conn = new SqlConnection(str);
            da = new SqlDataAdapter("select * from products", conn); // DataAdapter is used to fetch Data from MsSql and Store it in Dataset
            DataSet ds = new DataSet();
            if (!Page.IsPostBack) //
            {
                da.Fill(ds, "products");//Data From SqlServer Stored in DataSet By dataAdapter
                DataList1.DataSource = ds.Tables["products"];
                DataList1.DataBind();
            }

        }
    }
}
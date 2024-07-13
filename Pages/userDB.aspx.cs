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
    public partial class userDB : System.Web.UI.Page
    {
        string strcon = "server=.;database=Games;integrated security=true;";
        SqlConnection con = null;
        SqlDataAdapter da = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(strcon);
            da = new SqlDataAdapter("select * from products", con); // DataAdapter is used to fetch Data from MsSql and Store it in Dataset
            DataSet ds = new DataSet();
            if (!Page.IsPostBack) //
            {
                da.Fill(ds, "products");//Data From SqlServer Stored in DataSet By dataAdapter
                DataList1.DataSource = ds.Tables["products"];
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            // When Clicked on ViewDetails A Command Argument Will Fire & the product id will be Stored in pid.
            //Code Writemn in Default.aspx > <asp:Button commandArgument='<%#Eval("productid") %>' ID="Button1" runat="server" Text="View Details" BackColor="Blue"  />
            string pid = e.CommandArgument.ToString();
            // Rediret the Page To Viewdetails.aspx whit pid so that is Can Show The Perticulat Detail of the Product
            Response.Redirect("viewdetails.aspx?pid=" + pid);
        }
    }
}
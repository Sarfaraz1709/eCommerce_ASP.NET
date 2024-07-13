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
    public partial class addproducts : System.Web.UI.Page
    {
        string str = "server=.;database=Games;integrated security=true";
        SqlCommand cmd = null;
        SqlConnection conn = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string fn = null;
            if (FileUpload1.HasFile) // if it has file then
            {
                fn = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(fn));//This Method Gives Virtual Path to store the file
                conn = new SqlConnection(str);
                string qr = "insert into products(pname,pprice,categoryid,imgname) values(@pn,@pp,@cid,@img)";
                cmd = new SqlCommand(qr, conn);
                cmd.Parameters.AddWithValue("@pn", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pp", Convert.ToInt32(TextBox2.Text));
                cmd.Parameters.AddWithValue("@cid", Convert.ToInt32(TextBox3.Text));
                cmd.Parameters.AddWithValue("@img", fn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                clear();
                Label1.Text = "Product Saved";
            }
            else
            {
                Label1.Text = "please Upload The File";
            }
        }

        public void clear() 
        {
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox3.Text = String.Empty;
            FileUpload1 = null;
        }
    }
}
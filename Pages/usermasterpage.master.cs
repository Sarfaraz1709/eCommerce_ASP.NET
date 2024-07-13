using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project01
{
    public partial class usermasterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = Session["username"].ToString();
            Label1.Text = uname;
       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("edtprofile.aspx");
        }
    }
}
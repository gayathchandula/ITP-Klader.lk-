using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITPCrud
{
    public partial class login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             if(TextBox1.Text == "user" && TextBox2.Text == "user")
            {
                Response.Redirect("CustomerView.aspx");
            }else if(TextBox1.Text == "admin" && TextBox2.Text == "admin")
                    {
                Response.Redirect("Promotions.aspx");
            }
        }
    }
}
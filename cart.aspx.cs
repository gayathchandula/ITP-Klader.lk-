using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITPCrud
{
    public partial class cart : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int discount;

            Int64 finalprice;
            Int64 discountprice;

            SqlConnection sqlCon = new SqlConnection(@"Data Source=GAYATH;Initial Catalog=ITP_Crud;Integrated Security=True");


            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            String myquery = "Select [Amount] from [dbo].[Promotions] where code='" + Coupen.Text + "'";
            SqlCommand sqlCmd1 = new SqlCommand("reportcreate", sqlCon);
            sqlCmd1.CommandType = CommandType.StoredProcedure;
            sqlCmd1.Parameters.AddWithValue("@Code", Coupen.Text.Trim());
            sqlCmd1.ExecuteNonQuery();
            SqlCommand Cmd = new SqlCommand(); 
            Cmd.CommandText = myquery;
            Cmd.Connection = sqlCon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = Cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0) {



                discount = Convert.ToInt16(ds.Tables[0].Rows[0]["Amount"].ToString());










                Label1.Text = "Coupon Code " + Coupen.Text + " Applied Successfully";



                discountprice = (1500 * discount) / 100;

                Label3.Text = discountprice.ToString() + " ( " + discount + "% )";
                finalprice = 1500 - discountprice;

                Label4.Text = "Rs." + finalprice.ToString();
            }
            else
            {
                Label3.Text = "Invalid Coupon Code Applied : Not Exist";
            }
            
            
        }
    }
}
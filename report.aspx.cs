using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITPCrud
{
    public partial class report : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=GAYATH;Initial Catalog=ITP_Crud;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            ReportGridView();

        }

        void ReportGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("reportview", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            sqlCon.Close();
            reportview.DataSource = dtbl;
            reportview.DataBind();

        }
    }
}
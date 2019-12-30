using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.OleDb;
using System.Data;


namespace StudentManager
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // string connectionString = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source=" + 

           //     "C:\\Users\\Administrator\\Desktop\\1.xlsx" + "; Extended Properties=Excel 12.0";
            string str = "Provider=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + "C:\\Users\\Administrator\\Desktop\\test.xlsx"
                + ";Extended Properties='Excel 12.0;HDR=Yes;IMEX=1;'";
            OleDbConnection test = new OleDbConnection(str);
            test.Open();
            if (test.State == ConnectionState.Open)
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('SUCCESSFUL!!!')</script>");

        }
    }
}
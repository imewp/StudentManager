using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManager
{
    public partial class Template : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string name = Session["adminID"].ToString();
            //lblname.Text = Session["TrueName"].ToString();
            //if (name == "admin")              
            //    lblType.Text = "超级管理员";
            //else
            //    lblType.Text = "管理员";
        }
    }
}
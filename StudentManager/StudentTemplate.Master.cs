﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManager
{
    public partial class StudentTemplate : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = Session["studentName"].ToString();
            Image1.ImageUrl = "./img/studentphone/" + Session["phone"].ToString();
        }
    }
}
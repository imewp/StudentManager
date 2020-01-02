using Model;
using SQLDAL;
using System;
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
            DALstudent_info dal = new DALstudent_info();
            student_infoEntity stu = dal.Getstudent_info(int.Parse(Session["id"].ToString()));
            lblName.Text = Session["studentName"].ToString();
            Image1.ImageUrl = "./img/studentphone/" + stu.StudentPhoto;
        }
    }
}
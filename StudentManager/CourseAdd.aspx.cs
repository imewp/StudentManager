using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Model;
using SQLDAL;

namespace StudentManager
{
    public partial class CourseAdd : System.Web.UI.Page
    {
        DALcourse dal = new DALcourse();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtCourseId_TextChanged(object sender, EventArgs e)
        {
            string cid = txtCourseId.Text;
            IList<courseEntity> course = dal.GetcoursesbyCondition(" CourseId='" + cid + "'");
            if (course.Count>0)
                this.Page.RegisterStartupScript("", "<script>alert('该课程已存在！');</script>");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            courseEntity course = new courseEntity();
            course.CourseId = txtCourseId.Text;
            course.CourseName = txtCourseName.Text;
            course.CourseTeacher = txtCourseTeacher.Text;
            course.CourseInfo = txtCourseInfo.Text;
            course.CourseStudentNum = int.Parse(txtCourseStudentNum.Text);
            if(dal.Addcourse(course)>0)
            {
                this.Page.RegisterStartupScript("", "<script>alert('成功增加新课程！')</script>");
                Response.Redirect("Courselist.aspx");
            }
            else
                this.Page.RegisterStartupScript("", "<script>alert('增加新课程失败！');</script>");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtCourseId.Text = "";
            txtCourseName.Text = "";
            txtCourseTeacher.Text = "";
            txtCourseInfo.Text = "";
            txtCourseStudentNum.Text = "";
        }
    }
}
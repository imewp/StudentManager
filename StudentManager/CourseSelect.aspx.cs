using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SQLDAL;
using Model;

namespace StudentManager
{
    public partial class CourseSelect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["studentID"] == null)
                Response.Redirect("Login.aspx");
            if (!IsPostBack)
            {
                int id = int.Parse(Session["id"].ToString());
                BindSelectCourese();
                BindAllCourse();

            }
        }

        /// <summary>
        /// 加载已选课程
        /// </summary>
        public void BindSelectCourese()
        {
            DALstudent_course dal = new DALstudent_course();
            IList<student_courseEntity> scs = dal.Getstudent_coursesbyCondition("StudentId='" + Session["id"].ToString() + "'");
            if (scs.Count > 0)
            {
                this.Page.RegisterStartupScript("", "<script>alert(您已选择过课程！);</script>");
                Response.Redirect("CourseSelectList.aspx");
            }
            else
            {
                Button1.Enabled = true;
                Button2.Enabled = true;
                Button3.Enabled = true;
            }
        }

        //加载所有课程
        public void BindAllCourse()
        {
            DALcourse dal = new DALcourse();
            IList<courseEntity> courses = dal.Getcourses();
            lb1.DataSource = courses;
            lb1.DataTextField = "CourseName";
            lb1.DataValueField = "Id";
            lb1.DataBind();
        }

        /// <summary>
        /// 单击课程名时显示课程详细信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void lb1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DALcourse dal = new DALcourse();
            courseEntity course = dal.Getcourse(int.Parse(lb1.SelectedValue));
            Literal1.Text = "课程名称：" + course.CourseName + "；<br/>授课教师：" + course.CourseTeacher + "；<br/>课程简介：" + course.CourseInfo + "；<br/>限选人数：" + course.CourseStudentNum;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListItem li = lb1.SelectedItem;
            li.Selected = false;
            lb2.Items.Add(li);
            lb1.Items.Remove(li);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ListItem li = lb2.SelectedItem;
            li.Selected = false;
            lb1.Items.Add(li);
            lb2.Items.Remove(li);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DALstudent_course dal = new DALstudent_course();
            student_courseEntity sc = new student_courseEntity();
            if (lb2.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(您还未选择课程！);</script>");
            }
            else
            {
                foreach (ListItem li in lb2.Items)
                {
                    sc = new student_courseEntity();
                    sc.CourseId = li.Value;
                    sc.StudentId = Session["id"].ToString();
                    dal.Addstudent_course(sc);
                }
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert(选择课程完毕！);location.href='CourseSelectList.aspx'</script>");
            }
        }
    }
}
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
    public partial class CourseList : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//页面首次加载自动执行
            {
                if (Session["adminID"] == null)
                    Response.Redirect("Login.aspx");
                LoadData();
            }
        }

        /// <summary>
        /// 加载数据信息
        /// </summary>
        public void LoadData()
        {
            string conditon = string.Empty;
            conditon = "(CourseId is not null and CourseId<>' ')";
            if (!string.IsNullOrEmpty(course_id.Value))
            {
                conditon += " and cast(CourseId as char) like'%" + course_id.Value + "%'";
            }
            DALcourse dal = new DALcourse();
            IList<courseEntity> course = dal.GetcoursesbyCondition(conditon);//按照条件来查询数据
            GridView1.DataSource = course;
            GridView1.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseAdd.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DALcourse dal = new DALcourse();//定义针对admin_user表的操作对象
            string Id = GridView1.DataKeys[e.RowIndex].Value.ToString();//获取操作行数据的主键Id
            courseEntity course = dal.Getcourse(int.Parse(Id));
            course.CourseName = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();
            course.CourseTeacher = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
            course.CourseInfo = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim();
            course.CourseStudentNum = int.Parse(((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim());
            dal.Modcourse(course);
            GridView1.EditIndex = -1;
            LoadData();//重新加载数据，验证是否重置 
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadData();
        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }
    }
}
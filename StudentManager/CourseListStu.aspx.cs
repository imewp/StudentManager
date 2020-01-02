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
    public partial class CourseListStu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//页面首次加载自动执行
            {
                //if (Session["adminID"] == null)
                //    Response.Redirect("Login.aspx");
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

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LoadData();
        }
    }
}
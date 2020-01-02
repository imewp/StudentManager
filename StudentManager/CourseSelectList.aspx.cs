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
                int id = int.Parse(Session["id"].ToString());
                LoadData();
            }
        }

        /// <summary>
        /// 加载数据信息
        /// </summary>
        public void LoadData()
        {
            string conditon = string.Empty;
            conditon += " Id in (select CourseId from student_course where StudentId='" + Session["id"].ToString() + "')";
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
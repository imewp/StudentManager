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
    public partial class StudentInfo : System.Web.UI.Page
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
            conditon = "(StudentId is not null and StudentId<>' ' )";
            if (!string.IsNullOrEmpty(studentId.Value))
            {
                conditon += " and StudentId='" + studentId.Value + "'";
            }
            DALstudent_info dal = new DALstudent_info();
            IList<student_infoEntity> students = dal.Getstudent_infosbyCondition(conditon);//按照条件来查询数据
            GridView1.DataSource = students;
            GridView1.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentAdd.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LoadData();
        }
    }
}
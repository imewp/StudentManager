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
    public partial class StudentFind : System.Web.UI.Page
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
            conditon = "(StudentId is not null and StudentId<>' ' )";
            if (!string.IsNullOrEmpty(student.Value))
            {
                if(bsearch.Text=="学号")
                    conditon += " and cast(StudentId as char) like'%" + student.Value + "%'";
                else if(bsearch.Text=="姓名")
                    conditon += " and StudentName like'%" + student.Value + "%'";
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            bsearch.Text = "学号";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            bsearch.Text = "姓名";
        }

        /// <summary>
        /// 当创建GridView行时，将行号绑定给当前行的LinkButton按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton lb1 = (LinkButton)e.Row.FindControl("lb1");
                lb1.CommandArgument = e.Row.RowIndex.ToString();//为每个操作对象设定行号信息。

                LinkButton lb2 = (LinkButton)e.Row.FindControl("lb2");
                lb2.CommandArgument = e.Row.RowIndex.ToString();

                LinkButton lb3 = (LinkButton)e.Row.FindControl("lb3");
                lb3.CommandArgument = e.Row.RowIndex.ToString();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowindex = int.Parse(e.CommandArgument.ToString());//获取操作行的行号
            string Id = GridView1.DataKeys[rowindex].Value.ToString();//获取操作行数据的主键Id
            DALstudent_info dal = new DALstudent_info();//定义针对admin_user表的操作对象

            switch (e.CommandName)//获取操作对象的命令
            {
                case "edit"://调转到编辑页面
                    Response.Redirect("StudentEdit.aspx?id=" + Id);
                    break;
                case "del"://删除用户
                    dal.Delstudent_info(int.Parse(Id));
                    LoadData();//重新加载数据，验证是否成功删除
                    this.Page.RegisterStartupScript("", "<script>alert('该学生信息已删除！');</script>");
                    break;
                case "reset"://修改密码
                    student_infoEntity admin = dal.Getstudent_info(int.Parse(Id));
                    admin.StudentPassword = "123";
                    dal.Modstudent_info(admin);
                    LoadData();//重新加载数据，验证是否重置
                    this.Page.RegisterStartupScript("", "<script>alert('该学生的密码重置成功！');</script>");
                    break;

            }
        }
    }
}
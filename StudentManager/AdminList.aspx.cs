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
    public partial class AdminList : System.Web.UI.Page
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
            conditon = "(UserName is not null and UserName<>' ')";
            if (!string.IsNullOrEmpty(user_name.Value))
            {
                conditon += " and UserName like'%" + user_name.Value + "%'";
            }
            DALadmin_user dal = new DALadmin_user();
            IList<admin_userEntity> admins = dal.Getadmin_usersbyCondition(conditon);//按照条件来查询数据
            GridView1.DataSource = admins;
            GridView1.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAdd.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        { 
            DALadmin_user dal = new DALadmin_user();//定义针对admin_user表的操作对象
            string Id = GridView1.DataKeys[e.RowIndex].Value.ToString();//获取操作行数据的主键Id
            dal.Deladmin_user(int.Parse(Id));
            LoadData();//重新加载数据，验证是否成功删除
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            DALadmin_user dal = new DALadmin_user();//定义针对admin_user表的操作对象
            string Id = GridView1.DataKeys[e.RowIndex].Value.ToString();//获取操作行数据的主键Id
            admin_userEntity admin = dal.Getadmin_user(int.Parse(Id));
            admin.UserName = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[0])).Text.ToString().Trim();
            admin.TrueName = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();
            admin.LinkTelephone = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
            dal.Modadmin_user(admin);
            GridView1.EditIndex = -1;
            LoadData();//重新加载数据，验证是否重置 
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadData();
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
                LinkButton lbtnReset = (LinkButton)e.Row.FindControl("lbtnReset");
                lbtnReset.CommandArgument = e.Row.RowIndex.ToString();
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    ((LinkButton)e.Row.Cells[5].Controls[0]).Attributes.Add("onclick", "return confirm('确认删除吗?')");
                }
            }
        }

        /// <summary>
        ///行内命令被触发的时候执行
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowindex = int.Parse(e.CommandArgument.ToString());//获取操作行的行号
            string Id = GridView1.DataKeys[rowindex].Value.ToString();//获取操作行数据的主键Id
            DALadmin_user dal = new DALadmin_user();//定义针对admin_user表的操作对象
            if (e.CommandName == "reset")
            {
                admin_userEntity admin = dal.Getadmin_user(int.Parse(Id));
                admin.UserPassword  = "123456";
                dal.Modadmin_user(admin);
                LoadData();//重新加载数据，验证是否重置
                this.Page.RegisterStartupScript("a", "<script>alert('用户密码重置成功');</script>");
            }
        }
    }
}
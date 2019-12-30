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
    public partial class AdminAdd : System.Web.UI.Page
    {
        DALadmin_user dal = new DALadmin_user();//操作对象
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["adminID"] == null)
            //    Response.Redirect("Login.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            admin_userEntity admin = new admin_userEntity();//实体对象
            //赋值
            admin.LinkTelephone = txtLinkTelephone.Text;
            admin.LoginTimes = 1;
            admin.TrueName = txtTrueName.Text;
            admin.UserName = txtUserName.Text;
            admin.UserPassword = txtPwd.Text;
            if(txtPwd.Text.Trim()!=txtPwd_two.Text.Trim())
                this.Page.RegisterStartupScript("", "<script>alert('请重新确定密码！');</script>");
            else
            {
                if (dal.Addadmin_user(admin) > 0)//执行
                {
                    this.Page.RegisterStartupScript("", "<script>alert('用户新增成功！')</script>");
                    Response.Redirect("AdminList.aspx");
                }
                else
                    this.Page.RegisterStartupScript("", "<script>alert('用户新增失败！');</script>");
            }
            
        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {
            string name = txtUserName.Text;
            IList<admin_userEntity> admins = dal.Getadmin_usersbyCondition(" userName='" + name + "'");
            if (admins.Count > 0)
                this.Page.RegisterStartupScript("", "<script>alert('该账号已存在！');</script>");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
            txtPwd.Text = "";
            txtPwd_two.Text = "";
            txtTrueName.Text = "";
            txtLinkTelephone.Text = "";
        }
    }
}
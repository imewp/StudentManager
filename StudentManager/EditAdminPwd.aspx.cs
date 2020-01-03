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
    public partial class EditAdminPwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminID"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string pwd = Session["Pwd"].ToString();
            int id = int.Parse(Session["id"].ToString());
            DALadmin_user dal = new DALadmin_user();
            admin_userEntity admin = dal.Getadmin_user(id);
            if (pwd == txtjPwd.Text.Trim())
            {
                if (txtxPwd.Text.Trim() == txtrPwd.Text.Trim() && txtxPwd.Text.Trim() != "" && txtrPwd.Text.Trim() != "")
                {
                    admin.UserPassword = txtxPwd.Text.Trim();
                    if (dal.Modadmin_user(admin) > 0)
                    {
                        this.Page.RegisterStartupScript("", "<script>alert('密码修改成功！')</script>");
                        Response.Redirect("NewsManage.aspx");
                    }
                    else
                        this.Page.RegisterStartupScript("", "<script>alert('密码修改失败！');</script>");
                }
                else
                    this.Page.RegisterStartupScript("", "<script>alert('两次密码输入不一致！');</script>");
            }
            else
                this.Page.RegisterStartupScript("", "<script>alert('原密码不正确！');</script>");
        }
    }
}
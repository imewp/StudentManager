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
    public partial class EditStuPwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string pwd = Session["Pwd"].ToString();
            int id = int.Parse(Session["id"].ToString());
            DALstudent_info dal = new DALstudent_info();
            student_infoEntity stu = dal.Getstudent_info(id);
            if (pwd == txtjPwd.Text.Trim())
            {
                if (txtxPwd.Text.Trim() == txtrPwd.Text.Trim())
                {
                    stu.StudentPassword = txtxPwd.Text.Trim();
                    if (dal.Modstudent_info(stu) > 0)
                    {
                        this.Page.RegisterStartupScript("", "<script>alert('密码修改成功！')</script>");
                        Response.Redirect("HomeStu.aspx");
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
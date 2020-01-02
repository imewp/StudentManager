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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string name = login_username.Value;
            string pwd = login_password.Value;
            if (rbtnType.SelectedIndex == 0)
            {
                DALadmin_user dal = new DALadmin_user();
                IList<admin_userEntity> admin = dal.Getadmin_usersbyCondition(" userName='" + name + "' and userPassword='" + pwd + "'");
                if (admin.Count > 0)
                {
                    string trueName = admin[0].TrueName.ToString();
                    int id = admin[0].Id;
                    Session["adminID"] = name;
                    Session["TrueName"] = trueName;
                    Session["Pwd"] = pwd;
                    Session["id"] = id;
                    Response.Redirect("NewsManage.aspx");
                }
                else
                {
                    this.Page.RegisterStartupScript("", "<script>alert('登录失败！');</script>");
                }
            }
            else if (rbtnType.SelectedIndex == 1)
            {
                DALstudent_info dal = new DALstudent_info();
                IList<student_infoEntity> stus = dal.Getstudent_infosbyCondition(" studentId='" + name + "' and studentPassword='" + pwd + "'");
                if (stus.Count > 0)
                {
                    int id = stus[0].Id;
                    string phone = stus[0].StudentPhoto;
                    string trueName = stus[0].StudentName.ToString();
                    Session["studentID"] = name;
                    Session["StudentName"] = trueName;
                    Session["id"] = id;
                    Session["Pwd"] = pwd;
                    Session["phone"] = phone;
                    Response.Redirect("NewsList.aspx");
                }
                else
                {
                    this.Page.RegisterStartupScript("", "<script>alert('登录失败！');</script>");
                }
            }
        }
    }
}
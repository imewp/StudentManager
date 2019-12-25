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

        protected void submit_Click(object sender, EventArgs e)
        {
            string name = login_username.Value;
            string pwd = login_password.Value;

            if(rbtnType.SelectedIndex==0)
            {
                DALadmin_user dal = new DALadmin_user();
                IList<admin_userEntity> user = dal.Getadmin_usersbyCondition(" userName='" + name + "' and userPassword='" + pwd + "'");
                if (user.Count > 0)
                {
                    Response.Redirect("Test.aspx");
                }
                else
                {
                    this.Page.RegisterStartupScript("", "<script>alert('登录失败！');</script>");
                }
            }
           else if(rbtnType.SelectedIndex == 1)
            {

            }
        }
    }
}
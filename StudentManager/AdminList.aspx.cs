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
                conditon += " and UserName='" + user_name.Value + "'";
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

    }
}
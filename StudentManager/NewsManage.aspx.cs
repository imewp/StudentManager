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
    public partial class NewsManage : System.Web.UI.Page
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
            conditon = "(Title is not null and Title<>' ')";
            if (!string.IsNullOrEmpty(newsTitle.Value))
            {
                conditon += " and Title like'%" + newsTitle.Value + "%'";
            }
            DALnew dal = new DALnew();
            IList<newEntity> news = dal.GetnewsbyCondition(conditon);//按照条件来查询数据
            Repeater1.DataSource = news;
            Repeater1.DataBind();
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewsAdd.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LoadData();
        }
    }
}
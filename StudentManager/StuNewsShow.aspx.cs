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
    public partial class NewsShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                Bind(id);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        public void Bind(int id)
        {
            DALnew dal = new DALnew();
            newEntity news = dal.Getnews(id);
            lt1.Text = news.Title;
            lb1.Text = news.ReleaseTime.ToString();
            lt2.Text = news.Content;
            if (!string.IsNullOrEmpty(news.RelateFile))
            {
                lt3.Text = "附件：<a href='" + news.RelateFile + "'>单击下载附件</a>";
            }
        }
    }
}
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
    public partial class NewsAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminID"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            DALnew dal = new DALnew();
            newEntity news = new newEntity();
            news.Author = Session["adminID"].ToString();
            //news.Author = "admin";
            news.Content = content.Value;
            news.ReleaseTime = DateTime.Parse(txtReleaseTime.Text);
            news.Title = txtTitle.Text;
            if (FileUpload1.HasFile)
            {
                int startPosition = FileUpload1.FileName.LastIndexOf(".");//获取后缀名的起始位置
                string extName = FileUpload1.FileName.Substring(startPosition).ToLower();//获取后缀名
                string path = Server.MapPath("./File/");
                string fileName = DateTime.Now.ToString("yyyyMMddHHmmss") + extName;

                string saveFile = path + fileName;//实现上传的
                string showFile = "./File/" + fileName;//后期页面上显示的

                FileUpload1.SaveAs(saveFile);
                news.RelateFile = showFile;
            }
            dal.Addnews(news);
            this.Page.RegisterClientScriptBlock("", "<script>新闻发布成功！</script>");
            Response.Redirect("NewsManage.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtTitle.Text = "";
            txtReleaseTime.Text = "";
            content.Value = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SQLDAL;
using Model;

namespace StudentManager
{
    public partial class NewsEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"].ToString());
                    GetData(id);//获取数据
                }
                else
                    Response.Redirect("Login.aspx");
            }
        }
        /// <summary>
        /// 获取数据并展示
        /// </summary>
        /// <param name="id"></param>
        public void GetData(int id)
        {
            DALnew dal = new DALnew();
            newEntity news = dal.Getnews(id);
            ViewState["news"] = news;//在当前页缓存数据。
            txtTitle.Text = news.Title;
            txtReleaseTime.Text = news.ReleaseTime.ToString();
            content.Value = news.Content;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            DALnew dal = new DALnew();
            newEntity news = (newEntity)ViewState["news"];//获取缓存数据
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
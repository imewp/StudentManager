using Model;
using SQLDAL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManager
{
    public partial class StudentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["studentID"] == null)
                    Response.Redirect("Login.aspx");
                int id = int.Parse(Session["id"].ToString());
                GetData(id);
            }
        }

        /// <summary>
        /// 获取数据并展示
        /// </summary>
        /// <param name="id"></param>
        public void GetData(int id)
        {
            DALstudent_info dal = new DALstudent_info();
            student_infoEntity stu = dal.Getstudent_info(id);
            ViewState["stu"] = stu;//在当前页缓存数据。
            lblStuID.Text = stu.StudentId;
            txtStuName.Text = stu.StudentName;//加载显示数据
            Image1.ImageUrl = "img/studentphone/" + stu.StudentPhoto;
            txtStuNation.Text = stu.StudentNation;
            if (stu.StudentSex == "男")
                rdlSexMale.Checked = true;
            if (stu.StudentSex == "女")
                rdlSexFemale.Checked = true;
            txtStuTelehpone.Text = stu.StudentTelehpone;
            txtStuQQ.Text = stu.StudentQQ;
            txtStuClass.Text = stu.StudentClass;
            txtStuDormitory.Text = stu.StudentDormitory;
            txtStuAddress.Text = stu.StudentAddress;
            //将取回的数据在页面进行展示，可以修改的数据使用TextBox来展示，并提供修改。
            //通过按钮触发，实现将数据编辑保存的功能
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            DALstudent_info dal = new DALstudent_info();//操作对象
            student_infoEntity stu = (student_infoEntity)ViewState["stu"];//获取缓存数据
            stu.StudentName = txtStuName.Text;
            stu.StudentPhoto = imgUpLoad(fulStuPhoto);
            if (rdlSexMale.Checked)
                stu.StudentSex = "男";
            if (rdlSexFemale.Checked)
                stu.StudentSex = "女";
            stu.StudentNation = txtStuNation.Text;
            stu.StudentTelehpone = txtStuTelehpone.Text;
            stu.StudentQQ = txtStuQQ.Text;
            stu.StudentClass = txtStuClass.Text;
            stu.StudentDormitory = txtStuDormitory.Text;
            stu.StudentAddress = txtStuAddress.Text;
            if (dal.Modstudent_info(stu) > 0)
            {
                this.Page.RegisterStartupScript("", "<script>alert('信息修改成功！')</script>");
                Response.Redirect("StudentInfo.aspx");
            }
            else
                this.Page.RegisterStartupScript("", "<script>alert('信息修改失败！');</script>");
        }

        public string imgUpLoad(FileUpload fUpload)
        {
            string fileName = "";
            if (fUpload.HasFile)    //判断上传文件控件fUpload中是否有文件
            {
                string fileExt = Path.GetExtension(fUpload.FileName).ToLower();  //获取上传文件对话框中上传的文件的扩展名并转为小写格式
                string uploadFileExt = ".gif|.jpg|.png|.bmp";   //设置过滤的图片文件类型
                if (("|" + uploadFileExt + "|").IndexOf(("|" + fileExt + "|")) >= 0)  //比较上传文件的扩展名是否满足预设要求
                {
                    try
                    {
                        fileName = DateTime.Now.ToString("yyyymmddhhmmss").ToString() + fileExt;  //取学号构成上传后的文件名
                        fUpload.SaveAs(Server.MapPath("./img/studentphone/") + fileName);  //保存上传文件到指定路径\
                    }
                    catch (Exception ex)
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('" + ex.Message + "')</script>");
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('请上传gif|jpg|png|bmp的文件')</script>");
                }
            }
            return fileName;  //返回上传后的文件名
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeStu.aspx");
        }
    }
}
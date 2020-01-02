using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Model;
using SQLDAL;

namespace StudentManager
{
    public partial class StudentAdd : System.Web.UI.Page
    {
        DALstudent_info dal = new DALstudent_info();//操作对象
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminID"] == null)
                Response.Redirect("Login.aspx");
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
                        fileName = DateTime.Now.ToString("yyyymmddhhmmss").ToString() + fileExt;  //取当前日期构成上传后的文件名
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

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            student_infoEntity stu = new student_infoEntity();//实体对象
            stu.StudentId = txtStuID.Text.Trim();
            stu.StudentPassword = "123";
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
            if (dal.Addstudent_info(stu) > 0)
            {
                this.Page.RegisterStartupScript("", "<script>alert('学生信息添加成功！')</script>");
                Response.Redirect("StudentFind.aspx");
            }
            else
                this.Page.RegisterStartupScript("", "<script>alert('学生信息添加失败！');</script>");


            //if (dal.Addadmin_user(admin) > 0)//执行
            //{
            //    this.Page.RegisterStartupScript("", "<script>alert('用户新增成功！')</script>");
            //    Response.Redirect("AdminList.aspx");
            //}
            //else
            //    this.Page.RegisterStartupScript("", "<script>alert('用户新增失败！');</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Model;
using SQLDAL;

using System.IO;

using System.Data.OleDb;
using System.Data;

using System.Text;

namespace StudentManager
{
    public partial class StudentFind : System.Web.UI.Page
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
            conditon = "(StudentId is not null and StudentId<>' ' )";
            if (!string.IsNullOrEmpty(student.Value))
            {
                if(bsearch.Text=="学号")
                    conditon += " and cast(StudentId as char) like'%" + student.Value + "%'";
                else if(bsearch.Text=="姓名")
                    conditon += " and StudentName like'%" + student.Value + "%'";
            }
            DALstudent_info dal = new DALstudent_info();
            IList<student_infoEntity> students = dal.Getstudent_infosbyCondition(conditon);//按照条件来查询数据
            GridView1.DataSource = students;
            GridView1.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentAdd.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            bsearch.Text = "学号";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            bsearch.Text = "姓名";
        }

        /// <summary>
        /// 当创建GridView行时，将行号绑定给当前行的LinkButton按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton lb1 = (LinkButton)e.Row.FindControl("lb1");
                lb1.CommandArgument = e.Row.RowIndex.ToString();//为每个操作对象设定行号信息。

                LinkButton lb2 = (LinkButton)e.Row.FindControl("lb2");
                lb2.CommandArgument = e.Row.RowIndex.ToString();

                LinkButton lb3 = (LinkButton)e.Row.FindControl("lb3");
                lb3.CommandArgument = e.Row.RowIndex.ToString();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowindex = int.Parse(e.CommandArgument.ToString());//获取操作行的行号
            string Id = GridView1.DataKeys[rowindex].Value.ToString();//获取操作行数据的主键Id
            DALstudent_info dal = new DALstudent_info();//定义针对admin_user表的操作对象

            switch (e.CommandName)//获取操作对象的命令
            {
                case "edit"://调转到编辑页面
                    Response.Redirect("StudentEdit.aspx?id=" + Id);
                    break;
                case "del"://删除用户
                    dal.Delstudent_info(int.Parse(Id));
                    LoadData();//重新加载数据，验证是否成功删除
                    this.Page.RegisterStartupScript("", "<script>alert('该学生信息已删除！');</script>");
                    break;
                case "reset"://修改密码
                    student_infoEntity admin = dal.Getstudent_info(int.Parse(Id));
                    admin.StudentPassword = "123";
                    dal.Modstudent_info(admin);
                    LoadData();//重新加载数据，验证是否重置
                    this.Page.RegisterStartupScript("", "<script>alert('该学生的密码重置成功！');</script>");
                    break;

            }
        }

        /// <summary>
        /// 导入Excel文件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnImport_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                int startPosition = FileUpload1.FileName.LastIndexOf(".");//获取后缀名的起始位置
                string extName = FileUpload1.FileName.Substring(startPosition).ToLower();//获取后缀名
                if (startPosition >= 0)
                {
                    if (extName.Equals(".xlsx") || extName.Equals(".xls"))
                    {
                        string path = Server.MapPath("./File/");
                        if (!Directory.Exists(path))
                        {
                            Directory.CreateDirectory(path);
                        }
                        string saveFile = path + DateTime.Now.ToString("yyyyMMddHHmmss") + extName;
                        FileUpload1.SaveAs(saveFile);//上传文件到指定位置
                        string str = "Provider=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + saveFile + ";Persist Security Info=False;Extended Properties='Excel 12.0;HDR=Yes;IMEX=1;'";
                        OleDbConnection oledbconn = new OleDbConnection(str);
                        //新建ole命令对象
                        oledbconn.Open();
                        ///因为需要在运行的过程中，增加数据列，并对数据进行修正。
                        ///所以，需要首先读入数据进入内存datatable中然后进行操作。
                        OleDbCommand commandSourceData = new OleDbCommand("SELECT * FROM [Sheet1$]", oledbconn);
                        OleDbDataAdapter oleda = new OleDbDataAdapter();
                        oleda.SelectCommand = commandSourceData;
                        DataTable tb = new DataTable();
                        oleda.Fill(tb);
                        oledbconn.Close();
                        //数据规整部分。
                        int successNumber = 0;
                        int failureNumber = 0;
                        //数据处理
                        StringBuilder resultsb = new StringBuilder();
                        DALstudent_info dal = new DALstudent_info();
                        foreach (DataRow dr in tb.Rows)
                        {
                            try
                            {
                                //取值
                                string sNo = dr["sNo"].ToString().Trim();
                                string pwd = dr["pwd"].ToString().Trim();
                                string name = dr["name"].ToString().Trim();
                                string photo = dr["photo"].ToString().Trim();
                                string sex = dr["sex"].ToString().Trim();
                                string nation = dr["nation"].ToString().Trim();
                                string tel = dr["tel"].ToString().Trim();
                                string sQQ = dr["sQQ"].ToString().Trim();
                                string sClass = dr["sClass"].ToString().Trim();
                                string dormitory = dr["dormitory"].ToString().Trim();
                                string address = dr["address"].ToString().Trim();
                                student_infoEntity student = new student_infoEntity();

                                //赋值
                                student.StudentId = sNo;
                                student.StudentPassword = pwd;
                                student.StudentName = name;
                                student.StudentPhoto = photo;
                                student.StudentSex = sex;
                                student.StudentNation = nation;
                                student.StudentTelehpone = tel;
                                student.StudentQQ = sQQ;
                                student.StudentClass = sClass;
                                student.StudentDormitory = dormitory;
                                student.StudentAddress = address;
                                dal.Addstudent_info(student);//添加
                                successNumber++;
                            }
                            catch (Exception Error)
                            {
                                resultsb.Append(dr["sNo"].ToString().Trim());
                                resultsb.Append("导入失败；原因：");
                                resultsb.Append(Error.Message);
                                resultsb.Append("\r\n");
                                failureNumber++;
                            }
                        }//endforeach
                        ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('" + successNumber + "条信息成功导入！\r\n" + failureNumber + "条信息无法导入！\r\n')</script>");
                        //LoadData();
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('选定的文件不是合法的Excel文件！')</script>");
                    }
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('没有选定要导入的文件！')</script>");
            }
        }
    }
}
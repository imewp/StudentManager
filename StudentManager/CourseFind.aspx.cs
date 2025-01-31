﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SQLDAL;
using Model;

namespace StudentManager
{
    public partial class CourseFind1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["studentID"] == null)
                    Response.Redirect("Login.aspx");
                BindCourse();
            }
        }

        /// <summary>
        /// DropDownList1加载已有的全部课程名称
        /// </summary>
        protected void BindCourse()
        {

            string conditon = string.Empty;
            conditon = " StudentId='" + Session["id"] + "'";
            DALstudent_course dal = new DALstudent_course();
            IList<student_courseEntity> course = dal.Getstudent_coursesbyCondition(conditon);//按照条件来查询数据
            GridView1.DataSource = course;
            GridView1.DataBind();



            //string condition = string.Empty;
            //DropDownList1.Items.Clear();//避免重复加载
            
            //condition = " id in (select CourseId from student_course where StudentId='" + Session["id"] + "')";
            //DALcourse dal = new DALcourse();
            //IList<courseEntity> courses = dal.GetcoursesbyCondition(condition);
            //DropDownList1.DataSource = courses;
            //DropDownList1.DataTextField = "CourseName";
            //DropDownList1.DataValueField = "Id";
            //DropDownList1.DataBind();
            //DropDownList1.Items.Insert(0, new ListItem("请选择要查询的课程", "0"));
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DALstudent_course dal = new DALstudent_course();
            //IList<student_courseEntity> scs = dal.Getstudent_coursesbyCondition(" CourseId='" + DropDownList1.SelectedValue + "'");
            //if (scs != null)
            //    Label1.Text = "您该门课程的成绩为：" + scs[0].CourseScore.ToString();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //翻译课程号->名称
                DALcourse dalc = new DALcourse();
                courseEntity c = dalc.Getcourse(int.Parse(e.Row.Cells[0].Text));
                if (c != null)
                    e.Row.Cells[0].Text = c.CourseName;
            }
        }
    }
}
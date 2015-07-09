using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_Center : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
        
        }
    }
    protected string DisplaySexOnGrade(Int32 StuNum)
    {
        string sexStr = "", gradeStr = "";
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "select Sex, Grade from Student where StudentID = " + StuNum + "";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        SqlDataReader dr = sqlComm.ExecuteReader();
        try
        {
            while (dr.Read())
            {
                sexStr = dr["Sex"].ToString().Trim();
                gradeStr = dr["Grade"].ToString().Trim();
            } dr.Close();
        }
        catch (SqlException ex)
        {
            Response.Write(ex.ToString());
        }
        finally
        {
            sqlConn.Close();
        }

        return (gradeStr + "(" + sexStr + ")");


    }

    protected string DisplaySexOnTeacher(Int32 StuNum)
    {
        string teasexStr = "", reqteaStr = "";
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "select RequestSex, RequestTeacher from Student where StudentID = " + StuNum + "";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        SqlDataReader dr = sqlComm.ExecuteReader();
        try
        {
            while (dr.Read())
            {
                teasexStr = dr["RequestSex"].ToString().Trim();
                reqteaStr = dr["RequestTeacher"].ToString().Trim();
            } dr.Close();
        }
        catch (SqlException ex)
        {
            Response.Write(ex.ToString());
        }
        finally
        {
            sqlConn.Close();
        }

        return (reqteaStr + "(" + teasexStr + ")");


    }
    protected string DisplayOnState(Int32 StuNum)
    {
        bool arrageBit = false;
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "select IsArrange from Student where StudentID = " + StuNum + "";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        SqlDataReader dr = sqlComm.ExecuteReader();
        try
        {
            while (dr.Read())
            {
                arrageBit = Convert.ToBoolean(dr["IsArrange"]);
            } dr.Close();
        }
        catch (SqlException ex)
        {
            Response.Write(ex.ToString());
        }
        finally
        {
            sqlConn.Close();
        }
        if (arrageBit == false)
        { 
            return ("可安排");
        }
        else return ("已预订");
        


    }
    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sqlStr = "";
        string SubStr = DropDownList1.SelectedValue.ToString().Trim();
        string GradeStr = DropDownList2.SelectedValue.ToString().Trim();
        string SexStr = DropDownList3.SelectedValue.ToString().Trim();
        string AreaStr = DropDownList4.SelectedValue.ToString().Trim();

        if (SubStr != "不限")
        {
            sqlStr = sqlStr + "TeachedSubject like '%" + SubStr + "%'";
        }
        if (GradeStr != "不限")
        {
            if (SubStr == "不限")
            {
                sqlStr = sqlStr + "Grade = '"+GradeStr+"'";
            }
            else
            {
                sqlStr = sqlStr + "and Grade = '" + GradeStr + "'";
            }
        }
        if (SexStr != "不限")
        {
            if (SubStr == "不限" && GradeStr == "不限")
            {
                sqlStr = sqlStr + "Sex = '" + SexStr + "'";
            }
            else
            {
                sqlStr = sqlStr + "and Sex = '" + SexStr + "'";
            }
        }
        if (AreaStr != "不限")
        {
            if (GradeStr == "不限" && SubStr == "不限" && SexStr == "不限")
            {
                sqlStr = sqlStr + "Area = '淮南" + AreaStr + "'";
            }
            else
            {
                sqlStr = sqlStr + "and Area = '淮南" + AreaStr + "'";
            }
        }
        SqlDataSource1.FilterExpression = sqlStr;
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //获取一个GridViewRow对象 该对象表示GridView控件中的底部页导航行
        GridViewRow pagerRow = GridView1.BottomPagerRow;
        //通过FindControl方法访问GridView控件PagerTemplate模板
        //底部页导航中定义的TextBox控件

        TextBox pageText = (TextBox)pagerRow.Cells[0].FindControl("TextBox1");
        if (pageText.Text != "" && Convert.ToInt32(pageText.Text) <= GridView1.PageCount && Convert.ToInt32(pageText.Text) > 0)
        {
            GridView1.PageIndex = Convert.ToInt32(pageText.Text) - 1;
        }
        else
        {
            Response.Write("<script>alert('请重新输入！')</script>");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
    }

}
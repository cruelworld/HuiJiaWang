using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Teacher_Center : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected string DisplaySexOnName(Int32 TeaNum)
    {
        string teaStr = "", sexStr = "";
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "select TureName, Sex from Teacher where TeacherID = "+TeaNum+"";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        SqlDataReader dr = sqlComm.ExecuteReader();
        try
        {
            while (dr.Read())
            {
                teaStr = dr["TureName"].ToString().Trim();
                sexStr = dr["Sex"].ToString().Trim();
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
        return (teaStr.Substring(0,1) + "教员" + "("+sexStr+")");
    }

    protected string DisplayMajorOnSchool(Int32 TeaNum)
    {
        string majorStr = "", schoolStr = "";
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "select School, Major from Teacher where TeacherID = " + TeaNum + "";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        SqlDataReader dr = sqlComm.ExecuteReader();
        try
        {
            while (dr.Read())
            {
                majorStr = dr["Major"].ToString().Trim();
                schoolStr = dr["School"].ToString().Trim();
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

        return (schoolStr + majorStr);


    }

    protected string DisplayImage(Int32 TeaNum)
    {
        bool signBit = false;
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "select IsSign from Teacher where TeacherID = " + TeaNum + "";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        SqlDataReader dr = sqlComm.ExecuteReader();
        try
        {
            while (dr.Read())
            {
                signBit =Convert.ToBoolean(dr["IsSign"]);
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

        if (signBit == false)
        {
            return "images/sign01.png";
        }
        else return "images/sign02.png";


    }
    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }

    // 搜索功能
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sqlStr = "";        
        string SubStr = DropDownList1.SelectedValue.ToString().Trim();
        string AreaStr = DropDownList2.SelectedValue.ToString().Trim();
        string SchoolStr = DropDownList3.SelectedValue.ToString().Trim();
        string SexStr = DropDownList4.SelectedValue.ToString().Trim();
        string RoleStr = DropDownList5.SelectedValue.ToString().Trim();

        if (SubStr != "不限")
        {
                sqlStr = sqlStr + "TeachingSubject like '%" + SubStr + "%'";
        }
        if (AreaStr != "不限")
        {
            if (SubStr == "不限")
            {
                sqlStr = sqlStr + "TeachingArea like '%" + AreaStr + "%'";
            }
            else
            {
                sqlStr = sqlStr + "and TeachingArea like '%" + AreaStr + "%'";
            }
        }
        if (SchoolStr != "不限")
        {
            if (SubStr == "不限" && AreaStr == "不限")
            {
                sqlStr = sqlStr + "School = '" + SchoolStr + "'";
            }
            else
            {
                sqlStr = sqlStr + "and School = '" + SchoolStr + "'";
            }
        }
        if (SexStr != "不限")
        {
            if (AreaStr == "不限" && SubStr == "不限" && SchoolStr == "不限")
            {
                sqlStr = sqlStr + "Sex = '" + SexStr + "'";
            }
            else
            {
                sqlStr = sqlStr + "and Sex = '" + SexStr + "'";
            }
        }
        if (RoleStr != "不限")
        {
            if (SexStr == "不限" && AreaStr == "不限" && SchoolStr == "不限" && SubStr == "不限")
            {
                sqlStr = sqlStr + "Role = '" + RoleStr + "'";
            }
            else
            {
                sqlStr = sqlStr + "and Role = '" + RoleStr + "'";
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
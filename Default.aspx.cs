using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/Signup.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string userStr = TextBox1.Text;
        string pwStr = TextBox2.Text;
        Session["_UserStr"] = userStr;
        Session["_pwStr"] = pwStr;
        bool teaBit = Check(userStr, pwStr, "Teacher");
        bool stuBit = Check(userStr, pwStr, "Student");
        bool admBit = Check(userStr, pwStr, "Admin");

        if (teaBit && stuBit && admBit)
        {
            Response.Write("<script>alert('用户名或密码错误！');</script>");
            return;
        }
        else if (teaBit && stuBit && !admBit)
        {
            Response.Redirect("~/manage/main.html");
        }
        else if (!teaBit && stuBit && admBit)
        {

            SqlConnection sqlConn = GetConnection();
            string sqlStr = "update Teacher set LoginTime = '" + DateTime.Now.ToString().Trim() + "' where UserName = '" + userStr + "'";
            sqlConn.Open();
            SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
            sqlComm.ExecuteNonQuery();
            sqlConn.Close();
            Response.Redirect("~/Default.aspx");
        }
        else if (teaBit && !stuBit && admBit)
        {

            SqlConnection sqlConn = GetConnection();
            string sqlStr = "update Student set LoginTime = '" + DateTime.Now.ToString().Trim() + "' where UserName = '" + userStr + "'";
            sqlConn.Open();
            SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
            sqlComm.ExecuteNonQuery();
            sqlConn.Close();
            Response.Redirect("~/Default.aspx");
        }
    }
    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }

    public bool Check(string username, string password, string table)
    {
        SqlConnection sqlConn = GetConnection();
        sqlConn.Open();
        string sql = "select * from " + table + " where UserName = '" + username + "' and Password = '" + password + "'";
        SqlCommand cmd = new SqlCommand(sql, sqlConn);
        try
        {
            int count = Convert.ToInt32(cmd.ExecuteReader().HasRows);
            sqlConn.Close();
            if (count > 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            return false;
        }
    }

    protected string DisplaySexOnName(Int32 TeaNum)
    {
        string teaStr = "", sexStr = "";
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "select TureName, Sex from Teacher where TeacherID = " + TeaNum + "";
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
        return (teaStr.Substring(0, 1) + "教员" + "(" + sexStr + ")");
    }

    protected string DisplaySexOnNameTea(Int32 TeaNum)
    {
        string teaStr = "", sexStr = "";
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "select TureName, Sex from Teacher where TeacherID = " + TeaNum + "";
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
        return (teaStr.Substring(0, 1) + "老师" + "(" + sexStr + ")");
    }
}
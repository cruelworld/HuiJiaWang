using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class count_person_addgly : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string UserName = TextBox1.Text.ToString().Trim();
        string Password = TextBox3.Text.ToString().Trim();
        string AdmPw = TextBox4.Text.ToString().Trim();
        if (Password == "")
        {
            Response.Write("<script>alert('密码不能为空！');</script>");
            return;
        }
        if (AdmPw == "123456")
        {
            SqlConnection sqlConn = GetConnection();
            string sqlStr = "insert into Admin values('" + UserName + "','" + Password + "')";
            sqlConn.Open();
            SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
            sqlComm.ExecuteNonQuery();

            sqlConn.Close();

            Response.Write("<script>alert('添加成功！');</script>");
        }
        Response.Write("<script>alert('添加失败！');</script>");
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox3.Text = "";
        TextBox2.Text = "";
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        bool result1 = CheckUserName(TextBox1.Text.Trim(), "Student");
        bool result2 = CheckUserName(TextBox1.Text.Trim(), "Teacher");
        bool result3 = CheckUserName(TextBox1.Text.Trim(), "Admin");
        if (result1 && result2 && result3)
        {
            Label1.Text = "可以使用！";
        }
        else
        {
            Label1.Text = "换用户名！";

        }
    }

    public bool CheckUserName(string username, string table)
    {
        SqlConnection sqlConn = GetConnection();
        sqlConn.Open();
        string sql = "select * from " + table + " where UserName = '" + username + "'";
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
}
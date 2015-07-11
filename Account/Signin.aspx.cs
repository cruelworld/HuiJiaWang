using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_Signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            userName.Text = "";
            password.Text = "";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("~/teacher_Center.aspx");
        string userStr = userName.Text;
        string pwStr = password.Text;
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    // 用户名文本框改变时的验证
    protected void UserName_TextChanged(object sender, EventArgs e)
    {
        if (userName.Text == "")
        {
            Valider1.Text = "请输入用户名";
        }
        else
        {
            Valider1.Text = "";
        }
    }

    // 密码文本框改变时的验证
    protected void Password_TextChanged(object sender, EventArgs e)
    {

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
}

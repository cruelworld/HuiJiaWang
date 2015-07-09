using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class count_person_xgpw : System.Web.UI.Page
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
        if (Session["_UserStr"] == null)
        {
            Response.Write("<script>alert('修改失败！还未登陆');location = '../../Account/Signin.aspx'</script>");
            return;
        }
        string userStr = Session["_UserStr"].ToString().Trim();
        string newPW = TextBox3.Text.ToString().Trim();
        string Password = TextBox1.Text.ToString().Trim();
        string AdmStr = TextBox4.Text.ToString().Trim();
        bool AdmBit = Check(userStr, Password, "Admin");

        if (!AdmBit && AdmStr == "123456")
        {
            SqlConnection sqlConn = GetConnection();
            sqlConn.Open();
            string sqlStr = "update Admin set Password = '" + newPW + "' where UserName = '" + userStr + "'";
            SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
            sqlComm.ExecuteNonQuery();
            sqlConn.Close();

            Response.Write("<script>alert('修改成功！');</script>");
        }
        Response.Write("<script>alert('修改失败！')</script>");
       
        

       

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox3.Text = "";
        TextBox2.Text = "";
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
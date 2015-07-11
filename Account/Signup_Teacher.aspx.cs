using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_Signup_Teacher : System.Web.UI.Page
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

    public bool Check(string username, string table)
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string _UserName = TextBox1.Text.ToString().Trim();
        string _Password = TextBox3.Text.ToString().Trim();
        Session["UserName"] = _UserName;
        Session["Password"] = _Password;
        if (CheckBox1.Checked || Label1.Text == "此用户名可用")
        {
            Response.Redirect("Signup_Tech_Step2.aspx");
            
        }
        else Response.Write("<script>alert('注册有误，不能进行下一步操作！');location = 'Signup_Teacher.aspx'</script>"); 
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        if (TextBox1.Text.ToString().Trim() == "")
        {
            Label1.Text = "用户名不能为空！";
            
        }
        string userStr = TextBox1.Text.ToString().Trim();
        bool teaBit = Check(userStr, "Teacher");
        bool stuBit = Check(userStr, "Student");
        bool admBit = Check(userStr, "Admin");
        if (teaBit && stuBit && admBit)
        {
            Label1.Text = "此用户名可用";
           

        }
        else
        {
            Label1.Text = "此用户名已经注册，请更改用户名"; 
        }
        
    }
}
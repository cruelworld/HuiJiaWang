using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_FindPassword : System.Web.UI.Page
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
        string _TureName = TextBox1.Text.ToString().Trim();
        string _IDCard = TextBox2.Text.ToString().Trim();
        string _Phone  = TextBox3.Text.ToString().Trim();
        string _Email  = TextBox4.Text.ToString().Trim();
        string _LostTime = DateTime.Now.ToString().Trim();

        SqlConnection sqlConn = GetConnection();
        string sqlStr = "insert into FindPw(TureName, IDCard, Phone, Email, LostTime) values('" + _TureName + "','" + _IDCard + "','" + _Phone + "','" + _Email + "','" + _LostTime+ "')";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        sqlComm.ExecuteNonQuery();
        sqlConn.Close();

        Response.Write("<script>alert('发送成功，我们将在6小时之内核实后,将密码以您填写的联系方式发给您！');location = '../Default.aspx'</script>");
    }
}
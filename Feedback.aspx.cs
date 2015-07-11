using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string _Opinion = TextBox1.Text.ToString().Trim();
        string _TureName = TextBox2.Text.ToString().Trim();
        string _Phone = TextBox3.Text.ToString().Trim();
        string _WriteTime = DateTime.Now.ToString().Trim();
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "insert into Opinion(Opinion, Name, Phone, WriteTime) values('" + _Opinion + "','" + _TureName + "','" + _Phone + "','" + _WriteTime + "')";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        sqlComm.ExecuteNonQuery();
        sqlConn.Close();

        Response.Write("<script>alert('提交成功!');location = 'Default.aspx'</script>");

    }

    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Order_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Int32 _StuId = Convert.ToInt32(Session["StuId"]);
            Label1.Text = "S"+_StuId.ToString().Trim();
        }
        
    }

    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }

    public bool Check(string teaid, string table)
    {
        SqlConnection sqlConn = GetConnection();
        sqlConn.Open();
        string sql = "select * from " + table + " where TeacherID = '" +teaid+ "'";
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
        
        string _StudentID = Convert.ToInt32(Session["StuId"]).ToString().Trim();
        string _TeacherID = TextBox1.Text.ToString().Trim();
        string _TureName = TextBox4.Text.ToString().Trim();
        string _Phone = TextBox2.Text.ToString().Trim();
        string _TeachingArea = TextBox5.Text.ToString().Trim();
        string _Description = TextBox3.Text.ToString().Trim();
        string _OrderTime = DateTime.Now.ToString().Trim();
        if (Check(_TeacherID, "Teacher"))
        {
            Response.Write("<script>alert('预定失败， 注册后可以预定学员！'); location = 'Account/Signup_Teacher.aspx'</script>");
        }
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "insert into Order_Student(StudentID, TeacherID, TeacherName, Phone, TeachingArea,Description, OrderTime) values('" + _StudentID + "','" + _TeacherID + "','" + _TureName + "','" + _Phone + "','" + _TeachingArea + "','"+_Description+"','" + _OrderTime + "')";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        sqlComm.ExecuteNonQuery();
        sqlConn.Close();

        Response.Write("<script>alert('预定成功，如果填写的信息无误，我们将在一个工作日内和您联系！'); location = 'Student_Center.aspx'</script>");
    }
}
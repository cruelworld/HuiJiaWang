using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Book_Teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string _TeacherID= Convert.ToInt32(Session["TeaId"]).ToString().Trim();
        Label1.Text = _TeacherID;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string _TeacherID = Convert.ToInt32(Session["TeaId"]).ToString().Trim();
        string _StudentName = TextBox1.Text.ToString().Trim();
        string _Phone = TextBox2.Text.ToString().Trim();
        string _TeachingArea = DropDownList1.SelectedValue;
        string _Description = TextBox3.Text.ToString().Trim();
        string _OrderTime = DateTime.Now.ToString().Trim();
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "insert into Book_Teacher(TeacherID,StudentName, Phone, TeachedArea, OrderTime) values('" + _TeacherID + "','" + _StudentName + "','" + _Phone + "','淮南" + _TeachingArea + "','" + _OrderTime + "')";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        sqlComm.ExecuteNonQuery();
        sqlConn.Close();

        Response.Write("<script>alert('预定成功，如果填写的信息无误，我们将在一个工作日内和您联系！'); location = 'Teacher_Center.aspx'</script>");
    }

    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }

}
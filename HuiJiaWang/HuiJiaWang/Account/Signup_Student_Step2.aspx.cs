using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_Signup_Student : System.Web.UI.Page
{
    bool isRegister = true;
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
        string _UserName = Session["UserName"].ToString().Trim();
        string _Password = Session["Password"].ToString().Trim();
        string _TureName = TextBox4.Text.ToString().Trim();
        string _Sex = RadioButtonList1.SelectedValue;
        string _Grade = DropDownList1.SelectedValue;

        string _Phone = TextBox5.Text.ToString().Trim();

        string _Province = DropDownList2.SelectedValue;
        string _Area = DropDownList3.SelectedValue;
       

        string _QQ = TextBox6.Text.ToString().Trim();
        string _Email = TextBox7.Text.ToString().Trim();
        string _TeachedSubject = "";
        int i;
        if (ListBox2.Items.Count == 0)
        {
            Response.Write("<script>alert('很抱歉！文件不能被上传';location = 'Signup_Student.aspx');</script>");
        }
        else
        {
            for (i = 0; i < ListBox2.Items.Count - 1; i++)
            {
                _TeachedSubject = _TeachedSubject + ListBox2.Items[i].Text + ',';
            }
            _TeachedSubject = _TeachedSubject + ListBox2.Items[i].Text;
        }
        
        
        string _TeachedTime = TextBox9.Text.ToString().Trim();
        string _TeachedWay = RadioButtonList2.SelectedValue;
        string _Salary = TextBox8.Text.ToString().Trim();
        string _RequestSex = DropDownList5.SelectedValue;
        string _RequestTeacher = TextBox10.Text.ToString().Trim();
        string _Description = TextBox11.Text.ToString().Trim();
        string _TrafficPay = RadioButtonList3.SelectedValue;
        string _RegisterTime = DateTime.Now.ToString().Trim();
        string _LoginTime = _RegisterTime;
        ///上传图片
        ///
        //Boolean fileOK = false;
        //string fileExtension = "";
        //string path = Server.MapPath("~/images/person/");
        //if (FileUpload1.HasFile)
        //{
        //    fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
        //    string[] allowedExtensions = { ".jpg", ".png", ".jpeg" };
        //    for (i = 0; i < allowedExtensions.Length; i++)
        //    {
        //        if (fileExtension == allowedExtensions[i])
        //        {
        //            fileOK = true;
        //        }
        //    }
        //}
        //if (FileUpload1.PostedFile.ContentLength > 204800)
        //{
        //    fileOK = false;
        //}
        //if (fileOK)
        //{
        //    try
        //    {
        //        FileUpload1.PostedFile.SaveAs(path + Convert.ToDateTime(_RegisterTime).ToString("yyyyMMddHHmmss") + fileExtension);

        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('很抱歉！文件不能被上传。');</script>");
        //    }
        //}
        //else
        //{
        //    Response.Write("<script>alert('很抱歉！文件类型不匹配或文件大小超过200K');</script>");
        //}

        if (isRegister)
        {
            SqlConnection sqlConn = GetConnection();
            sqlConn.Open();
            string SqlStr = "insert Student(UserName,Password,TureName,Sex,Grade,Phone,Province,Area,QQ ,Email,TeachedSubject,TeachedTime,RequestSex,TeachedWay,Salary,TrafficPay,RequestTeacher,Description, RegisterTime, LoginTime) values ('" + _UserName + "','" + _Password + "','" + _TureName + "','" + _Sex + "','" + _Grade + "','" + _Phone  + "', '" + _Province + "', '" + _Area + "','" + _QQ + "','" + _Email + "','" + _TeachedSubject + "','" + _TeachedTime + "','" + _RequestSex + "','" + _TeachedWay + "','" + _Salary + "','" + _TrafficPay + "','" + _RequestTeacher + "','" + _Description + "', '" + _RegisterTime + "', '" + _LoginTime + "')";
            // + "','" + (FileUpload1.FileName)
            SqlCommand sqlComm = new SqlCommand(SqlStr, sqlConn);
            sqlComm.ExecuteNonQuery();
            sqlConn.Close();
            Response.Write("<script>alert('注册成功！');location = '../Default.aspx'</script>");
        }
        else Response.Write("<script>alert('注册失败！');location = '../Default.aspx'</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string selectStr = ListBox1.SelectedValue;
        for (int i = 0; i < ListBox2.Items.Count; i++)
        {
            if (selectStr == ListBox2.Items[i].Text)
            {
                return;
            }
        }
        ListBox2.Items.Add(selectStr);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        ListBox2.Items.Remove(ListBox2.SelectedItem);
    }
   
    public bool Check(string username, string table)
    {
        SqlConnection sqlConn = GetConnection();
        sqlConn.Open();
        string sql = "select * from "+table+" where UserName = '" + username + "'";
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
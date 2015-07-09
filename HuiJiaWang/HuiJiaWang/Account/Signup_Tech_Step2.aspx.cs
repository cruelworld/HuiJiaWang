using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_Signup_Tech_Step2 : System.Web.UI.Page
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

    protected void Redirect(object sender, EventArgs e)
    {
        //Response.Redirect('~/Account/');
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string _UserName = Session["UserName"].ToString();
        string _Password = Session["Password"].ToString();
        string _TureName = TextBox1.Text.ToString().Trim();
        string _Sex = RadioButtonList1.SelectedValue;
        string _Role = DropDownList1.SelectedValue;
        string _Grade = DropDownList2.SelectedValue;
        string _Major = TextBox2.Text.ToString().Trim();
        string _School = TextBox3.Text.ToString().Trim();
        string _Birthday = DropDownList2.SelectedValue + DropDownList4.SelectedValue;
        
        string _IDCard = TextBox4.Text.ToString().Trim();
        string _Phone = TextBox5.Text.ToString().Trim();
        string _PoliticalStatus = RadioButtonList2.SelectedValue;
        string _Province = DropDownList5.SelectedValue;
        string _Area = "淮南"+DropDownList6.SelectedValue;
        string _DetailAddr = TextBox6.Text.ToString().Trim();
        
        string _HighSchool = TextBox7.Text.ToString().Trim();
        string _QQ = TextBox9.Text.ToString().Trim();
        string _Email = TextBox8.Text.ToString().Trim();
        string _TeachingSubject = "";
        int i;
        if (ListBox2.Items.Count == 0)
        {
            Response.Write("<script>alert('科目不能为空！';location = 'Signup_Student.aspx');</script>");
        }
        else
        {
            for (i = 0; i < ListBox2.Items.Count - 1; i++)
            {
                _TeachingSubject = _TeachingSubject + ListBox1.Items[i].Text + ',';
            }
            _TeachingSubject = _TeachingSubject + ListBox1.Items[i].Text;
        }
        
        
        string _TeachingArea = "";
        if (ListBox4.Items.Count == 0)
        {
            Response.Write("<script>alert('教学区域不能为空！';location = 'Signup_Student.aspx');</script>");
        }
        else
        {
            for (i = 0; i < ListBox4.Items.Count - 1; i++)
            {
                _TeachingArea = _TeachingArea + ListBox3.Items[i].Text + ',';
            }
            _TeachingArea = _TeachingArea + ListBox3.Items[i].Text;
        }
        
       
        string _TeachingWay = RadioButtonList3.SelectedValue;
        string _TeachingTime = TextBox12.Text.ToString().Trim();
        string _Salary = TextBox13.Text.ToString().Trim();
        string _Description = TextBox14.Text.ToString().Trim();
        string _RegisterTime = DateTime.Now.ToString().Trim();
        string _LoginTime = _RegisterTime;

        ///上传图片
        ///
        Boolean fileOK = false;
        string fileExtension = "";
        string path = Server.MapPath("~/images/person/");
        if (FileUpload1.HasFile)
        {
            fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            string[] allowedExtensions = { ".jpg", ".png", ".jpeg" };
            for (i = 0; i < allowedExtensions.Length; i++)
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileOK = true;
                }
            }
        }
        if (FileUpload1.PostedFile.ContentLength > 204800)
        {
            fileOK = false;
        }
        if (fileOK)
        {
            try
            {
                FileUpload1.PostedFile.SaveAs(path + Convert.ToDateTime(_RegisterTime).ToString("yyyyMMddHHmmss") + fileExtension);

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('很抱歉！文件不能被上传。');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('很抱歉！文件类型不匹配或文件大小超过200K');</script>");
        }

        SqlConnection sqlConn = GetConnection();
        sqlConn.Open();
        string SqlStr = "insert Teacher(UserName,Password,TureName,Sex,Role,Grade,Major,School,Birthday,MyPhoto,IDCard,Phone,PoliticalStatus,Province,Area,DetailAddr,HighSchool,QQ ,Email,TeachingSubject,TeachingArea,TeachingTime,Salary,Description,RegisterTime,LoginTime) values ('" + _UserName + "','" + _Password + "','" + _TureName + "','" + _Sex + "', '" + _Role + "','" + _Grade + "', '" + _Major + "','" + _School + "', '" + _Birthday + "','" + FileUpload1.FileName + "','" + _IDCard + "','" + _Phone + "', '" + _PoliticalStatus + "', '" + _Province + "', '" + _Area + "', '" + _DetailAddr + "', '" + _HighSchool + "', '" + _QQ + "','" + _Email + "','" + _TeachingSubject + "', '" + _TeachingArea + "','" + _TeachingTime + "','" + _Salary + "',  '" + _Description + "','" + _RegisterTime + "','" + _LoginTime + "')";
        SqlCommand sqlComm = new SqlCommand(SqlStr, sqlConn);
        sqlComm.ExecuteNonQuery();
        Response.Write("<script>alert('注册成功！');location = '../Default.aspx'</script>");
        sqlConn.Close();
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        string selectStr = ListBox3.SelectedValue;
        for (int i = 0; i < ListBox4.Items.Count; i++)
        {
            if (selectStr == ListBox4.Items[i].Text)
            {
                return;
            }
        }
        ListBox4.Items.Add(selectStr);
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        ListBox4.Items.Remove(ListBox4.SelectedItem);
    }
}
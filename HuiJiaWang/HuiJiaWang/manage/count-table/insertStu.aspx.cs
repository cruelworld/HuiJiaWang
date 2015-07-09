using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;

public partial class count_table_insertStu : System.Web.UI.Page
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
    protected void Button5_Click(object sender, EventArgs e)
    {
        string selectStr = ListBox4.SelectedValue;
        for (int i = 0; i < ListBox3.Items.Count; i++)
        {
            if (selectStr == ListBox3.Items[i].Text)
            {
                return;
            }
        }
        ListBox3.Items.Add(selectStr);
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        ListBox3.Items.Remove(ListBox3.SelectedItem);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = DropDownList8.SelectedIndex;
        ArrayList arrayList = new ArrayList();
        switch (index)
        {
            case 0:
                {
                    arrayList.Add("瑶海区");
                    arrayList.Add("庐阳区");
                    arrayList.Add("蜀山区");
                    arrayList.Add("长丰县");
                    arrayList.Add("包河区");
                    arrayList.Add("肥东县");
                    arrayList.Add("肥西县");
                    arrayList.Add("庐江县");
                    arrayList.Add("巢湖市");
                    DropDownList9.DataSource = arrayList;
                    DropDownList9.DataBind();
                }
                break;
            case 1:
                {
                    arrayList.Add("大通区");
                    arrayList.Add("田家庵区");
                    arrayList.Add("谢家集区");
                    arrayList.Add("八公山区");
                    arrayList.Add("潘集区");
                    arrayList.Add("凤台县");
                    DropDownList9.DataSource = arrayList;
                    DropDownList9.DataBind();
                }
                break;
            case 2:
                {
                    arrayList.Add("镜湖区");
                    arrayList.Add("弋江区");
                    arrayList.Add("鸠江区");
                    arrayList.Add("三山区");
                    arrayList.Add("无为县");
                    arrayList.Add("芜湖县");
                    arrayList.Add("繁昌县");
                    arrayList.Add("南陵县");
                    DropDownList9.DataSource = arrayList;
                    DropDownList9.DataBind();
                }
                break;
            default:
                arrayList.Clear();
                DropDownList9.DataSource = arrayList;
                DropDownList9.DataBind();
                break;
        }
    }
    protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Int32 idInt = Convert.ToInt32(Session["id"]);
        SqlConnection sqlConn = GetConnection();
        string _UserName = TextBox1.Text.ToString().Trim();
        string _Password = TextBox2.Text.ToString().Trim();
        string _TureName = TextBox3.Text.ToString().Trim();
        string _Sex = RadioButtonList1.SelectedValue;
        string _Grade = DropDownList1.SelectedValue;
       
        string _Phone = TextBox7.Text.ToString().Trim();
        
        string _Province = DropDownList7.SelectedValue;
        string _Area = DropDownList8.SelectedValue + DropDownList9.SelectedValue;
        string _DetailAddr = TextBox8.Text.ToString().Trim();
      
        string _QQ = TextBox10.Text.ToString().Trim();
        string _Email = TextBox11.Text.ToString().Trim();
        string _TeachedSubject = "";
        int i;
        for (i = 0; i < ListBox3.Items.Count - 1; i++)
        {
            _TeachedSubject = _TeachedSubject + ListBox3.Items[i].Text + ',';
        }
        _TeachedSubject = _TeachedSubject + ListBox3.Items[i].Text;
       
        string _TeachedWay = RadioButtonList2.SelectedValue;
        string _TeachedTime = TextBox12.Text.ToString().Trim();
        string _Description = TextBox14.Text.ToString().Trim();
        string _Salary = TextBox15.Text.ToString().Trim();
        string _RequestTeacher = TextBox16.Text.ToString().Trim();

        string _TrafficPay = RadioButtonList3.SelectedValue;
        string _RequestSex = RadioButtonList4.SelectedValue;
        string _RegisterTime = DateTime.Now.ToString();
        ///上传图片
        //Boolean fileOK = false;
        //string path = Server.MapPath("~/images/person/");
        //if (FileUpload1.HasFile)
        //{
        //    string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
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
        //        FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
        //
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
        
        string _LoginTime = _RegisterTime;
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

        sqlConn.Open();
        string SqlStr = "insert Student(UserName,Password,TureName,Sex,Grade,Phone,MyPhoto,Province,Area,DetailAddr,QQ ,Email,TeachedSubject,TeachedTime,RequestSex,TeachedWay,Salary,TrafficPay,RequestTeacher,Description, RegisterTime, LoginTime) values ('" + _UserName + "','" + _Password + "','" + _TureName + "','" + _Sex + "','" + _Grade + "','" + _Phone + "','" + FileUpload1.FileName + "', '" + _Province + "', '" + _Area + "', '" + _DetailAddr + "', '" + _QQ + "','" + _Email + "','" + _TeachedSubject + "','" + _TeachedTime + "','" + _RequestSex + "','" + _TeachedWay + "','" + _Salary + "','" + _TrafficPay + "','" + _RequestTeacher + "','" + _Description + "','" + _RegisterTime + "','" + _LoginTime+ "')";
        SqlCommand sqlComm = new SqlCommand(SqlStr, sqlConn);
        sqlComm.ExecuteNonQuery();
        sqlConn.Close();
        Response.Write("<script>alert('插入成功！');</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("xytb.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;
using System.Data;
public partial class count_table_EditTea : System.Web.UI.Page
{
    string _RegisterTime = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 idInt = Convert.ToInt32(Session["id"]);
        Label1.Text = idInt.ToString().Trim();
        if (!IsPostBack)
        {
            SqlConnection sqlConn = GetConnection();
            sqlConn.Open();
            string sqlStr = "select * from Teacher where TeacherID = "+idInt+"";
            SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = sqlComm;
           
            DataSet ds = new DataSet();
            sda.Fill(ds, "Teacher");
            DataView dv = new DataView(ds.Tables["Teacher"], "", "TeacherID", DataViewRowState.CurrentRows);
            int rowIndex = dv.Find(idInt);
            TextBox1.Text = dv[rowIndex]["UserName"].ToString().Trim();
            TextBox2.Text = dv[rowIndex]["Password"].ToString().Trim();
            TextBox3.Text = dv[rowIndex]["TureName"].ToString().Trim();
            if(dv[rowIndex]["Sex"].ToString().Trim() == "男")
            {
                RadioButtonList1.SelectedIndex = 0;
            }
            else RadioButtonList1.SelectedIndex = 1;
            DropDownList1.SelectedValue = dv[rowIndex]["Role"].ToString().Trim();
            DropDownList2.SelectedValue = dv[rowIndex]["Grade"].ToString().Trim();
            TextBox4.Text = dv[rowIndex]["Major"].ToString().Trim();
            TextBox5.Text = dv[rowIndex]["School"].ToString().Trim();
            string strBirthday = dv[rowIndex]["Birthday"].ToString().Trim();
            //DropDownList3.SelectedValue = strBirthday.Substring(0, 5);
            //DropDownList4.SelectedValue = strBirthday.Substring(6, strBirthday.Length);
            DropDownList5.SelectedValue = dv[rowIndex]["Nation"].ToString().Trim();
            TextBox6.Text = dv[rowIndex]["IDCard"].ToString().Trim();
            TextBox7.Text = dv[rowIndex]["Phone"].ToString().Trim();
            DropDownList6.SelectedValue = dv[rowIndex]["PoliticalStatus"].ToString().Trim();
            DropDownList7.SelectedValue  = dv[rowIndex]["Province"].ToString().Trim();
            string strArea = dv[rowIndex]["Area"].ToString().Trim();
            //DropDownList8.SelectedValue = strArea.Substring(0, 2);
            //DropDownList9.SelectedValue = strArea.Substring(3, strArea.Length);

            TextBox8.Text = dv[rowIndex]["DetailAddr"].ToString().Trim();
            DropDownList10.SelectedValue = dv[rowIndex]["Origin"].ToString().Trim();
            TextBox9.Text = dv[rowIndex]["HighSchool"].ToString().Trim();
            TextBox10.Text = dv[rowIndex]["QQ"].ToString().Trim();
            TextBox11.Text = dv[rowIndex]["Email"].ToString().Trim();
            

            string strTeachingSub = dv[rowIndex]["TeachingSubject"].ToString().Trim();
            //string[] parts = input.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
            string[] parts = strTeachingSub.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            for (int i = 0; i < parts.Length; i++)
            {
                ListBox3.Items.Add(parts[i]);
            }
            string strTeachingArea = dv[rowIndex]["TeachingArea"].ToString().Trim();
            //string[] parts = input.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
            string[] li = strTeachingArea.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            for (int i = 0; i < li.Length; i++)
            {
                ListBox2.Items.Add(li[i]);
            }
            string strTeachingWay = dv[rowIndex]["TeachingWay"].ToString().Trim();
            if (strTeachingWay == "本人上门")
            {
                RadioButtonList2.SelectedIndex = 0;
            }
            else if (strTeachingWay == "学生上门")
            {
                RadioButtonList2.SelectedIndex = 1;
            }
            else if (strTeachingWay == "网上授课")
            {
                RadioButtonList2.SelectedIndex = 2;
            }
            else
            {
                RadioButtonList2.SelectedIndex = 3;
            }
            _RegisterTime = dv[rowIndex]["RegisterTime"].ToString().Trim();
           
            TextBox12.Text = dv[rowIndex]["TeachingTime"].ToString().Trim();
            TextBox13.Text = dv[rowIndex]["Salary"].ToString().Trim();
            TextBox14.Text = dv[rowIndex]["Description"].ToString().Trim();
            sqlConn.Close();
        }
    }

    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        Int32 idInt = Convert.ToInt32(Session["id"]);
        SqlConnection sqlConn = GetConnection();
        string _UserName = TextBox1.Text.ToString().Trim();
        string _Password = TextBox2.Text.ToString().Trim();
        string _TureName = TextBox3.Text.ToString().Trim();
        string _Sex = RadioButtonList1.SelectedValue;
        string _Role = DropDownList1.SelectedValue;
        string _Grade = DropDownList2.SelectedValue;
        string _Major = TextBox4.Text.ToString().Trim();
        string _School = TextBox5.Text.ToString().Trim();
        string _Birthday = DropDownList3.SelectedValue + DropDownList4.SelectedValue;
        string _Nation = DropDownList5.SelectedValue;
        string _IDCard = TextBox6.Text.ToString().Trim();
        string _Phone = TextBox7.Text.ToString().Trim();
        string _PoliticalStatus = DropDownList6.SelectedValue;
        string _Province = DropDownList7.SelectedValue;
        string _Area = DropDownList8.SelectedValue + DropDownList9.SelectedValue;
        string _DetailAddr = TextBox8.Text.ToString().Trim();
        string _Origin = DropDownList10.SelectedValue;
        string _HighSchool = TextBox9.Text.ToString().Trim();
        string _QQ = TextBox10.Text.ToString().Trim();
        string _Email = TextBox11.Text.ToString().Trim();
        string _TeachingSubject = "";
        int i;
        if (ListBox3.Items.Count == 0)
        {
            Response.Write("<script>alert('科目不能为空！');</script>");
        }
        else
        { 
            for(i = 0; i < ListBox3.Items.Count-1; i ++)
            {
                _TeachingSubject = _TeachingSubject + ListBox3.Items[i].Text + ',';
            }
             _TeachingSubject = _TeachingSubject + ListBox3.Items[i].Text;
        }
        
        string _TeachingArea = "";
        if (ListBox2.Items.Count == 0)
        {
            Response.Write("<script>alert('授课地区不能为空！';location = 'Signup_Student.aspx');</script>");
        }
        else
        {
            for (i = 0; i < ListBox2.Items.Count - 1; i++)
            {
                _TeachingArea = _TeachingArea + ListBox2.Items[i].Text + ',';
            }
            _TeachingArea = _TeachingArea + ListBox2.Items[i].Text;
        }
        
         string _TeachingWay = RadioButtonList2.SelectedValue;
        string _TeachingTime = TextBox12.Text.ToString().Trim();
        string _Salary = TextBox13.Text.ToString().Trim();
        string _Description = TextBox14.Text.ToString().Trim();
        //照片上传
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
        string SqlStr = "update Teacher set UserName = '" + _UserName + "',Password = '" + _Password + "',TureName = '" + _TureName + "',Sex = '" + _Sex + "',Role = '" + _Role + "',Major = '" + _Major + "',School = '" + _School + "',Birthday = '" + _Birthday + "',Nation = '" + _Nation + "',MyPhoto = '" + FileUpload1.FileName + "',IDCard = '" + _IDCard + "',Phone = '" + _Phone + "',PoliticalStatus = '" + _PoliticalStatus + "',Province = '" + _Province + "',Area = '" + _Area + "',DetailAddr = '" + _DetailAddr + "',Origin = '" + _Origin + "',HighSchool = '" + _HighSchool + "',QQ = '" + _QQ + "',Email = '" + _Email + "',TeachingSubject = '" + _TeachingSubject + "',TeachingArea = '" + _TeachingArea + "',TeachingTime = '" + _TeachingTime + "',Salary = '" + _Salary + "', Description = '" + _Description + "'where TeacherID = " + idInt + "";
        SqlCommand sqlComm = new SqlCommand(SqlStr, sqlConn);
        sqlComm.ExecuteNonQuery();
        sqlConn.Close();
        Response.Write("<script>alert('编辑成功！'); location ='DetailTea.aspx'</script>");
        //Response.Redirect("DetailTea.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("DetailTea.aspx");
    }

    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = DropDownList8.SelectedIndex;
        ArrayList arrayList = new ArrayList();
        switch (index)
        {
            case 1:
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
            case 0:
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
        int index = DropDownList11.SelectedIndex;
        ArrayList arrayList = new ArrayList();
        switch (index)
        {
            case 1:
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
                    DropDownList12.DataSource = arrayList;
                    DropDownList12.DataBind();
                }
                break;
            case 0:
                {
                    arrayList.Add("大通区");
                    arrayList.Add("田家庵区");
                    arrayList.Add("谢家集区");
                    arrayList.Add("八公山区");
                    arrayList.Add("潘集区");
                    arrayList.Add("凤台县");
                    DropDownList12.DataSource = arrayList;
                    DropDownList12.DataBind();
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
                    DropDownList12.DataSource = arrayList;
                    DropDownList12.DataBind();
                }
                break;
            default:
                arrayList.Clear();
                DropDownList12.DataSource = arrayList;
                DropDownList12.DataBind();
                break;
        }

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
        string strCity = DropDownList11.SelectedValue;
        string strArea = DropDownList12.SelectedValue;
        string ciAr = strCity + strArea;
        for (int i = 0; i < ListBox2.Items.Count; i++)
        {
            if (ciAr == ListBox2.Items[i].Text)
            {
                return;
            }
        }
        ListBox2.Items.Add(ciAr);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        ListBox2.Items.Remove(ListBox2.SelectedItem);
    }
}
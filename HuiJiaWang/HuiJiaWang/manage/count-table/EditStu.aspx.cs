using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class count_table_EditStu : System.Web.UI.Page
{
    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 idInt = Convert.ToInt32(Session["id"]);
        Label1.Text = idInt.ToString().Trim();
        if (!IsPostBack)
        {
            SqlConnection sqlConn = GetConnection();
            sqlConn.Open();
            string sqlStr = "select * from Student where StudentID = " + idInt + "";
            SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = sqlComm;

            DataSet ds = new DataSet();
            sda.Fill(ds, "Student");
            DataView dv = new DataView(ds.Tables["Student"], "", "StudentID", DataViewRowState.CurrentRows);
            int rowIndex = dv.Find(idInt);
            TextBox1.Text = dv[rowIndex]["UserName"].ToString().Trim();
            TextBox2.Text = dv[rowIndex]["Password"].ToString().Trim();
            TextBox3.Text = dv[rowIndex]["TureName"].ToString().Trim();
            if (dv[rowIndex]["Sex"].ToString().Trim() == "男")
            {
                RadioButtonList1.SelectedIndex = 0;
            }
            else RadioButtonList1.SelectedIndex = 1;
            DropDownList1.SelectedValue = dv[rowIndex]["Grade"].ToString().Trim();

            TextBox7.Text = dv[rowIndex]["Phone"].ToString().Trim();
           
            DropDownList7.SelectedValue = dv[rowIndex]["Province"].ToString().Trim();
            string strArea = dv[rowIndex]["Area"].ToString().Trim();
   

            TextBox8.Text = dv[rowIndex]["DetailAddr"].ToString().Trim();
           
            TextBox10.Text = dv[rowIndex]["QQ"].ToString().Trim();
            TextBox11.Text = dv[rowIndex]["Email"].ToString().Trim();


            string strTeachedSub = dv[rowIndex]["TeachedSubject"].ToString().Trim();
            //string[] parts = input.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
            string[] parts = strTeachedSub.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            for (int i = 0; i < parts.Length; i++)
            {
                ListBox3.Items.Add(parts[i]);
            }
          
            string strTeachingWay = dv[rowIndex]["TeachedWay"].ToString().Trim();
            if (strTeachingWay == "本人上门")
            {
                RadioButtonList2.SelectedIndex = 0;
            }
            else if (strTeachingWay == "教员上门")
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

            TextBox12.Text = dv[rowIndex]["TeachedTime"].ToString().Trim();
            TextBox15.Text = dv[rowIndex]["Salary"].ToString().Trim();
            TextBox14.Text = dv[rowIndex]["Description"].ToString().Trim();
            TextBox16.Text = dv[rowIndex]["RequestTeacher"].ToString().Trim();

            if (dv[rowIndex]["RequestSex"].ToString().Trim() == "男")
            {
                RadioButtonList4.SelectedIndex = 0;
            }
            else if(dv[rowIndex]["RequestSex"].ToString().Trim() == "女")
            {
                RadioButtonList4.SelectedIndex = 1;
            }
            else RadioButtonList4.SelectedIndex = 2;

            if (dv[rowIndex]["TrafficPay"].ToString().Trim() == "有")
            {
                RadioButtonList3.SelectedIndex = 0;
            }
            else RadioButtonList3.SelectedIndex = 1;
            sqlConn.Close();
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

        sqlConn.Open();
        string SqlStr = "update Student set UserName = '"+_UserName+"',Password = '" + _Password + "',TureName = '" + _TureName + "',Sex = '" + _Sex + "',Grade = '" + _Grade + "',Phone = '" + _Phone + "',Province =  '" + _Province + "',Area = '" + _Area + "',DetailAddr =  '" + _DetailAddr + "',QQ = '" + _QQ + "' ,Email = '" + _Email + "',TeachedSubject = '" + _TeachedSubject + "',TeachedTime = '" + _TeachedTime + "',RequestSex = '" + _RequestSex + "',TeachedWay = '" + _TeachedWay + "',Salary = '" + _Salary + "',TrafficPay = '" + _TrafficPay + "',RequestTeacher = '" + _RequestTeacher + "',Description = '" + _Description + "' where StudentID = " + idInt + "";
        SqlCommand sqlComm = new SqlCommand(SqlStr, sqlConn);
        sqlComm.ExecuteNonQuery();
        sqlConn.Close();
        Response.Write("<script>alert('编辑成功！'); location = 'DetailStu.aspx';</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
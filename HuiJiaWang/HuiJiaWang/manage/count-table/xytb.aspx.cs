using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Windows.Forms;
public partial class count_table_xytb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DialogResult result = MessageBox.Show("请确认是否要删除此记录行？", "信息提示！",
           MessageBoxButtons.OKCancel,
           MessageBoxIcon.Question,
           MessageBoxDefaultButton.Button2,
           MessageBoxOptions.ServiceNotification);
        SqlConnection sqlConn = GetConnection();
        if (result == DialogResult.OK)
        {
            string strid = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string sqlStr = "delete from Teacher where TeacherID = '" + strid + "'";

            sqlConn.Open();
            SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
            sqlComm.ExecuteNonQuery();
            sqlConn.Close();

            bind();
        }
    }

    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }
    public void bind()
    {

        GridView1.DataSourceID = "SqlDataSource2";
        GridView1.DataBind();

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        SqlConnection sqlConn = GetConnection();
        sqlConn.Open();

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            System.Web.UI.WebControls.CheckBox checkBox = (System.Web.UI.WebControls.CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            int index = Convert.ToInt32(GridView1.DataKeys[i].Value);
            if (checkBox.Checked == false)
            {
                string sqlStr = "update Student set IsVisible = 0 where StudentID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();

            }
            else
            {
                string sqlStr = "update Student set IsVisible = 1 where StudentID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();
            }
        }

        sqlConn.Close();

    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        SqlConnection sqlConn = GetConnection();
        sqlConn.Open();

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            System.Web.UI.WebControls.CheckBox checkBox = (System.Web.UI.WebControls.CheckBox)GridView1.Rows[i].FindControl("CheckBox2");
            int index = Convert.ToInt32(GridView1.DataKeys[i].Value);
            if (checkBox.Checked == false)
            {
                string sqlStr = "update Student set IsArrange = 0 where StudentID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();

            }
            else
            {
                string sqlStr = "update Student set IsArrange = 1 where StudentID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();
            }
        }

        sqlConn.Close();

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = DropDownList2.SelectedIndex;
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
                    DropDownList3.DataSource = arrayList;
                    DropDownList3.DataBind();
                }
                break;
            case 2:
                {
                    arrayList.Add("大通区");
                    arrayList.Add("田家庵区");
                    arrayList.Add("谢家集区");
                    arrayList.Add("八公山区");
                    arrayList.Add("潘集区");
                    arrayList.Add("凤台县");
                    DropDownList3.DataSource = arrayList;
                    DropDownList3.DataBind();
                }
                break;
            case 3:
                {
                    arrayList.Add("镜湖区");
                    arrayList.Add("弋江区");
                    arrayList.Add("鸠江区");
                    arrayList.Add("三山区");
                    arrayList.Add("无为县");
                    arrayList.Add("芜湖县");
                    arrayList.Add("繁昌县");
                    arrayList.Add("南陵县");
                    DropDownList3.DataSource = arrayList;
                    DropDownList3.DataBind();
                }
                break;
            default:
                arrayList.Clear();
                DropDownList3.DataSource = arrayList;
                DropDownList3.DataBind();
                break;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sqlStr = "";
        int StuIDInt;
        string SubStr = DropDownList1.SelectedValue.ToString().Trim();
        string CityStr = DropDownList2.SelectedValue.ToString().Trim();
        string AreaStr = DropDownList3.SelectedValue.ToString().Trim();
        string SexTeaStr = DropDownList5.SelectedValue.ToString().Trim();
        string SexStuStr = DropDownList4.SelectedValue.ToString().Trim();

        if (TextBox1.Text.ToString().Trim() != "")
        {
            StuIDInt = int.Parse(TextBox1.Text.ToString().Trim());

            sqlStr = "StudentID = '" + StuIDInt + "'";
        }

        if (SubStr != "选择家教科目")
        {
            if (TextBox1.Text.ToString().Trim() == "")
            {
                sqlStr = sqlStr + "TeachedSubject like '%" + SubStr + "%'";
            }
            else
            {
                sqlStr = sqlStr + "and TeachedSubject like '%" + SubStr + "%'";
            }
        }
        if (CityStr != "选择城市")
        {
            if (SubStr == "选择家教科目" && TextBox1.Text.ToString().Trim() == "")
            {
                sqlStr = sqlStr + "Area like '" + CityStr + "%'";
            }
            else
            {
                sqlStr = sqlStr + "and Area like '" + CityStr + "%'";
            }
        }
        if (AreaStr != "")
        {
            if (CityStr == "选择城市" && SubStr == "选择家教科目" && TextBox1.Text.ToString().Trim() == "")
            {
                sqlStr = sqlStr + "Area like '%" + AreaStr + "'";
            }
            else
            {
                sqlStr = sqlStr + "and Area like '%" + AreaStr + "'";
            }
        }
        if (SexStuStr != "学员性别")
        {
            if (AreaStr == "" && CityStr == "选择城市" && SubStr == "选择家教科目" && TextBox1.Text.ToString().Trim() == "")
            {
                sqlStr = sqlStr + "Sex = '" + SexStuStr + "'";
            }
            else
            {
                sqlStr = sqlStr + "and Sex = '" + SexStuStr + "'";
            }
        }
        if (SexTeaStr != "教员性别")
        {
            if (SexStuStr == "学员性别" && AreaStr == "" && CityStr == "选择城市" && SubStr == "选择家教科目" && TextBox1.Text.ToString().Trim() == "")
            {
                sqlStr = sqlStr + "RequestSex = '" + SexTeaStr + "'";
            }
            else
            {
                sqlStr = sqlStr + "and RequestSex = '" + SexTeaStr + "'";
            }
        }
        SqlDataSource2.FilterExpression = sqlStr;
        GridView1.DataSourceID = "SqlDataSource2";
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("insertStu.aspx");
    }
}
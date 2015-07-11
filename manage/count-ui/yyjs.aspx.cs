using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class yyjs : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sqlStr = "TeachingSubject like '%电子琴%' or TeachingSubject like '%大提琴%'or TeachingSubject like '%小提琴%'or TeachingSubject like '%吉他%'or TeachingSubject like '%古筝%'or TeachingSubject like '%二胡%'or TeachingSubject like '%手风琴%'or TeachingSubject like '%单簧管%'or TeachingSubject like '%萨克斯%'or TeachingSubject like '%打击乐%'or TeachingSubject like '%唱歌%'or TeachingSubject like '%钢琴%'or TeachingSubject like '%声乐%' and TeachingSubject like '%教师%' ";
            SqlDataSource1.FilterExpression = sqlStr;
            GridView1.DataSourceID = "SqlDataSource1";
            GridView1.DataBind();
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

        GridView1.DataSourceID = "SqlDataSource1";
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
                string sqlStr = "update Teacher set IsProfession = 0 where TeacherID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();

            }
            else
            {
                string sqlStr = "update Teacher set IsProfession = 1 where TeacherID = " + index + "";
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
                string sqlStr = "update Teacher set IsSign = 0 where TeacherID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();

            }
            else
            {
                string sqlStr = "update Teacher set IsSign = 1 where TeacherID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();
            }
        }

        sqlConn.Close();

    }
    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        SqlConnection sqlConn = GetConnection();
        sqlConn.Open();

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            System.Web.UI.WebControls.CheckBox checkBox = (System.Web.UI.WebControls.CheckBox)GridView1.Rows[i].FindControl("CheckBox3");
            int index = Convert.ToInt32(GridView1.DataKeys[i].Value);
            if (checkBox.Checked == false)
            {
                string sqlStr = "update Teacher set IsIdentify = 0 where TeacherID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();

            }
            else
            {
                string sqlStr = "update Teacher set IsIdentify = 1 where TeacherID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();
            }
        }

        sqlConn.Close();

    }
    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {
        SqlConnection sqlConn = GetConnection();
        sqlConn.Open();

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            System.Web.UI.WebControls.CheckBox checkBox = (System.Web.UI.WebControls.CheckBox)GridView1.Rows[i].FindControl("CheckBox4");
            int index = Convert.ToInt32(GridView1.DataKeys[i].Value);
            if (checkBox.Checked == false)
            {
                string sqlStr = "update Teacher set IsVisible = 0  where TeacherID = " + index + "";

                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();

            }
            else
            {


                string sqlStr = "update Teacher set IsVisible = 1 where TeacherID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);

                sqlComm.ExecuteNonQuery();
            }
        }

        sqlConn.Close();

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
        else
        {
            e.Cancel = true;
        }
    }

}
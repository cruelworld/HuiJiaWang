using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class count_table_jyorder : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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
                string sqlStr = "update Book_Teacher set IsOK = 0 where OrderID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();

            }
            else
            {
                string sqlStr = "update Book_Teacher set IsOK = 1 where OrderID = " + index + "";
                SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
                sqlComm.ExecuteNonQuery();
            }
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
        else
        {
            e.Cancel = true;
        }
    }
}
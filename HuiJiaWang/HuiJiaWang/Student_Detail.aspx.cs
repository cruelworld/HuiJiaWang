using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Int32 IdInt = Convert.ToInt32(Request.Params["id"]);
            Session["StuId"] = IdInt;
            SqlConnection sqlConn = GetConnection();
            sqlConn.Open();
            string sqlStr = "select * from Student where StudentID = " + IdInt + "";
            SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
            SqlDataReader dr = sqlComm.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = "T" + dr["StudentID"].ToString();
                Label2.Text = dr["TureName"].ToString().Substring(0, 1) + "学员";
                
                
                Label4.Text = dr["LoginTime"].ToString();
                Label5.Text = dr["Sex"].ToString();
                Label6.Text = dr["Grade"].ToString();
                Label7.Text = dr["Area"].ToString();
                Label8.Text = dr["TrafficPay"].ToString() + "车费补贴";
                Label10.Text = dr["TeachedSubject"].ToString();
                Label11.Text = dr["Salary"].ToString();
                Label12.Text = dr["Area"].ToString();
                Label13.Text = dr["TeachedWay"].ToString();
                Label14.Text = dr["Description"].ToString();
                //Label14.Text = Convert.ToString(dr["SeeCount"]); //浏览量未显示
                if (dr["MyPhoto"].ToString() != "")
                {
                    Image1.ImageUrl = "~/images/person/" + dr["MyPhoto"].ToString();
                }
                else if (dr["Sex"].ToString() == "男")
                {
                    Image1.ImageUrl = "~/images/person/00000000000000.jpg";
                }
                else if (dr["Sex"].ToString() == "女")
                {
                    Image1.ImageUrl = "~/images/person/00000000000001.jpg";
                }
            }
            dr.Close();
            sqlConn.Close();
        }
    }

    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }
}
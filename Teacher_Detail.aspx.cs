using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Teacher_Detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Int32 IdInt = Convert.ToInt32(Request.Params["id"]);
            Session["TeaId"] = IdInt;
            SqlConnection sqlConn = GetConnection();
            sqlConn.Open();
            string sqlStr = "select * from Teacher where TeacherID = " + IdInt + "";
            SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
            SqlDataReader dr = sqlComm.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = "T" + dr["TeacherID"].ToString();
                Label2.Text = dr["TureName"].ToString().Substring(0, 1) + "教员";
                bool _IsIdentify = Convert.ToBoolean(dr["IsIdentify"]);
                bool _IsSign = Convert.ToBoolean(dr["IsSign"]);
                if (true == _IsIdentify)
                {
                    Label3.Text = "此教员已经通过认证";
                }
                else
                {
                    Label3.Text = "未认证";
                }
                Label4.Text = dr["LoginTime"].ToString();
                Label5.Text = dr["Sex"].ToString();
                Label6.Text = dr["Role"].ToString();
                Label7.Text = dr["Grade"].ToString();
                Label8.Text = dr["Major"].ToString();
                Label9.Text = dr["School"].ToString();
                Label15.Text = dr["HighSchool"].ToString();

                Label10.Text = dr["TeachingSubject"].ToString();
                Label11.Text = dr["Salary"].ToString();
                Label12.Text = dr["TeachingArea"].ToString();
                Label13.Text = dr["TeachingWay"].ToString();
                Label14.Text = dr["Description"].ToString();
                //Label14.Text = Convert.ToString(dr["SeeCount"]); //浏览量未显示
                if (dr["MyPhoto"].ToString() != "")
                {
                    Image1.ImageUrl = "~/images/person/" + dr["MyPhoto"].ToString();
                }
                else if(dr["Sex"].ToString() == "男")
                {
                    Image1.ImageUrl = "~/images/person/00000000000000.jpg";
                }
                else if (dr["Sex"].ToString() == "女")
                {
                    Image1.ImageUrl = "~/images/person/00000000000001.jpg";
                }


                if (true == _IsSign)
                {
                    Image2.ImageUrl = "~/images/sign02.png";
                }
                else
                {
                    Image2.ImageUrl = "~/images/sign01.png";
                }
                

            }
            dr.Close();
            sqlConn.Close();
            string sstr = "IsOK = 1 and TeacherID = " + IdInt+ ""; 
           SqlDataSource1.FilterExpression = sstr;
           GridView1.DataSourceID = "SqlDataSource1";
           GridView1.DataBind();
           string sample = Label10.Text.ToString().Trim();
           string[] li = (sample).Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
           String sqlString = "";

           sqlString = "TeachingSubject like '%" + li[0].ToString().Trim() + "%' and IsVisible = 1";
           //sqlString = sqlString + "TeachingSubject like '%"+li[i].ToString().Trim() + "%'";
           SqlDataSource2.FilterExpression = sqlString;
           GridView2.DataSourceID = "SqlDataSource2";
           GridView2.DataBind();

        }
    }

    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }
    protected string DisplaySexOnName(Int32 TeaNum)
    {
        string teaStr = "", sexStr = "";
        SqlConnection sqlConn = GetConnection();
        string sqlStr = "select TureName, Sex from Teacher where TeacherID = " + TeaNum + "";
        sqlConn.Open();
        SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
        SqlDataReader dr = sqlComm.ExecuteReader();
        try
        {
            while (dr.Read())
            {
                teaStr = dr["TureName"].ToString().Trim();
                sexStr = dr["Sex"].ToString().Trim();
            } dr.Close();
        }
        catch (SqlException ex)
        {
            Response.Write(ex.ToString());
        }
        finally
        {
            sqlConn.Close();
        }
        return (teaStr.Substring(0, 1) + "教员" + "(" + sexStr + ")");
    }
}
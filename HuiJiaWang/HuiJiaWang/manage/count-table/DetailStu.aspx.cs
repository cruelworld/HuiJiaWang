using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;

public partial class count_table_DetailStu : System.Web.UI.Page
{
    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 IdInt = Convert.ToInt32(Request.Params["id"]);
        if (IdInt == 0)
        {
            IdInt = Convert.ToInt32(Session["id"]);
        }
        else Session["id"] = IdInt;

        
        SqlDataSource1.FilterExpression = "StudentID = " + IdInt + "";
        DetailsView1.DataSourceID = "SqlDataSource1";
        DetailsView1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../count-table/EditStu.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;


public partial class count_table_DetailTea : System.Web.UI.Page
{

    public SqlConnection GetConnection()
    {
        string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlConn = new SqlConnection(connStr);
        return sqlConn;
    }

 
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Int32 IdInt = Convert.ToInt32(Request.Params["id"]);
            if (IdInt == 0)
            {
                IdInt = Convert.ToInt32(Session["id"]);
            }
            else Session["id"] = IdInt;
           
            SqlConnection sqlConn = GetConnection();
            sqlConn.Open();
            string sqlStr = "select * from Teacher where TeacherID = " + IdInt + "";
            SqlCommand sqlComm = new SqlCommand(sqlStr, sqlConn);
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = sqlComm;

            DataSet ds = new DataSet();
            sda.Fill(ds, "Teacher");
            DataView dv = new DataView(ds.Tables["Teacher"], "", "TeacherID", DataViewRowState.CurrentRows);
            int rowIndex = dv.Find(IdInt);
            //Image1.ImageUrl = dv[rowIndex]["MyPhoto"].ToString().Trim();
            Image1.ImageUrl = "~/images/person/" + dv[rowIndex]["MyPhoto"].ToString();
          
            SqlDataSource1.FilterExpression = "TeacherID = " + IdInt + "";
            DetailsView1.DataSourceID = "SqlDataSource1";
            DetailsView1.DataBind();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../count-table/EditTea.aspx");
    }
}

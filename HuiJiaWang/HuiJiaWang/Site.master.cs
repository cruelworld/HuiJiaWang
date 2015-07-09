using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["_UserStr"] == null)
            {
                Label1.Text = "登陆";
            }
            else Label1.Text = Session["_UserStr"].ToString().Trim();
        }
        
    }
    protected void Label1_DataBinding(object sender, EventArgs e)
    {
        
    }
}

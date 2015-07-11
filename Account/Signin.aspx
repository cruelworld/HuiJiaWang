<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Signin.aspx.cs" Inherits="Account_Signin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>登陆</title>
  <link href="~/Content/UserPanel.css" rel="stylesheet" type="text/css" />
  <link href="~/favicon.png" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
<form id="Form1" runat="server">      
    <asp:Table ID="panel"  runat="server" BorderStyle="None" CellPadding="0" CellSpacing="0" Font-Bold="True">      
      <asp:TableHeaderRow>
        <asp:TableCell>
          <div class="container">            
            <img style="width:150px;height:45px;" runat="server" src="~/images/徽教网蓝色.png" />
          </div>
          <div class="panel-header">            
            <div class="container">
              <span style="font-size:14pt; float:left;">用户登录</span> 
            </div>
          </div>
        </asp:TableCell>
      </asp:TableHeaderRow>
      <asp:TableRow>
        <asp:TableCell>    
          <div class="panel-content">
            <div class="container">              
              <span class="label">
                <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
              </span>                
              <asp:TextBox ID="userName" CssClass="input" runat="server"></asp:TextBox>  
              <asp:Label ID="Valider1" CssClass="valider" runat="server" Text="请输入用户名"></asp:Label>         
              <p>
                <span class="label">
                  <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
                </span>
                <asp:TextBox ID="password" CssClass="input" runat="server" TextMode="Password"></asp:TextBox>   
                <asp:Label ID="Valider2" CssClass="valider" runat="server" Text="请输入密码"></asp:Label>                 
              </p>
              <p>
              </p>
              <p><br />
                <asp:Button ID="Button1" CssClass="button" runat="server" Text="登陆" 
                  Onclick="Button1_Click"/>&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" CssClass="button" runat="server" Text="返回" 
                  Onclick="Button2_Click"/>
               <span class="container">
                  <span style="font-size:10pt;"><a runat="server" href="~/Account/FindPassword.aspx">忘记密码</a></span>
               </span>
              </p>                 
            </div>
          </div>              
        </asp:TableCell>
      </asp:TableRow>      
    </asp:Table>
    </form>
</body>
</html>

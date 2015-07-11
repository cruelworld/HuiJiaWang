<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class = "body-top-bg">
    <div class ="top-title"></div>

    <div class = "hrzoli">
        <ul>
            <li><p><i class = "fa fa-user"></i><p>用户角色：</p><p>管理员</p></li>
            <li><p><i class = "fa fa-desktop"></i><a href = "../Default.aspx" target="_parent">首页</a></p></li>
            <li><p><i class = "fa fa-refresh"></i>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">刷新</asp:LinkButton>
            </li>
            <li><p><i class = "fa fa-pencil-square-o"></i><a href = "count-person/xgpw.aspx" target="in">修改个人信息</a></p></li>
            <li><p><i class = "fa fa-circle-o-notch"></i><a href = "../Account/Signin.aspx" target="_parent">退出</a></p></li>
        </ul>
    </div>
</div>
    </form>
</body>
</html>

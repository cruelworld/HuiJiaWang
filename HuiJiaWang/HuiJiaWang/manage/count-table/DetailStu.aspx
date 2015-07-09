<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailStu.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="count_table_DetailStu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class = "rightbg">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="修改信息" 
            cssClass = "btn" style = "width: 177px;"/>
    </div>
    <div style = "margin-top: 26px;">
        
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical" Height="50px" Width="100%">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="StudentID" HeaderText="学员编号" 
                    InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="UserName" HeaderText="用户名" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="密码" 
                    SortExpression="Password" />
                <asp:BoundField DataField="TureName" HeaderText="真实名称" 
                    SortExpression="TureName" />
                <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                <asp:BoundField DataField="Grade" HeaderText="年级" SortExpression="Grade" />
                <asp:BoundField DataField="Phone" HeaderText="手机" SortExpression="Phone" />
                <asp:BoundField DataField="MyPhoto" HeaderText="头像" 
                    SortExpression="MyPhoto" />
                <asp:BoundField DataField="Province" HeaderText="省" 
                    SortExpression="Province" />
                <asp:BoundField DataField="Area" HeaderText="区域" SortExpression="Area" />
                <asp:BoundField DataField="DetailAddr" HeaderText="详细地址" 
                    SortExpression="DetailAddr" />
                <asp:BoundField DataField="QQ" HeaderText="QQ" SortExpression="QQ" />
                <asp:BoundField DataField="Email" HeaderText="电子邮件" SortExpression="Email" />
                <asp:BoundField DataField="TeachedSubject" HeaderText="求教科目" 
                    SortExpression="TeachedSubject" />
                <asp:BoundField DataField="TeachedTime" HeaderText="求教时间" 
                    SortExpression="TeachedTime" />
                <asp:BoundField DataField="RequestSex" HeaderText="要求教员性别" 
                    SortExpression="RequestSex" />
                <asp:BoundField DataField="TeachedWay" HeaderText="求教方式" 
                    SortExpression="TeachedWay" />
                <asp:BoundField DataField="Salary" HeaderText="薪资要求" 
                    SortExpression="Salary" />
                <asp:BoundField DataField="TrafficPay" HeaderText="有无车费补贴" 
                    SortExpression="TrafficPay" />
                <asp:BoundField DataField="RequestTeacher" HeaderText="对教员的其他要求" 
                    SortExpression="RequestTeacher" />
                <asp:BoundField DataField="Description" HeaderText="自我描述" 
                    SortExpression="Description" />
                <asp:BoundField DataField="LoginTime" HeaderText="登陆时间" 
                    SortExpression="LoginTime" />
                <asp:BoundField DataField="RegisterTime" HeaderText="注册时间" 
                    SortExpression="RegisterTime" />
                <asp:BoundField DataField="SeeCount" HeaderText="浏览量" 
                    SortExpression="SeeCount" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
        
    </div>
    </form>
</body>
</html>

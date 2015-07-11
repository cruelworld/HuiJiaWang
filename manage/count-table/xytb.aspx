<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xytb.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="count_table_xytb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        .style1
        {
            width: 676px;
            height: 14px;
        }
    </style>
</head>
<body class = "rightborder">
    <form id="form1" runat="server">
    <div class = "rightbg">
       <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="编号"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="47px"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True">选择家教科目</asp:ListItem>
                           <asp:ListItem>学前教育</asp:ListItem>
                           <asp:ListItem>小学语文</asp:ListItem>
                           <asp:ListItem>小学数学</asp:ListItem>
                           <asp:ListItem>小学英语</asp:ListItem>
                           <asp:ListItem>小学奥数</asp:ListItem>
                           <asp:ListItem>小学全科</asp:ListItem>
                           <asp:ListItem>初中语文</asp:ListItem>
                           <asp:ListItem>初中数学</asp:ListItem>
                           <asp:ListItem>初中奥数</asp:ListItem>
                           <asp:ListItem>初中英语</asp:ListItem>
                           <asp:ListItem>初中物理</asp:ListItem>
                           <asp:ListItem>初中化学</asp:ListItem>
                           <asp:ListItem>初中生物</asp:ListItem>
                           <asp:ListItem>初中历史</asp:ListItem>
                           <asp:ListItem>初中政治</asp:ListItem>
                           <asp:ListItem>初中地理</asp:ListItem>
                           <asp:ListItem>初中数理化</asp:ListItem>
                           <asp:ListItem>初中史地政</asp:ListItem>
                           <asp:ListItem>高中语文</asp:ListItem>
                           <asp:ListItem>高中数学</asp:ListItem>
                           <asp:ListItem>高中英语</asp:ListItem>
                           <asp:ListItem>高中政治</asp:ListItem>
                           <asp:ListItem>高中物理</asp:ListItem>
                           <asp:ListItem>高中化学</asp:ListItem>
                           <asp:ListItem>高中生物</asp:ListItem>
                           <asp:ListItem>高中地理</asp:ListItem>
                           <asp:ListItem>高中历史</asp:ListItem>
                           <asp:ListItem>高考英语</asp:ListItem>
                           <asp:ListItem>高考数学</asp:ListItem>
                           <asp:ListItem>高考理综</asp:ListItem>
                           <asp:ListItem>高考文综</asp:ListItem>
                           <asp:ListItem>高考美术</asp:ListItem>
                           <asp:ListItem>考研数学</asp:ListItem>
                           <asp:ListItem>考研英语</asp:ListItem>
                           <asp:ListItem>英语四级</asp:ListItem>
                           <asp:ListItem>英语六级</asp:ListItem>
                           <asp:ListItem>英语口语</asp:ListItem>
                           <asp:ListItem>雅思</asp:ListItem>
                           <asp:ListItem>托福</asp:ListItem>
                           <asp:ListItem>GRE</asp:ListItem>
                           <asp:ListItem>法语</asp:ListItem>
                           <asp:ListItem>德语</asp:ListItem>
                           <asp:ListItem>日语</asp:ListItem>
                           <asp:ListItem>韩语</asp:ListItem>
                           <asp:ListItem>西班牙语</asp:ListItem>
                           <asp:ListItem>计算机基本操作</asp:ListItem>
                           <asp:ListItem>C语言</asp:ListItem>
                           <asp:ListItem>钢琴</asp:ListItem>
                           <asp:ListItem>电子琴</asp:ListItem>
                           <asp:ListItem>大提琴</asp:ListItem>
                           <asp:ListItem>小提琴</asp:ListItem>
                           <asp:ListItem>吉他</asp:ListItem>
                           <asp:ListItem>古筝</asp:ListItem>
                           <asp:ListItem>二胡</asp:ListItem>
                           <asp:ListItem>手风琴</asp:ListItem>
                           <asp:ListItem>单簧管</asp:ListItem>
                           <asp:ListItem>萨克斯</asp:ListItem>
                           <asp:ListItem>打击乐</asp:ListItem>
                           <asp:ListItem>长笛</asp:ListItem>
                           <asp:ListItem>素描</asp:ListItem>
                           <asp:ListItem>美术</asp:ListItem>
                           <asp:ListItem>水粉画</asp:ListItem>
                           <asp:ListItem>声乐</asp:ListItem>
                           <asp:ListItem>唱歌</asp:ListItem>
                           <asp:ListItem>书法</asp:ListItem>
                           <asp:ListItem>象棋</asp:ListItem>
                           <asp:ListItem>篮球</asp:ListItem>
                           <asp:ListItem>足球</asp:ListItem>
                           <asp:ListItem>羽毛球</asp:ListItem>
                           <asp:ListItem>乒乓球</asp:ListItem>
                           <asp:ListItem>网球</asp:ListItem>
                           <asp:ListItem>围棋</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                     <asp:ListItem>选择城市</asp:ListItem>
                           <asp:ListItem>合肥</asp:ListItem>
                           <asp:ListItem>淮南</asp:ListItem>
                           <asp:ListItem>芜湖</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                     <asp:ListItem>学员性别</asp:ListItem>
                           <asp:ListItem>男</asp:ListItem>
                           <asp:ListItem>女</asp:ListItem>
                   
                    
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>教员性别</asp:ListItem>
                           <asp:ListItem>男</asp:ListItem>
                           <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </td>
              
                <td>
                    <asp:Button ID="Button1" runat="server"  onclick="Button1_Click" Text="搜索" 
                        Width="54px" />
                </td>
              
                <asp:Button ID="Button2" runat="server" Text="插入学员" CssClass = "btn" 
                    style = "width: 177px;" onclick="Button2_Click"/>
            </tr>
        </table>
    </div>
    <div style= "margin-top: 26px;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="StudentID" 
            DataSourceID="SqlDataSource2" 
            onrowdeleting="GridView1_RowDeleting" PageSize="50" CssClass="minscr" 
            Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="学员学号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="StudentID" />
                 <asp:HyperLinkField DataTextField = "TureName" HeaderText="真实姓名" 
                    DataNavigateUrlFields="StudentID" 
                    DataNavigateUrlFormatString="DetailStu.aspx?id= {0}" Target="in" />
                <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                <asp:BoundField DataField="Phone" HeaderText="电话" SortExpression="Phone" />
                <asp:BoundField DataField="Area" HeaderText="所在区域" SortExpression="Area" />
                <asp:BoundField DataField="TeachedSubject" HeaderText="要求科目" 
                    SortExpression="TeachedSubject" />
                <asp:BoundField DataField="RequestSex" HeaderText="要求老师性别" 
                    SortExpression="RequestSex" />
                <asp:TemplateField HeaderText="是否已安排">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server"
                            
                            oncheckedchanged="CheckBox2_CheckedChanged" 
                            Checked='<%# Bind("IsArrange") %>' AutoPostBack="True" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="是否显示">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" 
                      
                        oncheckedchanged="CheckBox1_CheckedChanged" 
                            Checked='<%# Bind("IsVisible") %>' AutoPostBack="True" />
                        
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Student]" 
            DeleteCommand="DELETE FROM [Student] WHERE [StudentID] = @StudentID" 
            InsertCommand="INSERT INTO [Student] ([UserName], [Password], [TureName], [Sex], [Grade], [Phone], [MyPhoto], [Province], [Area], [DetailAddr], [QQ], [Email], [TeachedSubject], [TeachedTime], [RequestSex], [TeachedWay], [Salary], [TrafficPay], [RequestTeacher], [Description], [IsVisible], [IsArrange], [LoginTime], [RegisterTime], [SeeCount]) VALUES (@UserName, @Password, @TureName, @Sex, @Grade, @Phone, @MyPhoto, @Province, @Area, @DetailAddr, @QQ, @Email, @TeachedSubject, @TeachedTime, @RequestSex, @TeachedWay, @Salary, @TrafficPay, @RequestTeacher, @Description, @IsVisible, @IsArrange, @LoginTime, @RegisterTime, @SeeCount)" 
            ProviderName="System.Data.SqlClient" 
            UpdateCommand="UPDATE [Student] SET [UserName] = @UserName, [Password] = @Password, [TureName] = @TureName, [Sex] = @Sex, [Grade] = @Grade, [Phone] = @Phone, [MyPhoto] = @MyPhoto, [Province] = @Province, [Area] = @Area, [DetailAddr] = @DetailAddr, [QQ] = @QQ, [Email] = @Email, [TeachedSubject] = @TeachedSubject, [TeachedTime] = @TeachedTime, [RequestSex] = @RequestSex, [TeachedWay] = @TeachedWay, [Salary] = @Salary, [TrafficPay] = @TrafficPay, [RequestTeacher] = @RequestTeacher, [Description] = @Description, [IsVisible] = @IsVisible, [IsArrange] = @IsArrange, [LoginTime] = @LoginTime, [RegisterTime] = @RegisterTime, [SeeCount] = @SeeCount WHERE [StudentID] = @StudentID">
            <DeleteParameters>
                <asp:Parameter Name="StudentID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="TureName" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Grade" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="MyPhoto" Type="String" />
                <asp:Parameter Name="Province" Type="String" />
                <asp:Parameter Name="Area" Type="String" />
                <asp:Parameter Name="DetailAddr" Type="String" />
                <asp:Parameter Name="QQ" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="TeachedSubject" Type="String" />
                <asp:Parameter Name="TeachedTime" Type="String" />
                <asp:Parameter Name="RequestSex" Type="String" />
                <asp:Parameter Name="TeachedWay" Type="String" />
                <asp:Parameter Name="Salary" Type="String" />
                <asp:Parameter Name="TrafficPay" Type="String" />
                <asp:Parameter Name="RequestTeacher" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="IsVisible" Type="Boolean" />
                <asp:Parameter Name="IsArrange" Type="Boolean" />
                <asp:Parameter Name="LoginTime" Type="DateTime" />
                <asp:Parameter Name="RegisterTime" Type="DateTime" />
                <asp:Parameter Name="SeeCount" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="TureName" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Grade" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="MyPhoto" Type="String" />
                <asp:Parameter Name="Province" Type="String" />
                <asp:Parameter Name="Area" Type="String" />
                <asp:Parameter Name="DetailAddr" Type="String" />
                <asp:Parameter Name="QQ" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="TeachedSubject" Type="String" />
                <asp:Parameter Name="TeachedTime" Type="String" />
                <asp:Parameter Name="RequestSex" Type="String" />
                <asp:Parameter Name="TeachedWay" Type="String" />
                <asp:Parameter Name="Salary" Type="String" />
                <asp:Parameter Name="TrafficPay" Type="String" />
                <asp:Parameter Name="RequestTeacher" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="IsVisible" Type="Boolean" />
                <asp:Parameter Name="IsArrange" Type="Boolean" />
                <asp:Parameter Name="LoginTime" Type="DateTime" />
                <asp:Parameter Name="RegisterTime" Type="DateTime" />
                <asp:Parameter Name="SeeCount" Type="Int32" />
                <asp:Parameter Name="StudentID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

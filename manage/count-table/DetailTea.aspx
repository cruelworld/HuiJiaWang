<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailTea.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="count_table_DetailTea" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class = "rightborder">
    <form id="form1" runat="server">
    <div class = "rightbg">
        <asp:Label ID="Label1" runat="server" Text="教员详细信息"></asp:Label>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="修改信息" 
            cssClass = "btn" style = "width: 177px;"/>
    </div>
    <div style = "margin-top: 26px;">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" 
            AutoGenerateRows="False" DataKeyNames="TeacherID" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
            HorizontalAlign="Center" ForeColor="Black">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="TeacherID" HeaderText="教员编号" 
                    InsertVisible="False" ReadOnly="True" SortExpression="TeacherID" />
                <asp:BoundField DataField="UserName" HeaderText="用户名" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="密码" 
                    SortExpression="Password" />
                <asp:BoundField DataField="TureName" HeaderText="真实姓名" 
                    SortExpression="TureName" />
                <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                <asp:BoundField DataField="Role" HeaderText="身份" SortExpression="Role" />
                <asp:BoundField DataField="Grade" HeaderText="学历" SortExpression="Grade" />
                <asp:BoundField DataField="Major" HeaderText="专业" SortExpression="Major" />
                <asp:BoundField DataField="School" HeaderText="学校" 
                    SortExpression="School" />
                <asp:BoundField DataField="Birthday" HeaderText="生日" 
                    SortExpression="Birthday" />
                <asp:BoundField DataField="Nation" HeaderText="民族" 
                    SortExpression="Nation" />
                <asp:BoundField DataField="MyPhoto" HeaderText="照片" 
                    SortExpression="MyPhoto" />
                <asp:BoundField DataField="IDCard" HeaderText="身份证" 
                    SortExpression="IDCard" />
                <asp:BoundField DataField="Phone" HeaderText="手机" SortExpression="Phone" />
                <asp:BoundField DataField="PoliticalStatus" HeaderText="政治面貌" 
                    SortExpression="PoliticalStatus" />
                <asp:BoundField DataField="Province" HeaderText="所住省份" 
                    SortExpression="Province" />
                <asp:BoundField DataField="Area" HeaderText="区域" SortExpression="Area" />
                <asp:BoundField DataField="DetailAddr" HeaderText="详细地址" 
                    SortExpression="DetailAddr" />
                <asp:BoundField DataField="Origin" HeaderText="出生地" 
                    SortExpression="Origin" />
                <asp:BoundField DataField="HighSchool" HeaderText="高中" 
                    SortExpression="HighSchool" />
                <asp:BoundField DataField="QQ" HeaderText="QQ" SortExpression="QQ" />
                <asp:BoundField DataField="Email" HeaderText="电子邮件" SortExpression="Email" />
                <asp:BoundField DataField="TeachingSubject" HeaderText="授课科目" 
                    SortExpression="TeachingSubject" />
                <asp:BoundField DataField="TeachingArea" HeaderText="授课区域" 
                    SortExpression="TeachingArea" />
                <asp:BoundField DataField="TeachingWay" HeaderText="授课方式" 
                    SortExpression="TeachingWay" />
                <asp:BoundField DataField="TeachingTime" HeaderText="授课时间" 
                    SortExpression="TeachingTime" />
                <asp:BoundField DataField="Salary" HeaderText="薪资标准" 
                    SortExpression="Salary" />
                <asp:BoundField DataField="Description" HeaderText="自我描述" 
                    SortExpression="Description" />
                <asp:BoundField DataField="LoginTime" HeaderText="登陆时间" 
                    SortExpression="LoginTime" />
                <asp:BoundField DataField="RegisterTime" HeaderText="注册时间" 
                    SortExpression="RegisterTime" />
                <asp:BoundField DataField="SeeCount" HeaderText="浏览量" 
                    SortExpression="SeeCount" />
                <asp:BoundField DataField="TeachingCount" HeaderText="成功家教次数" 
                    SortExpression="TeachingCount" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:Image ID="Image1" runat="server" Height="160px" Width="100px" 
            cssClass = "img" GenerateEmptyAlternateText="True" BorderStyle="Solid"
            ForeColor="White"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Teacher] WHERE [TeacherID] = @TeacherID" 
            InsertCommand="INSERT INTO [Teacher] ([UserName], [Password], [TureName], [Sex], [Role], [Grade], [Major], [School], [Birthday], [Nation], [MyPhoto], [IDCard], [Phone], [PoliticalStatus], [Province], [Area], [DetailAddr], [Origin], [HighSchool], [QQ], [Email], [TeachingSubject], [TeachingArea], [TeachingWay], [TeachingTime], [Salary], [Description], [IsVisible], [IsProfession], [IsSign], [IsIdentify], [LoginTime], [RegisterTime], [SeeCount], [TeachingCount]) VALUES (@UserName, @Password, @TureName, @Sex, @Role, @Grade, @Major, @School, @Birthday, @Nation, @MyPhoto, @IDCard, @Phone, @PoliticalStatus, @Province, @Area, @DetailAddr, @Origin, @HighSchool, @QQ, @Email, @TeachingSubject, @TeachingArea, @TeachingWay, @TeachingTime, @Salary, @Description, @IsVisible, @IsProfession, @IsSign, @IsIdentify, @LoginTime, @RegisterTime, @SeeCount, @TeachingCount)" 
            SelectCommand="SELECT * FROM [Teacher]" 
            UpdateCommand="UPDATE [Teacher] SET [UserName] = @UserName, [Password] = @Password, [TureName] = @TureName, [Sex] = @Sex, [Role] = @Role, [Grade] = @Grade, [Major] = @Major, [School] = @School, [Birthday] = @Birthday, [Nation] = @Nation, [MyPhoto] = @MyPhoto, [IDCard] = @IDCard, [Phone] = @Phone, [PoliticalStatus] = @PoliticalStatus, [Province] = @Province, [Area] = @Area, [DetailAddr] = @DetailAddr, [Origin] = @Origin, [HighSchool] = @HighSchool, [QQ] = @QQ, [Email] = @Email, [TeachingSubject] = @TeachingSubject, [TeachingArea] = @TeachingArea, [TeachingWay] = @TeachingWay, [TeachingTime] = @TeachingTime, [Salary] = @Salary, [Description] = @Description, [IsVisible] = @IsVisible, [IsProfession] = @IsProfession, [IsSign] = @IsSign, [IsIdentify] = @IsIdentify, [LoginTime] = @LoginTime, [RegisterTime] = @RegisterTime, [SeeCount] = @SeeCount, [TeachingCount] = @TeachingCount WHERE [TeacherID] = @TeacherID">
            <DeleteParameters>
                <asp:Parameter Name="TeacherID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="TureName" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="Grade" Type="String" />
                <asp:Parameter Name="Major" Type="String" />
                <asp:Parameter Name="School" Type="String" />
                <asp:Parameter Name="Birthday" Type="DateTime" />
                <asp:Parameter Name="Nation" Type="String" />
                <asp:Parameter Name="MyPhoto" Type="String" />
                <asp:Parameter Name="IDCard" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="PoliticalStatus" Type="String" />
                <asp:Parameter Name="Province" Type="String" />
                <asp:Parameter Name="Area" Type="String" />
                <asp:Parameter Name="DetailAddr" Type="String" />
                <asp:Parameter Name="Origin" Type="String" />
                <asp:Parameter Name="HighSchool" Type="String" />
                <asp:Parameter Name="QQ" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="TeachingSubject" Type="String" />
                <asp:Parameter Name="TeachingArea" Type="String" />
                <asp:Parameter Name="TeachingWay" Type="String" />
                <asp:Parameter Name="TeachingTime" Type="String" />
                <asp:Parameter Name="Salary" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="IsVisible" Type="Boolean" />
                <asp:Parameter Name="IsProfession" Type="Boolean" />
                <asp:Parameter Name="IsSign" Type="Boolean" />
                <asp:Parameter Name="IsIdentify" Type="Boolean" />
                <asp:Parameter Name="LoginTime" Type="DateTime" />
                <asp:Parameter Name="RegisterTime" Type="DateTime" />
                <asp:Parameter Name="SeeCount" Type="Int32" />
                <asp:Parameter Name="TeachingCount" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="TureName" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="Grade" Type="String" />
                <asp:Parameter Name="Major" Type="String" />
                <asp:Parameter Name="School" Type="String" />
                <asp:Parameter Name="Birthday" Type="DateTime" />
                <asp:Parameter Name="Nation" Type="String" />
                <asp:Parameter Name="MyPhoto" Type="String" />
                <asp:Parameter Name="IDCard" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="PoliticalStatus" Type="String" />
                <asp:Parameter Name="Province" Type="String" />
                <asp:Parameter Name="Area" Type="String" />
                <asp:Parameter Name="DetailAddr" Type="String" />
                <asp:Parameter Name="Origin" Type="String" />
                <asp:Parameter Name="HighSchool" Type="String" />
                <asp:Parameter Name="QQ" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="TeachingSubject" Type="String" />
                <asp:Parameter Name="TeachingArea" Type="String" />
                <asp:Parameter Name="TeachingWay" Type="String" />
                <asp:Parameter Name="TeachingTime" Type="String" />
                <asp:Parameter Name="Salary" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="IsVisible" Type="Boolean" />
                <asp:Parameter Name="IsProfession" Type="Boolean" />
                <asp:Parameter Name="IsSign" Type="Boolean" />
                <asp:Parameter Name="IsIdentify" Type="Boolean" />
                <asp:Parameter Name="LoginTime" Type="DateTime" />
                <asp:Parameter Name="RegisterTime" Type="DateTime" />
                <asp:Parameter Name="SeeCount" Type="Int32" />
                <asp:Parameter Name="TeachingCount" Type="Int32" />
                <asp:Parameter Name="TeacherID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

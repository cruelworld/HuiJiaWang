<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jytb.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="count_table_jytb" %>

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
        <div>
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
                     <asp:ListItem>选择学历</asp:ListItem>
                           <asp:ListItem>大专以下</asp:ListItem>
                           <asp:ListItem>大专在读</asp:ListItem>
                           <asp:ListItem>大专毕业</asp:ListItem>
                           <asp:ListItem>本科在读</asp:ListItem>
                           <asp:ListItem>本科毕业</asp:ListItem>
                           <asp:ListItem>硕士在读</asp:ListItem>
                           <asp:ListItem>硕士毕业</asp:ListItem>
                           <asp:ListItem>博士在读</asp:ListItem>
                           <asp:ListItem>博士毕业</asp:ListItem>
                    
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem>性别</asp:ListItem>
                           <asp:ListItem>男</asp:ListItem>
                           <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </td>
              
                <td>
                    <asp:Button ID="Button1" runat="server"  onclick="Button1_Click" Text="搜索" 
                        Width="54px" />
                </td>
              
                <asp:Button ID="Button2" runat="server" Text="插入教员" CssClass = "btn" 
                    style = "width: 177px;" onclick="Button2_Click"/>
            </tr>
        </table>
        </div>
    </div>
    <div style= "margin-top: 26px;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="TeacherID" 
            DataSourceID="SqlDataSource1" 
            onrowdeleting="GridView1_RowDeleting" PageSize="50" CssClass="minscr" 
            Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="TeacherID" HeaderText="教师编号" 
                    InsertVisible="False" ReadOnly="True" SortExpression="TeacherID" />
                
                <asp:HyperLinkField DataTextField = "TureName" HeaderText="真实姓名" 
                    DataNavigateUrlFields="TeacherID" 
                    DataNavigateUrlFormatString="DetailTea.aspx?id= {0}" Target="in" />
                <asp:BoundField DataField="Sex" HeaderText="性别" 
                    SortExpression="Sex" />
                <asp:BoundField DataField="Role" HeaderText="身份" SortExpression="Role" />
                <asp:BoundField DataField="Area" HeaderText="所住地区" SortExpression="Area" />
                <asp:BoundField DataField="Grade" HeaderText="学历" SortExpression="Grade" />
                <asp:BoundField DataField="Phone" HeaderText="电话" SortExpression="Phone" />
                <asp:BoundField DataField="TeachingSubject" HeaderText="授教科目" 
                    SortExpression="TeachingSubject" />
                <asp:TemplateField HeaderText="是否为金牌教员">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                            Checked='<%# Bind("IsProfession") %>' 
                            oncheckedchanged="CheckBox1_CheckedChanged" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="是否为签约教员">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" 
                        AutoPostBack="True" 
                            Checked='<%# Bind("IsSign") %>' 
                             oncheckedchanged="CheckBox2_CheckedChanged" EnableTheming="True" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="是否认证">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox3" runat="server" 
                        AutoPostBack="True" 
                            Checked='<%# Bind("IsIdentify") %>'
                             oncheckedchanged="CheckBox3_CheckedChanged" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="是否显示">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox4" runat="server" 
                        AutoPostBack="True" 
                            Checked='<%# Bind("IsVisible") %>' 
                             oncheckedchanged="CheckBox4_CheckedChanged" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Teacher] WHERE [TeacherID] = @original_TeacherID AND [UserName] = @original_UserName AND [Password] = @original_Password AND [TureName] = @original_TureName AND [Sex] = @original_Sex AND [Role] = @original_Role AND [Grade] = @original_Grade AND (([Major] = @original_Major) OR ([Major] IS NULL AND @original_Major IS NULL)) AND (([School] = @original_School) OR ([School] IS NULL AND @original_School IS NULL)) AND (([Birthday] = @original_Birthday) OR ([Birthday] IS NULL AND @original_Birthday IS NULL)) AND (([Nation] = @original_Nation) OR ([Nation] IS NULL AND @original_Nation IS NULL)) AND [IDCard] = @original_IDCard AND [Phone] = @original_Phone AND (([PoliticalStatus] = @original_PoliticalStatus) OR ([PoliticalStatus] IS NULL AND @original_PoliticalStatus IS NULL)) AND (([Province] = @original_Province) OR ([Province] IS NULL AND @original_Province IS NULL)) AND (([Area] = @original_Area) OR ([Area] IS NULL AND @original_Area IS NULL)) AND (([DetailAddr] = @original_DetailAddr) OR ([DetailAddr] IS NULL AND @original_DetailAddr IS NULL)) AND (([Origin] = @original_Origin) OR ([Origin] IS NULL AND @original_Origin IS NULL)) AND (([HighSchool] = @original_HighSchool) OR ([HighSchool] IS NULL AND @original_HighSchool IS NULL)) AND (([QQ] = @original_QQ) OR ([QQ] IS NULL AND @original_QQ IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([TeachingSubject] = @original_TeachingSubject) OR ([TeachingSubject] IS NULL AND @original_TeachingSubject IS NULL)) AND (([TeachingArea] = @original_TeachingArea) OR ([TeachingArea] IS NULL AND @original_TeachingArea IS NULL)) AND (([TeachingWay] = @original_TeachingWay) OR ([TeachingWay] IS NULL AND @original_TeachingWay IS NULL)) AND (([TeachingTime] = @original_TeachingTime) OR ([TeachingTime] IS NULL AND @original_TeachingTime IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([IsVisible] = @original_IsVisible) OR ([IsVisible] IS NULL AND @original_IsVisible IS NULL)) AND (([IsProfession] = @original_IsProfession) OR ([IsProfession] IS NULL AND @original_IsProfession IS NULL)) AND (([IsSign] = @original_IsSign) OR ([IsSign] IS NULL AND @original_IsSign IS NULL)) AND (([IsIdentify] = @original_IsIdentify) OR ([IsIdentify] IS NULL AND @original_IsIdentify IS NULL)) AND (([LoginTime] = @original_LoginTime) OR ([LoginTime] IS NULL AND @original_LoginTime IS NULL)) AND (([RegisterTime] = @original_RegisterTime) OR ([RegisterTime] IS NULL AND @original_RegisterTime IS NULL)) AND (([SeeCount] = @original_SeeCount) OR ([SeeCount] IS NULL AND @original_SeeCount IS NULL)) AND (([TeachingCount] = @original_TeachingCount) OR ([TeachingCount] IS NULL AND @original_TeachingCount IS NULL))" 
            InsertCommand="INSERT INTO [Teacher] ([UserName], [Password], [TureName], [Sex], [Role], [Grade], [Major], [School], [Birthday], [Nation], [IDCard], [Phone], [PoliticalStatus], [Province], [Area], [DetailAddr], [Origin], [HighSchool], [QQ], [Email], [TeachingSubject], [TeachingArea], [TeachingWay], [TeachingTime], [Salary], [Description], [IsVisible], [IsProfession], [IsSign], [IsIdentify], [LoginTime], [RegisterTime], [SeeCount], [TeachingCount]) VALUES (@UserName, @Password, @TureName, @Sex, @Role, @Grade, @Major, @School, @Birthday, @Nation, @IDCard, @Phone, @PoliticalStatus, @Province, @Area, @DetailAddr, @Origin, @HighSchool, @QQ, @Email, @TeachingSubject, @TeachingArea, @TeachingWay, @TeachingTime, @Salary, @Description, @IsVisible, @IsProfession, @IsSign, @IsIdentify, @LoginTime, @RegisterTime, @SeeCount, @TeachingCount)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Teacher] ORDER BY [RegisterTime] DESC" 
            UpdateCommand="UPDATE [Teacher] SET [UserName] = @UserName, [Password] = @Password, [TureName] = @TureName, [Sex] = @Sex, [Role] = @Role, [Grade] = @Grade, [Major] = @Major, [School] = @School, [Birthday] = @Birthday, [Nation] = @Nation, [IDCard] = @IDCard, [Phone] = @Phone, [PoliticalStatus] = @PoliticalStatus, [Province] = @Province, [Area] = @Area, [DetailAddr] = @DetailAddr, [Origin] = @Origin, [HighSchool] = @HighSchool, [QQ] = @QQ, [Email] = @Email, [TeachingSubject] = @TeachingSubject, [TeachingArea] = @TeachingArea, [TeachingWay] = @TeachingWay, [TeachingTime] = @TeachingTime, [Salary] = @Salary, [Description] = @Description, [IsVisible] = @IsVisible, [IsProfession] = @IsProfession, [IsSign] = @IsSign, [IsIdentify] = @IsIdentify, [LoginTime] = @LoginTime, [RegisterTime] = @RegisterTime, [SeeCount] = @SeeCount, [TeachingCount] = @TeachingCount WHERE [TeacherID] = @original_TeacherID AND [UserName] = @original_UserName AND [Password] = @original_Password AND [TureName] = @original_TureName AND [Sex] = @original_Sex AND [Role] = @original_Role AND [Grade] = @original_Grade AND (([Major] = @original_Major) OR ([Major] IS NULL AND @original_Major IS NULL)) AND (([School] = @original_School) OR ([School] IS NULL AND @original_School IS NULL)) AND (([Birthday] = @original_Birthday) OR ([Birthday] IS NULL AND @original_Birthday IS NULL)) AND (([Nation] = @original_Nation) OR ([Nation] IS NULL AND @original_Nation IS NULL)) AND [IDCard] = @original_IDCard AND [Phone] = @original_Phone AND (([PoliticalStatus] = @original_PoliticalStatus) OR ([PoliticalStatus] IS NULL AND @original_PoliticalStatus IS NULL)) AND (([Province] = @original_Province) OR ([Province] IS NULL AND @original_Province IS NULL)) AND (([Area] = @original_Area) OR ([Area] IS NULL AND @original_Area IS NULL)) AND (([DetailAddr] = @original_DetailAddr) OR ([DetailAddr] IS NULL AND @original_DetailAddr IS NULL)) AND (([Origin] = @original_Origin) OR ([Origin] IS NULL AND @original_Origin IS NULL)) AND (([HighSchool] = @original_HighSchool) OR ([HighSchool] IS NULL AND @original_HighSchool IS NULL)) AND (([QQ] = @original_QQ) OR ([QQ] IS NULL AND @original_QQ IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([TeachingSubject] = @original_TeachingSubject) OR ([TeachingSubject] IS NULL AND @original_TeachingSubject IS NULL)) AND (([TeachingArea] = @original_TeachingArea) OR ([TeachingArea] IS NULL AND @original_TeachingArea IS NULL)) AND (([TeachingWay] = @original_TeachingWay) OR ([TeachingWay] IS NULL AND @original_TeachingWay IS NULL)) AND (([TeachingTime] = @original_TeachingTime) OR ([TeachingTime] IS NULL AND @original_TeachingTime IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([IsVisible] = @original_IsVisible) OR ([IsVisible] IS NULL AND @original_IsVisible IS NULL)) AND (([IsProfession] = @original_IsProfession) OR ([IsProfession] IS NULL AND @original_IsProfession IS NULL)) AND (([IsSign] = @original_IsSign) OR ([IsSign] IS NULL AND @original_IsSign IS NULL)) AND (([IsIdentify] = @original_IsIdentify) OR ([IsIdentify] IS NULL AND @original_IsIdentify IS NULL)) AND (([LoginTime] = @original_LoginTime) OR ([LoginTime] IS NULL AND @original_LoginTime IS NULL)) AND (([RegisterTime] = @original_RegisterTime) OR ([RegisterTime] IS NULL AND @original_RegisterTime IS NULL)) AND (([SeeCount] = @original_SeeCount) OR ([SeeCount] IS NULL AND @original_SeeCount IS NULL)) AND (([TeachingCount] = @original_TeachingCount) OR ([TeachingCount] IS NULL AND @original_TeachingCount IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TeacherID" Type="Int32" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_TureName" Type="String" />
                <asp:Parameter Name="original_Sex" Type="String" />
                <asp:Parameter Name="original_Role" Type="String" />
                <asp:Parameter Name="original_Grade" Type="String" />
                <asp:Parameter Name="original_Major" Type="String" />
                <asp:Parameter Name="original_School" Type="String" />
                <asp:Parameter Name="original_Birthday" Type="DateTime" />
                <asp:Parameter Name="original_Nation" Type="String" />
                <asp:Parameter Name="original_IDCard" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_PoliticalStatus" Type="String" />
                <asp:Parameter Name="original_Province" Type="String" />
                <asp:Parameter Name="original_Area" Type="String" />
                <asp:Parameter Name="original_DetailAddr" Type="String" />
                <asp:Parameter Name="original_Origin" Type="String" />
                <asp:Parameter Name="original_HighSchool" Type="String" />
                <asp:Parameter Name="original_QQ" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_TeachingSubject" Type="String" />
                <asp:Parameter Name="original_TeachingArea" Type="String" />
                <asp:Parameter Name="original_TeachingWay" Type="String" />
                <asp:Parameter Name="original_TeachingTime" Type="String" />
                <asp:Parameter Name="original_Salary" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_IsVisible" Type="Boolean" />
                <asp:Parameter Name="original_IsProfession" Type="Boolean" />
                <asp:Parameter Name="original_IsSign" Type="Boolean" />
                <asp:Parameter Name="original_IsIdentify" Type="Boolean" />
                <asp:Parameter Name="original_LoginTime" Type="DateTime" />
                <asp:Parameter Name="original_RegisterTime" Type="DateTime" />
                <asp:Parameter Name="original_SeeCount" Type="Int32" />
                <asp:Parameter Name="original_TeachingCount" Type="Int32" />
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
                <asp:Parameter Name="original_TeacherID" Type="Int32" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_TureName" Type="String" />
                <asp:Parameter Name="original_Sex" Type="String" />
                <asp:Parameter Name="original_Role" Type="String" />
                <asp:Parameter Name="original_Grade" Type="String" />
                <asp:Parameter Name="original_Major" Type="String" />
                <asp:Parameter Name="original_School" Type="String" />
                <asp:Parameter Name="original_Birthday" Type="DateTime" />
                <asp:Parameter Name="original_Nation" Type="String" />
                <asp:Parameter Name="original_IDCard" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_PoliticalStatus" Type="String" />
                <asp:Parameter Name="original_Province" Type="String" />
                <asp:Parameter Name="original_Area" Type="String" />
                <asp:Parameter Name="original_DetailAddr" Type="String" />
                <asp:Parameter Name="original_Origin" Type="String" />
                <asp:Parameter Name="original_HighSchool" Type="String" />
                <asp:Parameter Name="original_QQ" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_TeachingSubject" Type="String" />
                <asp:Parameter Name="original_TeachingArea" Type="String" />
                <asp:Parameter Name="original_TeachingWay" Type="String" />
                <asp:Parameter Name="original_TeachingTime" Type="String" />
                <asp:Parameter Name="original_Salary" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_IsVisible" Type="Boolean" />
                <asp:Parameter Name="original_IsProfession" Type="Boolean" />
                <asp:Parameter Name="original_IsSign" Type="Boolean" />
                <asp:Parameter Name="original_IsIdentify" Type="Boolean" />
                <asp:Parameter Name="original_LoginTime" Type="DateTime" />
                <asp:Parameter Name="original_RegisterTime" Type="DateTime" />
                <asp:Parameter Name="original_SeeCount" Type="Int32" />
                <asp:Parameter Name="original_TeachingCount" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
    </form>
</body>
</html>

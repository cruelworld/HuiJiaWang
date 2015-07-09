<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jyorder.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="count_table_jyorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class = "rightborder">
    <form id="form1" runat="server">
    <div class = "rightbg">
        教员预定
    </div>
     <div style = "margin-top: 27px;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
             AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="OrderID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" onrowdeleting="GridView1_RowDeleting" PageSize="50" 
            Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="订单号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="StudentName" HeaderText="学员姓名" 
                    SortExpression="StudentName" />
               <asp:HyperLinkField DataTextField = "TeacherID" HeaderText="教员编号" 
                    DataNavigateUrlFields="TeacherID" 
                    DataNavigateUrlFormatString="DetailTea.aspx?id= {0}" Target="in" />
                <asp:BoundField DataField="Phone" HeaderText="手机号" SortExpression="Phone" />
                <asp:BoundField DataField="Email" HeaderText="电子邮件" SortExpression="Email" />
                <asp:BoundField DataField="TeachedArea" HeaderText="求教区域" 
                    SortExpression="TeachedArea" />
                <asp:BoundField DataField="OrderTime" HeaderText="订单时间" 
                    SortExpression="OrderTime" />
                <asp:TemplateField HeaderText="是否已成功">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                            Checked='<%# Bind("IsOK") %>' oncheckedchanged="CheckBox1_CheckedChanged" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="删除"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Book_Teacher] WHERE [OrderID] = @OrderID" 
            InsertCommand="INSERT INTO [Book_Teacher] ([TeacherID], [StudentName], [Phone], [Email], [TeachedArea], [IsOK]) VALUES (@TeacherID, @StudentName, @Phone, @Email, @TeachedArea, @IsOK)" 
            SelectCommand="SELECT * FROM [Book_Teacher] ORDER BY [OrderTime] DESC" 
            
             UpdateCommand="UPDATE [Book_Teacher] SET [TeacherID] = @TeacherID, [StudentName] = @StudentName, [Phone] = @Phone, [Email] = @Email, [TeachedArea] = @TeachedArea, [IsOK] = @IsOK WHERE [OrderID] = @OrderID">
            <DeleteParameters>
                <asp:Parameter Name="OrderID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TeacherID" Type="Int32" />
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="TeachedArea" Type="String" />
                <asp:Parameter Name="IsOK" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TeacherID" Type="Int32" />
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="TeachedArea" Type="String" />
                <asp:Parameter Name="IsOK" Type="Boolean" />
                <asp:Parameter Name="OrderID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

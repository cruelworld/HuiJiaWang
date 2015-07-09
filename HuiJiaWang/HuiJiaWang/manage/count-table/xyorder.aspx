<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xyorder.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="count_table_xyorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body class = "rightborder">
    <form id="form1" runat="server">
    <div class = "rightbg">
        学员预定
    </div>
      <div style = "margin-top: 27px;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
              AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="OrderID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" Width="100%" PageSize="50" 
             onrowdeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="订单号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="OrderID" />
               <asp:HyperLinkField DataTextField = "StudentID" HeaderText="学员编号" 
                    DataNavigateUrlFields="StudentID" 
                    DataNavigateUrlFormatString="DetailStu.aspx?id= {0}" Target="in" />
                <asp:HyperLinkField DataTextField = "TeacherID" HeaderText="教员编号" 
                    DataNavigateUrlFields="TeacherID" 
                    DataNavigateUrlFormatString="DetailTea.aspx?id= {0}" Target="in" />
                <asp:BoundField DataField="TeacherName" HeaderText="教员姓名" 
                    SortExpression="TeacherName" />
                <asp:BoundField DataField="Phone" HeaderText="手机" SortExpression="Phone" />
                <asp:BoundField DataField="TeachingArea" HeaderText="授教说明" 
                    SortExpression="TeachingArea" />
                <asp:BoundField DataField="OrderTime" HeaderText="订单时间" 
                    SortExpression="OrderTime" />
                <asp:TemplateField HeaderText="是否已成功">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("IsOk") %>' 
                            AutoPostBack="True" oncheckedchanged="CheckBox1_CheckedChanged" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="是否合法">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("IsLegal") %>' 
                            AutoPostBack="True" oncheckedchanged="CheckBox2_CheckedChanged" />
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
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Order_Student] WHERE [OrderID] = @OrderID" 
            InsertCommand="INSERT INTO [Order_Student] ([StudentID], [TeacherID], [TeacherName], [Phone], [TeachingArea], [OrderTime], [IsOk], [IsLegal]) VALUES (@StudentID, @TeacherID, @TeacherName, @Phone, @TeachingArea, @OrderTime, @IsOk, @IsLegal)" 
            SelectCommand="SELECT * FROM [Order_Student] ORDER BY [OrderTime] DESC" 
            UpdateCommand="UPDATE [Order_Student] SET [StudentID] = @StudentID, [TeacherID] = @TeacherID, [TeacherName] = @TeacherName, [Phone] = @Phone, [TeachingArea] = @TeachingArea, [OrderTime] = @OrderTime, [IsOk] = @IsOk, [IsLegal] = @IsLegal WHERE [OrderID] = @OrderID">
            <DeleteParameters>
                <asp:Parameter Name="OrderID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StudentID" Type="Int32" />
                <asp:Parameter Name="TeacherID" Type="Int32" />
                <asp:Parameter Name="TeacherName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="TeachingArea" Type="String" />
                <asp:Parameter Name="OrderTime" Type="String" />
                <asp:Parameter Name="IsOk" Type="Boolean" />
                <asp:Parameter Name="IsLegal" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentID" Type="Int32" />
                <asp:Parameter Name="TeacherID" Type="Int32" />
                <asp:Parameter Name="TeacherName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="TeachingArea" Type="String" />
                <asp:Parameter Name="OrderTime" Type="String" />
                <asp:Parameter Name="IsOk" Type="Boolean" />
                <asp:Parameter Name="IsLegal" Type="Boolean" />
                <asp:Parameter Name="OrderID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
      </div>
    </form>
</body>
</html>

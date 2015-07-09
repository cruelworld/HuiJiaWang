<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yj.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="manage_count_about_yj" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" class = "rightborder">
    <div>
        <div class = "rightbg">
                意见反馈
            </div>
            <div class = "container">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                    PageSize="30" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="Opinion" HeaderText="建议" SortExpression="Opinion" />
                        <asp:BoundField DataField="Name" HeaderText="建议人" SortExpression="Name" />
                        <asp:BoundField DataField="Phone" HeaderText="电话" SortExpression="Phone" />
                        <asp:BoundField DataField="WriteTime" HeaderText="时间" 
                            SortExpression="WriteTime" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                    DeleteCommand="DELETE FROM [Opinion] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Opinion] ([Opinion], [Name], [Phone], [WriteTime]) VALUES (@Opinion, @Name, @Phone, @WriteTime)" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT * FROM [Opinion] ORDER BY [WriteTime] DESC" 
                    UpdateCommand="UPDATE [Opinion] SET [Opinion] = @Opinion, [Name] = @Name, [Phone] = @Phone, [WriteTime] = @WriteTime WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Opinion" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="WriteTime" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Opinion" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="WriteTime" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>  
    </div>
    </form>
</body>
</html>

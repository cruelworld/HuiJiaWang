<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhmm.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="manage_count_about_zhmm" %>

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
            找回密码
        </div>
        <div class = "container">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FindID" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                PageSize="30" Width="100%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="FindID" HeaderText="编号" InsertVisible="False" 
                        ReadOnly="True" SortExpression="FindID" />
                    <asp:BoundField DataField="TureName" HeaderText="真实姓名" 
                        SortExpression="TureName" />
                    <asp:BoundField DataField="IDCard" HeaderText="身份证号" SortExpression="IDCard" />
                    <asp:BoundField DataField="Phone" HeaderText="电话" SortExpression="Phone" />
                    <asp:BoundField DataField="LostTime" HeaderText="忘记时间" 
                        SortExpression="LostTime" />
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
                DeleteCommand="DELETE FROM [FindPw] WHERE [FindID] = @FindID" 
                InsertCommand="INSERT INTO [FindPw] ([TureName], [IDCard], [Phone], [Email], [LostTime]) VALUES (@TureName, @IDCard, @Phone, @Email, @LostTime)" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT * FROM [FindPw] ORDER BY [LostTime] DESC" 
                UpdateCommand="UPDATE [FindPw] SET [TureName] = @TureName, [IDCard] = @IDCard, [Phone] = @Phone, [Email] = @Email, [LostTime] = @LostTime WHERE [FindID] = @FindID">
                <DeleteParameters>
                    <asp:Parameter Name="FindID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TureName" Type="String" />
                    <asp:Parameter Name="IDCard" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="LostTime" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TureName" Type="String" />
                    <asp:Parameter Name="IDCard" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="LostTime" Type="String" />
                    <asp:Parameter Name="FindID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>

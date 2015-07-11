<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addgly.aspx.cs" Inherits="count_person_addgly" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
 
    <style type="text/css">
        .style3
        {
            height: 32px;
            width: 314px;
        }
        .style4
        {
            height: 32px;
            width: 141px;
            text-align: right;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            text-align: right;
            width: 141px;
        }
        .style7
        {
            text-align: right;
            height: 27px;
            width: 141px;
        }
        .style8
        {
            height: 27px;
            width: 314px;
        }
        .style9
        {
            width: 314px;
        }
    </style>
 
</head>
<body class = "rightborder">
    <form id="form1" runat="server">
    <div class = "rightbg">
        添加管理员
    </div>
    <div class = "container">
       <div class = "shipp">
                
           <table class="tablesl">
               <tr>
                   <td class="tabletop">
                       </td>
               </tr>
               <tr>
                   <td>
                       <table class="tab">
                           <tr>
                               <td class="style4">
                                   管理员名:</td>
                               <td class="style3">
                                   <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                                       ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                                   <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td class="style6">
                                   密码：</td>
                               <td class="style9">
                                   <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                   <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                       ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="不一致" 
                                       ForeColor="Red"></asp:CompareValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style7">
                                   确认密码:</td>
                               <td class="style8">
                                   <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="style7">
                                   管理员密码:</td>
                               <td class="style8">
                                   <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                       ControlToValidate="TextBox4" ErrorMessage="必填" ForeColor="Red"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <tr>
                               <td class="style5" colspan="2">
                                   <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                       style="margin-left: 0px" Text="确定" Width="77px" />
                                   <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                       style="margin-left: 21px" Text="取消" Width="77px" />
                               </td>
                           </tr>
                       </table>
                   </td>
               </tr>
           </table>
                
       </div>

    </div>
    </form>
</body>
</html>

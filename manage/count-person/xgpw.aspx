<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xgpw.aspx.cs" Inherits="count_person_xgpw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style4
        {
            height: 32px;
            width: 118px;
            text-align: right;
        }
        .style3
        {
            height: 32px;
        }
        .style6
        {
            text-align: right;
        }
        .style7
        {
            text-align: right;
            height: 27px;
        }
        .style8
        {
            height: 27px;
        }
        .style5
        {
            text-align: center;
        }
    </style>
</head>
<body class = "rightborder">
    <form id="form1" runat="server">
    <div class = "rightbg">
        修改密码
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
                                   登陆密码:</td>
                               <td class="style3">
                                   <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                               </td>
                           </tr>
                           <tr>
                               <td class="style6">
                                   新密码:</td>
                               <td>
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
                                   <asp:Button ID="Button1" runat="server" Text="确定" Width="77px" 
                                       onclick="Button1_Click" style="height: 21px" />
                                   <asp:Button ID="Button2" runat="server" style="margin-left: 21px" Text="取消" 
                                       Width="77px" onclick="Button2_Click" />
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

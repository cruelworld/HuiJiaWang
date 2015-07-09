<%@ Page Title="学员详情" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Student_Detail.aspx.cs" Inherits="Student_Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" runat = "server">
<div class="container">
    <ol class="breadcrumb">
      <li><a href="Teacher_Center.aspx">教员中心</a></li>
      <li class="active">教员详情</li>
      <li>学员姓名</li>
    </ol>
    <div class="row">
      <div class="col-md-2">
          <asp:Image ID="Image1" runat="server" Height="185px" Width="130px" />
      </div>
      <div class="col-md-8 col-md-offset-0">
        <table  class="table table-bordered">
          <tr>
            <th>学员编号:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </th>
            <th>姓名:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></th>
            <%--<td>联系方式</td>--%>
            <td>
              <asp:LinkButton ID="LinkButton1" runat="server" 
                  PostBackUrl="~/Order_Student.aspx">在线预约</asp:LinkButton></td>
          </tr>
        </table>
        <table class="table table-bordered">
          <tr>
            <td class="gray">登陆时间：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> </td>
          </tr>
        </table>
        <table class="table table-bordered">
          <tr>
          <%-- <th>女</th>
           <th>学员年级</th>
           <th>所在区域</th>
           <th>有无车费补贴</th>
           <th>湖北师范学院</th>--%>
           <th>
           <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></th>
            <th>
           <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></th>
            <th>
           <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></th>
            <th>
           <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></th>
            <th>
           
          </tr>
        </table><br />
        <table class="table table-bordered">
          <tr>
            <th>可教授科目：</th>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label> </td>
          </tr>
          <tr>
            <th>薪水要求：</th>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>查看薪水标准</td>
          </tr>
          <tr>
            <th>可教授区域：</th>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>          
          </tr>
          <tr>
            <th>可辅导方式：</th>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td>
          </tr>
          <tr>
            <th>自我描述：</th>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td>
          </tr>
        </table>
        <br />
        <div>
        </div>
      </div>
      <div class="col-md-2">        
        <div class="list-box">
          <div>            
            <h4><span class="h4-label">&nbsp</span>&nbsp <strong>FAQ</strong></h4><br />            
            <div class="blue">              
               <a id="A1" class="list-group-item" runat="server" href="~/article/Article5.aspx">大学生做家教讲课注意事项</a>
               <a id="A2" class="list-group-item" runat="server" href="~/article/Article1.aspx">为什么某些大学生接单成功率比较低？</a>
               <a id="A3" class="list-group-item" runat="server" href="~/article/Article2.aspx">如何教好自己的学生——对大学生家教的建议</a>                           
               <a id="A4" class="list-group-item" runat="server" href="~/article/Article6.aspx">一个好家教应该做的事</a>
               <a id="A5" class="list-group-item" runat="server" href="~/article/Article8.aspx">实效家教方法四点</a>               
               <a id="A6" class="list-group-item" runat="server" href="~/article/Article3.aspx">大学生必看！如何才能做好家教</a>                             
            </div>
          </div><br />       
        </div>  
      </div>
    </div>
  </div>
</form>
  
</asp:Content>

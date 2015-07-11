<%@ Page Title="教员详情" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Teacher_Detail.aspx.cs" Inherits="Teacher_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat = "server">
<div class="container">
    <ol class="breadcrumb">
      <li><a href="Teacher_Center.aspx">教员中心</a></li>
      <li class="active">教员详情</li>
      <li>教员姓名</li>
    </ol>
    <div class="row">
      <div class="col-md-2">
          <asp:Image ID="Image1" runat="server" Height="185px" Width="130px" />
      </div>
      <div class="col-md-7 col-md-offset-0">
        <table  class="table table-bordered">
          <tr>
            <th>教员编号:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Image
                ID="Image2" runat="server" Height="15px" Width="15px" /></th>
            <th>姓名:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></th>
            <%--<td>联系方式</td>--%>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    PostBackUrl="~/Book_Teacher.aspx">在线预约</asp:LinkButton></td>
          </tr>
        </table>
        <table class="table table-bordered">
          <tr>
            <th>认证情况：<span class="red"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span></th>
            <td class="gray">登陆时间：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> </td>
          </tr>
        </table>
        <table class="table table-bordered">
          <tr>
          <%-- <th>女</th>
           <th>在职幼儿教师</th>
           <th>大学毕业</th>
           <th>商务管理</th>
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
           <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></th>
           <th>
           <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></th>
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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="5" 
                DataKeyNames="OrderID" BorderWidth="0px" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="StudentName" HeaderText="学生姓名" 
                        SortExpression="StudentName" />
                    <asp:BoundField DataField="TeachedArea" HeaderText="教学区域" 
                        SortExpression="TeachedArea" />
                    <asp:BoundField DataField="OrderTime" HeaderText="订单时间" 
                        SortExpression="OrderTime" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Book_Teacher]">
            </asp:SqlDataSource>
        </div>
      </div>
      <div class="col-md-3">        
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
        <div>
          <h4><span class="h4-label">&nbsp</span>&nbsp <strong>相关教员</strong></h4><br />            
          <%--<table class="table table-responsive">
            <tr>
              <td>张教师</td>
              <td>在职教师</td>
            </tr>
            <tr>
              <td>张教师</td>
              <td>在职教师</td>
            </tr>
            <tr>
              <td>张教师</td>
              <td>在职教师</td>
            </tr>
          </table>--%>
          <div class="list-box">
              <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                  AutoGenerateColumns="False" DataKeyNames="TeacherID" CssClass="table"
                  DataSourceID="SqlDataSource2" PageSize="7" ShowHeader="False" BorderWidth="0px" GridLines="None" Width="250px">
                  <Columns>
                      <asp:TemplateField HeaderText="详细信息">
                          <ItemTemplate>
                              <asp:HyperLink ID="HyperLink1" runat="server" 
                                  NavigateUrl='<%# Eval("TeacherID", "Teacher_Detail.aspx?id= {0}") %>' 
                                  Text='<%#DisplaySexOnName(Convert.ToInt32(Eval("TeacherID")))%>'></asp:HyperLink>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" 
                          ShowHeader="False" />
                  </Columns>
                  <PagerSettings Visible="False" />
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                  SelectCommand="SELECT * FROM [Teacher] where IsVisible =1"></asp:SqlDataSource>
          </div>
        </div>       
      </div>
    </div>
  </div>
</form>
  
</asp:Content>


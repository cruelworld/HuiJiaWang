<%@ Page Title="学员中心" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Student_Center.aspx.cs" Inherits="Student_Center" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
    <div class="col-xs-9">
      <form id="Form1" runat="server" class="form-horizontal">    
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title"><span class="glyphicon glyphicon-search"></span>&nbsp 搜学员</h4>
        </div>
        <div class="panel-body">
            <div class="form-group">
              <label class="col-sm-2 control-label">区域：</label>
              <div class="col-sm-5" style="padding-top:5px;">   
                <asp:DropDownList ID="DropDownList4" runat="server" Width="150px">
                  <asp:ListItem>不限</asp:ListItem>
                  <asp:ListItem>大通区</asp:ListItem>
                  <asp:ListItem>田家庵区</asp:ListItem>
                  <asp:ListItem>谢家集区</asp:ListItem>
                  <asp:ListItem>八公山区</asp:ListItem>
                  <asp:ListItem>潘集区</asp:ListItem>
                  <asp:ListItem>凤台县</asp:ListItem>
                </asp:DropDownList>             
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">年级：</label>                
              <div class="col-sm-3" style="padding-top:5px;">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="150px">
                  <asp:ListItem>不限</asp:ListItem>
                  <asp:ListItem>学前班</asp:ListItem>
                  <asp:ListItem>小学一年级</asp:ListItem>
                  <asp:ListItem>小学二年级</asp:ListItem>
                  <asp:ListItem>小学三年级</asp:ListItem>
                  <asp:ListItem>小学四年级</asp:ListItem>
                  <asp:ListItem>小学五年级</asp:ListItem>
                  <asp:ListItem>小学六年级</asp:ListItem>
                  <asp:ListItem>初中一年级</asp:ListItem>
                  <asp:ListItem>初中二年级</asp:ListItem>
                  <asp:ListItem>初中三年级</asp:ListItem>
                  <asp:ListItem>高中一年级</asp:ListItem>
                  <asp:ListItem>高中二年级</asp:ListItem>
                  <asp:ListItem>高中三年级</asp:ListItem>                    
                </asp:DropDownList>                
              </div>
              <label class="col-sm-2 control-label">科目：</label>
              <div class="col-sm-2" style="padding-top:5px;">
                  <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                    <asp:ListItem>不限</asp:ListItem>
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
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label">性别：</label>
              <div class="col-sm-5" style="padding-top:5px;">  
                <asp:DropDownList ID="DropDownList3" runat="server" Width="150px">
                      <asp:ListItem>不限</asp:ListItem>
                      <asp:ListItem>男</asp:ListItem>
                      <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList>              
              </div>
              <div class="col-sm-offset-9 col-sm-10">   
                  <asp:Button ID="Button2" cssClass="btn-DefaultStyle" runat="server" Text="搜索" 
                      onclick="Button2_Click" />
              </div>
            </div>
        </div>
      </div>
      <div class="transparent-xs"></div>
      <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="StudentID" 
            DataSourceID="SqlDataSource1" PageSize="30" 
            onpageindexchanging="GridView1_PageIndexChanging" CssClass="table" 
          BorderStyle="None" GridLines="None">
            <Columns>
                <asp:TemplateField HeaderText="状态">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# DisplayOnState(Convert.ToInt32(Eval("StudentID"))) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="年级/性别" SortExpression="Sex">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# DisplaySexOnGrade(Convert.ToInt32(Eval("StudentID"))) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Area" HeaderText="区域" SortExpression="Area" />
                <asp:BoundField DataField="TeachedSubject" HeaderText="求教科目" 
                  SortExpression="TeachedSubject" >
                <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="LoginTime" HeaderText="发布时间" DataFormatString = "{0:yyyy/MM-dd/HH:mm}"
                    SortExpression="LoginTime" />
                 <asp:HyperLinkField  DataTextField = "StudentID" HeaderText="详细信息" 
                DataNavigateUrlFields="StudentID" 
                DataNavigateUrlFormatString="Student_Detail.aspx?id= {0}" DataTextFormatString="详细信息"/>
            </Columns>            
            <PagerTemplate><br />
             <span class="gray">
                共<asp:Label ID="Label3" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageCount %>"></asp:Label>页
                当前是第<asp:Label ID="Label4" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"></asp:Label>页 &nbsp&nbsp
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="First" CommandName="Page" Visible="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument="Prev" CommandName="Page"  Visible="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument="Next" CommandName="Page"  Visible="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount -1 %>">下一页</asp:LinkButton>
                <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument="Last"  CommandName="Page"  Visible="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount -1 %>">尾页</asp:LinkButton>&nbsp&nbsp
                转到&nbsp&nbsp<asp:TextBox ID="TextBox1" runat="server" Width = "30px"></asp:TextBox>&nbsp&nbsp页
                <asp:Button ID="Button3" CssClass="btn btn-xs" runat="server" Text="Go" onclick="Button3_Click" />             
             </span> 
            </PagerTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Student] where IsVisible = 1 ORDER BY [LoginTime] DESC">
        </asp:SqlDataSource>
      </div>   
      </form>
    </div>    
    <div class="col-xs-3">
      <div class="list-box">
          <div>            
            <h4><span class="h4-label">&nbsp</span>&nbsp <strong>FAQ</strong></h4><br />            
            <div class="gray">              
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
</asp:Content>


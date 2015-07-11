<%@ Page Title="教员中心" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Teacher_Center.aspx.cs" Inherits="Teacher_Center" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
    <div class="col-xs-9">
      <form  runat="server" class="form-horizontal">    
        <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title"><span class="glyphicon glyphicon-search"></span>&nbsp 搜教员</h4>          
        </div><br />
          <div class="form-group">
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
            <label class="col-sm-2 control-label">可授课区域：</label>
            <div class="col-sm-2" style="padding-top:5px;">                
              <asp:DropDownList ID="DropDownList2" runat="server" Width="150px">
                <asp:ListItem>不限</asp:ListItem>
                <asp:ListItem>大通区</asp:ListItem>
                <asp:ListItem>田家庵区</asp:ListItem>
                <asp:ListItem>谢家集区</asp:ListItem>
                <asp:ListItem>八公山区</asp:ListItem>
                <asp:ListItem>潘集区</asp:ListItem>
                <asp:ListItem>凤台县</asp:ListItem>
              </asp:DropDownList>
            </div>
            <label class="col-sm-2 col-sm-offset-2 control-label">就读学校：</label>
            <div class="col-sm-2" style="padding-top:5px;">                
                <asp:DropDownList ID="DropDownList3" runat="server" Width="150px">
                    <asp:ListItem>不限</asp:ListItem>
                    <asp:ListItem>安徽理工大学</asp:ListItem>
                    <asp:ListItem>淮南师范学院</asp:ListItem>
                </asp:DropDownList>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">性别：</label>
            <div class="col-sm-2" style="padding-top:5px;">                
                <asp:DropDownList ID="DropDownList4" runat="server" Width="150px">
                    <asp:ListItem>不限</asp:ListItem>
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList>
            </div>
            <label class="col-sm-2 col-sm-offset-2 control-label">教员身份：</label>
            <div class="col-sm-2" style="padding-top:5px;">                
                <asp:DropDownList ID="DropDownList5" runat="server" Width="150px">
                  <asp:ListItem>不限</asp:ListItem>
                  <asp:ListItem>大专学生</asp:ListItem>
                  <asp:ListItem>本科学生</asp:ListItem>
                  <asp:ListItem>硕士生</asp:ListItem>
                  <asp:ListItem>博士生</asp:ListItem>
                  <asp:ListItem>其他学生</asp:ListItem>
                  <asp:ListItem>幼儿教师</asp:ListItem>
                  <asp:ListItem>小学教师</asp:ListItem>
                  <asp:ListItem>初中教师</asp:ListItem>
                  <asp:ListItem>大学教师</asp:ListItem>
                  <asp:ListItem>高中教师</asp:ListItem>
                  <asp:ListItem>大学教师</asp:ListItem>
                  <asp:ListItem>其他教师</asp:ListItem>
                  <asp:ListItem>专业培训机构教师</asp:ListItem>
                  <asp:ListItem>海外工作归国人员</asp:ListItem>
                  <asp:ListItem>海外留学归国人员</asp:ListItem>
                  <asp:ListItem>外籍教师</asp:ListItem>
                  <asp:ListItem>外籍学生</asp:ListItem>
                </asp:DropDownList>
            </div>
          </div>
          <div class="form-group">

          </div>
          <div class="form-group">
            <div class="col-sm-6 col-sm-offset-2">
              <input class="form-control" placeholder="输入更多的筛选条件" />
            </div>
            <div class="col-sm-2">            
                <asp:Button ID="Button2" cssClass = "btn-DefaultStyle" runat="server" Text="搜索" 
                    onclick="Button2_Click" />
            </div>
          </div>                   
      </div>
        <div class="transparent-xs"></div>
        <div class="container">
          <span class="glyphicon glyphicon-exclamation-sign"></span>
          <abbr title="通过与徽教网签订合同协议、缴纳一定的保障金后的认证身份">签约教员</abbr>
          <span class="h6"><a class="text-info" href="article/Article10.aspx">了解详情</a></span>
        </div>
        <div><br />
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
          AutoGenerateColumns="False" DataKeyNames="TeacherID" 
          DataSourceID="SqlDataSource1" PageSize="30" CssClass="table" BorderWidth="0px" 
            BorderColor="#CCCCCC" BorderStyle="None" GridLines="None">
          <Columns>
              <asp:TemplateField HeaderText="是否签约">
                  <ItemTemplate>
                      <asp:Image ID="Image1" runat="server" Height="15px" Width="15px" ImageUrl='<%# DisplayImage(Convert.ToInt32(Eval("TeacherID"))) %>' />
                  </ItemTemplate>
                  <HeaderStyle HorizontalAlign="Center" />
                  <ItemStyle HorizontalAlign="Center" />
              </asp:TemplateField>
              <asp:TemplateField HeaderText="姓名/性别" SortExpression="TureName">
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%#DisplaySexOnName(Convert.ToInt32(Eval("TeacherID")))%>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
                  
              <asp:BoundField DataField="Role" HeaderText="教员身份"/>
              <asp:BoundField DataField="Area" HeaderText="家住区域" />
              <asp:BoundField DataField="TeachingSubject" HeaderText="授教科目" >
              <ItemStyle Width="150px" />
              </asp:BoundField>
              <asp:BoundField DataField="LoginTime" HeaderText="登陆日期" DataFormatString = "{0:yyyy/MM-dd/HH:mm}"
                  SortExpression="LoginTime" />
              <asp:HyperLinkField  DataTextField = "TeacherID" HeaderText="详细信息" 
                DataNavigateUrlFields="TeacherID" 
                DataNavigateUrlFormatString="Teacher_Detail.aspx?id= {0}" DataTextFormatString="详细信息"/>
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
              SelectCommand="SELECT * FROM [Teacher] where IsVisible = 1 ORDER BY [LoginTime] DESC"  ProviderName="System.Data.SqlClient">
             
          </asp:SqlDataSource>
        </div> 
      </form>
    </div>
    <div class="col-xs-3">
    <div class="list-box">
          <div>            
            <h4><span class="h4-label">&nbsp</span>&nbsp <strong>FAQ</strong></h4><br />            
            <div class="gray">              
               <a class="list-group-item" href="article/Article5.aspx">大学生做家教讲课注意事项</a>
               <a class="list-group-item" href="article/Article1.aspx">为什么某些大学生接单成功率比较低？</a>
               <a class="list-group-item" href="article/Article2.aspx">如何教好自己的学生——对大学生家教的建议</a>                           
               <a class="list-group-item" href="article/Article6.aspx">一个好家教应该做的事</a>
               <a class="list-group-item" href="article/Article8.aspx">实效家教方法四点</a>
               <a class="list-group-item" href="article/Article3.aspx">大学生必看！如何才能做好家教</a>                
            </div>
          </div><br />       
        </div>     
    </div>  
  </div>   
</asp:Content>


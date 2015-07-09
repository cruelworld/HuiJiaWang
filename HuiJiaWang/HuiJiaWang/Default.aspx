<%@ Page Title="首页" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">    
    <script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
  <script type="text/javascript" src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
  <div class="container">
    <div class="container">
      <ul class="list-inline">
        <li><span class="logo"><img src="images/安徽省行政区划.png" class="img-thumbnail" /></span></li>
        <li><a id="position" class="gray" href="#" onmouseover="Change()" onmouseout="Back()">[淮南]</a>&nbsp &nbsp &nbsp</li>           
        <li class="right" style="float:right;"><h5><span class="glyphicon glyphicon-earphone"></span>&nbsp 热线<span class="h4">&nbsp 400-500-621</span></h5></li>
      </ul>
      <div class="clearfix"></div>
      <div class="row">
        <div class="col-xs-7">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><span class="h4-label">&nbsp</span>&nbsp <strong>公告</strong></h4>
            </div>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
              <li data-target="#carousel-example-generic" data-slide-to="2"></li>
              <li data-target="#carousel-example-generic" data-slide-to="3"></li>
              <li data-target="#carousel-example-generic" data-slide-to="4"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
              <div class="item active">          
                <img src="images/slide1.png" />
                <div class="carousel-caption">

                </div>
              </div>
              <div class="item">          
                <img alt="" src="images/slide2.png" />
                <div class="carousel-caption">
            
                </div>
              </div>
              <div class="item">          
                <img alt="" src="images/slide3.png" />
                <div class="carousel-caption">
            
                </div>
              </div>
              <div class="item">          
                <img src="images/slide4.png" />
                <div class="carousel-caption">
            
                </div>
              </div>
              <div class="item">          
                <img src="images/slide5.png" />
                <div class="carousel-caption">
            
                </div>
              </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
            <div id="teachers">
              <div>
                <h4><strong>请家教</strong></h4>
                <ul class="col-xs-offset-6">
                  <li><a class="white" href="Teacher_Center.aspx">挑选教员</a> </li>
                  <li><a class="white" href="Traiff.aspx">资费标准</a></li>
                  <li><a class="white" href="article/Article5.aspx">注意事项</a></li>
                </ul>
              </div>
            </div>
            <div id="students">
              <div>
                <h4><strong>当教员</strong></h4>
                <ul class="col-xs-offset-6">
                  <li><a class="white" href="Account/Signup_Teacher.aspx">注册教员</a></li>
                  <li><a class="white" href="article/Article9.aspx">签约教员</a></li>
                  <li><a class="white" href="article/Article5.aspx">注意事项</a></li>
                </ul>
              </div>
            </div>

          </div>
            

        </div>
        <div class="col-xs-5">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><span class="h4-label">&nbsp</span>&nbsp <strong>教育资讯</strong></h4>
            </div>
            
            <a class="list-group-item" runat="server" href="~/article/Article11.aspx">熊丙奇：高考用全国卷或扩大不公平&nbsp&nbsp&nbsp<span class="gray">2015/4/14</span></a>
            <a class="list-group-item" runat="server" href="~/article/Article12.aspx" >美国教育的精髓：培养孩子“胡思乱想”&nbsp&nbsp&nbsp<span class="gray">2015/4/14</span></a>
            <a class="list-group-item" runat="server" href="~/article/Article13.aspx">好的英语需要“读”出来而非做练习“做”出来<br><span class="gray">2015/4/14</span></a>             
            
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><span class="h4-label">&nbsp</span>&nbsp <strong>FAQ</strong></h4>
            </div>          
            <a class="list-group-item" runat="server" href="~/article/Article5.aspx">大学生做家教讲课注意事项</a>          
            <a class="list-group-item" runat="server" href="~/article/Article2.aspx">如何教好自己的学生——对大学生家教的建议</a>                           
            <a class="list-group-item" runat="server" href="~/article/Article6.aspx">一个好家教应该做的事</a>
            <a class="list-group-item" runat="server" href="~/article/Article8.aspx">实效家教方法四点</a>
          </div>
        </div>            
      </div>
      <div class="transparent-xs"></div>
      <div class="row">
        <div class="col-xs-8">
          <div class="panel-heading">
            <h3 class="panel-title"><span class="glyphicon glyphicon-user"></span>&nbsp 签约教员</h3>
          </div>          
          <asp:GridView ID="GridView3" runat="server" DataSourceID="SqlDataSource1" 
            AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" 
            BorderWidth="0px" CssClass="table" GridLines="None" PageSize="20">
            <Columns>
              <asp:TemplateField HeaderText="姓名/性别" SortExpression="TureName">
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%#DisplaySexOnName(Convert.ToInt32(Eval("TeacherID")))%>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:BoundField DataField="Role" HeaderText="身份" SortExpression="Role" />
              <asp:BoundField DataField="School" HeaderText="所在学校" />
              <asp:BoundField DataField="TeachingSubject" HeaderText="可教科目" />
              <asp:BoundField DataField="LoginTime" SortExpression="LoginTime" DataFormatString = "{0:yyyy/MM-dd/HH:mm}" 
                    HeaderText="登陆时间" />
              <asp:HyperLinkField  DataTextField = "TeacherID" HeaderText="详细信息" 
                DataNavigateUrlFields="TeacherID" 
                DataNavigateUrlFormatString="Teacher_Detail.aspx?id= {0}" DataTextFormatString="详细信息"/>
            </Columns>
            <PagerTemplate>
            </PagerTemplate>
          </asp:GridView>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">登陆入口</h4>
            </div>
            <div class="panel-body">
              <div class="transparent-xs"></div>
              <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-4" runat="server" Text="用户名"></asp:Label>
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="150px"></asp:TextBox>
              </div>
              <div class="form-group">
                <asp:Label ID="Label2" CssClass="col-md-4" runat="server" Text="密码"></asp:Label>
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Width="150px" 
                      TextMode="Password"></asp:TextBox>
              </div>
              <div class="transparent-xs"></div>
              <div class="form-group">                
                <asp:Button ID="Button1" CssClass="col-md-3 col-md-offset-1 btn-DefaultStyle" runat="server" Text="登陆" OnClick="Button1_Click"/>                
                <asp:Button ID="Button2" CssClass="col-md-3 col-md-offset-2 btn-DefaultStyle" runat="server" Text="注册" OnClick="Button2_Click" />
              </div>
              <br /><br />
              <div class="col-sm-10 col-sm-offset-1">
                <p class="h6 gray" style="line-height:12pt;">
                  <span class="glyphicon glyphicon-alert"></span>&nbsp 如果你忘记了密码，你可以选择<a href="Account/FindPassword.aspx">找回密码</a>
                </p>
              </div>              
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-3">        
          <div class="panel-heading">
            <h3 class="panel-title"><span class="glyphicon glyphicon-user"></span>&nbsp 金牌教师</h3>
          </div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          BorderStyle="None" BorderWidth="0px" CssClass="table" 
          DataSourceID="SqlDataSource2" GridLines="None" AllowPaging="True" PageSize="15">
          <Columns>
             <asp:TemplateField HeaderText="姓名/性别" SortExpression="TureName">
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%#DisplaySexOnNameTea(Convert.ToInt32(Eval("TeacherID")))%>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
            <asp:BoundField DataField="Role" HeaderText="身份" SortExpression="Role" />
            <%--<asp:BoundField DataField="TeachingSubject" HeaderText="可教科目" />--%>
            <%--<asp:BoundField DataField="LoginTime" SortExpression="LoginTime" />--%>
             <asp:HyperLinkField  DataTextField = "TeacherID" HeaderText="详细信息" 
                DataNavigateUrlFields="TeacherID" 
                DataNavigateUrlFormatString="Teacher_Detail.aspx?id= {0}" DataTextFormatString="详细信息"/>
          </Columns>
          <PagerTemplate>                    
          </PagerTemplate>
        </asp:GridView>
        </div>
        <div class="col-xs-8 col-xs-offset-1">
          <div class="panel-heading">
            <h3 class="panel-title"><span class="glyphicon glyphicon-education"></span>&nbsp 大学生教员</h3>
          </div>
          <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BorderStyle="None" 
            BorderWidth="0px" CssClass="table" GridLines="None" PageSize="15">
            <Columns>
             <asp:TemplateField HeaderText="姓名/性别" SortExpression="TureName">
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%#DisplaySexOnName(Convert.ToInt32(Eval("TeacherID")))%>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:BoundField DataField="Role" HeaderText="身份" SortExpression="Role" />
              <asp:BoundField DataField="School" HeaderText="毕业学校" SortExpression="School" />              
              <asp:BoundField DataField="TeachingSubject" HeaderText="可教学科" SortExpression="TeachingSubject" />
              <asp:BoundField DataField="LoginTime" SortExpression="LoginTime" DataFormatString = "{0:yyyy/MM-dd/HH:mm}"
                    HeaderText="登陆时间" />
               <asp:HyperLinkField  DataTextField = "TeacherID" HeaderText="详细信息" 
                DataNavigateUrlFields="TeacherID" 
                DataNavigateUrlFormatString="Teacher_Detail.aspx?id= {0}" DataTextFormatString="详细信息"/>
            </Columns>
            <PagerTemplate>              
            </PagerTemplate>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"           
            SelectCommand="SELECT * FROM [Teacher] WHERE (([IsSign] = @IsSign) AND ([IsVisible] = @IsVisible))" 
                ProviderName="System.Data.SqlClient">
              <SelectParameters>
                  <asp:Parameter DefaultValue="true" Name="IsSign" Type="Boolean" />
                  <asp:Parameter DefaultValue="true" Name="IsVisible" Type="Boolean" />
              </SelectParameters>
        </asp:SqlDataSource> 
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT * FROM [Teacher] WHERE (([IsProfession] = @IsProfession) AND ([IsIdentify] = @IsIdentify)AND ([IsVisible] = @IsVisible)) ORDER BY [LoginTime] DESC">
                <SelectParameters>
                    <asp:Parameter DefaultValue="true" Name="IsProfession" Type="Boolean" />
                    <asp:Parameter DefaultValue="true" Name="IsIdentify" Type="Boolean" />
                    <asp:Parameter DefaultValue="true" Name="IsVisible" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT * FROM [Teacher] WHERE (([Role] = @Role) OR ([Role] = @Role2) OR ([Role] = @Role3) OR ([Role] = @Role4) OR ([Role] = @Role5)) ORDER BY [LoginTime] DESC" FilterExpression="IsVisible = true">
                
                <SelectParameters>
                    <asp:Parameter DefaultValue="大专学生" Name="Role" Type="String" />
                    <asp:Parameter DefaultValue="本科学生" Name="Role2" Type="String" />
                    <asp:Parameter DefaultValue="博士生" Name="Role3" Type="String" />
                    <asp:Parameter DefaultValue="硕士生" Name="Role4" Type="String" />
                    <asp:Parameter DefaultValue="其他学生" Name="Role5" Type="String" />
                    
                </SelectParameters>
            </asp:SqlDataSource>
        </div>      
      </div>   
      <div class="row">

      </div>
    </div>   
  </div>
  <script type="text/javascript">
      /*切换城市*/
      function Change() {
        var Content = document.getElementById('position');
        Content.innerHTML = " [切换城市] ";
      }
      function Back() {
        var Content = document.getElementById('position');
        Content.innerHTML = " [淮南] ";
      }
  </script>
  </form>
  </span>
</asp:Content>

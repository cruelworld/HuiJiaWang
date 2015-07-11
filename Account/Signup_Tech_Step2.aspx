<%@ Page Title="教员注册" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="Signup_Tech_Step2.aspx.cs" Inherits="Account_Signup_Tech_Step2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
  <div runat="server" class="container">
    <ol class="breadcrumb">
      <li><a href="Signup.aspx">选择账户类型</a></li>
      <li class="active">教员注册</li>
      <li><a href="Signup_Teacher.aspx">选择教员类型</a></li>
      <li class="red">完成</li>      
    </ol>    
    <div class="col-sm-10">
      <form runat="server"  class="form-horizontal">
        <div class="form-group">
          <label class="col-sm-2 control-label">真实姓名</label>
          <div class="col-sm-3">
              <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>                     
          </div>
          <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ControlToValidate="TextBox1" ErrorMessage="姓名不能为空" CssClass="red"></asp:RequiredFieldValidator>          
          </div>         
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">性别</label>
          <div class="col-sm-3" style="padding-top:5px;">
              <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="form-control-static"
                  RepeatDirection="Horizontal" BorderStyle="None" CellPadding="5" 
                CellSpacing="5" RepeatColumns="2" Width="100px">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
              </asp:RadioButtonList>
          </div>         
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">身份</label>
          <div class="col-sm-3">            
            <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
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
          <label class="col-sm-2 control-label">学历</label>
          <div class="col-sm-3">
            <div>
              <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                <asp:ListItem>大专以下</asp:ListItem>
                <asp:ListItem>大专在读</asp:ListItem>
                <asp:ListItem>大专毕业</asp:ListItem>
                <asp:ListItem>本科在读</asp:ListItem>
                <asp:ListItem>本科毕业</asp:ListItem>
                <asp:ListItem>硕士在读</asp:ListItem>
                <asp:ListItem>硕士毕业</asp:ListItem>
                <asp:ListItem>博士在读</asp:ListItem>
                <asp:ListItem>博士毕业</asp:ListItem>
              </asp:DropDownList>
            </div>
          </div>          
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">专业</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">学校</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">生日</label>
          <div class="col-sm-2">
              <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                <asp:ListItem>1950年</asp:ListItem>
                <asp:ListItem>1951年</asp:ListItem>
                <asp:ListItem>1952年</asp:ListItem>
                <asp:ListItem>1953年</asp:ListItem>
                <asp:ListItem>1954年</asp:ListItem>
                <asp:ListItem>1955年</asp:ListItem>
                <asp:ListItem>1956年</asp:ListItem>
                <asp:ListItem>1957年</asp:ListItem>
                <asp:ListItem>1958年</asp:ListItem>
                <asp:ListItem>1959年</asp:ListItem>
                <asp:ListItem>1960年</asp:ListItem>
                <asp:ListItem>1961年</asp:ListItem>
                <asp:ListItem>1962年</asp:ListItem>
                <asp:ListItem>1963年</asp:ListItem>
                <asp:ListItem>1964年</asp:ListItem>
                <asp:ListItem>1965年</asp:ListItem>
                <asp:ListItem>1966年</asp:ListItem>
                <asp:ListItem>1967年</asp:ListItem>
                <asp:ListItem>1968年</asp:ListItem>
                <asp:ListItem>1969年</asp:ListItem>
                <asp:ListItem>1970年</asp:ListItem>
                <asp:ListItem>1971年</asp:ListItem>
                <asp:ListItem>1972年</asp:ListItem>
                <asp:ListItem>1973年</asp:ListItem>
                <asp:ListItem>1974年</asp:ListItem>
                <asp:ListItem>1975年</asp:ListItem>
                <asp:ListItem>1976年</asp:ListItem>
                <asp:ListItem>1977年</asp:ListItem>
                <asp:ListItem>1978年</asp:ListItem>
                <asp:ListItem>1979年</asp:ListItem>
                <asp:ListItem>1980年</asp:ListItem>
                <asp:ListItem>1981年</asp:ListItem>
                <asp:ListItem>1982年</asp:ListItem>
                <asp:ListItem>1983年</asp:ListItem>
                <asp:ListItem>1984年</asp:ListItem>
                <asp:ListItem>1985年</asp:ListItem>
                <asp:ListItem>1986年</asp:ListItem>
                <asp:ListItem>1987年</asp:ListItem>
                <asp:ListItem>1988年</asp:ListItem>
                <asp:ListItem>1989年</asp:ListItem>
                <asp:ListItem>1990年</asp:ListItem>
                <asp:ListItem>1991年</asp:ListItem>
                <asp:ListItem>1992年</asp:ListItem>
                <asp:ListItem>1993年</asp:ListItem>
                <asp:ListItem>1994年</asp:ListItem>
                <asp:ListItem>1995年</asp:ListItem>
                <asp:ListItem>1996年</asp:ListItem>
                <asp:ListItem>1997年</asp:ListItem>
                <asp:ListItem>1998年</asp:ListItem>
                <asp:ListItem>1999年</asp:ListItem>
                <asp:ListItem>2001年</asp:ListItem>
                <asp:ListItem>2002年</asp:ListItem>
                <asp:ListItem>2003年</asp:ListItem>
                <asp:ListItem>2004年</asp:ListItem>
                <asp:ListItem>2005年</asp:ListItem>
                <asp:ListItem>2006年</asp:ListItem>
                <asp:ListItem>2007年</asp:ListItem>
                <asp:ListItem>2008年</asp:ListItem>
                <asp:ListItem>2009年</asp:ListItem>
                <asp:ListItem>2010年</asp:ListItem>
                <asp:ListItem>2011年</asp:ListItem>
                <asp:ListItem>2012年</asp:ListItem>
                <asp:ListItem>2013年</asp:ListItem>
                <asp:ListItem>2014年</asp:ListItem>
              </asp:DropDownList>              
          </div>
          <div class="col-sm-2">
              <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server">
                <asp:ListItem>1月</asp:ListItem>
                <asp:ListItem>2月</asp:ListItem>
                <asp:ListItem>3月</asp:ListItem>
                <asp:ListItem>4月</asp:ListItem>
                <asp:ListItem>5月</asp:ListItem>
                <asp:ListItem>6月</asp:ListItem>
                <asp:ListItem>7月</asp:ListItem>
                <asp:ListItem>8月</asp:ListItem>
                <asp:ListItem>9月</asp:ListItem>
                <asp:ListItem>10月</asp:ListItem>
                <asp:ListItem>11月</asp:ListItem>
                <asp:ListItem>12月</asp:ListItem>
              </asp:DropDownList>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">身份证</label>
          <div class="col-sm-4">
            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>              
          </div>
          <div class="col-sm-3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ControlToValidate="TextBox4" ErrorMessage="身份证不能为空" CssClass="red"></asp:RequiredFieldValidator>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">手机</label>
          <div class="col-sm-3">
            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>          
          </div>
          <div class="col-sm5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
              ControlToValidate="TextBox5" ErrorMessage="手机号不能为空" CssClass="red"></asp:RequiredFieldValidator>          
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">政治面貌</label>
          <div class="col-sm-4" style="padding-top:5px;">
              <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                  RepeatDirection="Horizontal" BorderStyle="None" Width="180px">
                  <asp:ListItem Selected="True">党员</asp:ListItem>
                  <asp:ListItem>团员</asp:ListItem>
                  <asp:ListItem>群众</asp:ListItem>
              </asp:RadioButtonList>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">省份</label>
          <div class="col-sm-3">
              <asp:DropDownList ID="DropDownList5" CssClass="form-control" runat="server">
                <asp:ListItem>安徽省</asp:ListItem>
                <asp:ListItem>云南省</asp:ListItem>
                <asp:ListItem>广东省</asp:ListItem>
                <asp:ListItem>贵州省</asp:ListItem>
                <asp:ListItem>湖南省</asp:ListItem>
                <asp:ListItem>江西省</asp:ListItem>
                <asp:ListItem>四川省</asp:ListItem>
                <asp:ListItem>福建省</asp:ListItem>
                <asp:ListItem>浙江省</asp:ListItem>
                <asp:ListItem>江苏省</asp:ListItem>
                <asp:ListItem>湖北省</asp:ListItem>
                <asp:ListItem>陕西省</asp:ListItem>
                <asp:ListItem>河南省</asp:ListItem>
                <asp:ListItem>河北省</asp:ListItem>
                <asp:ListItem>甘肃省</asp:ListItem>
                <asp:ListItem>青海省</asp:ListItem>
                <asp:ListItem>山西省</asp:ListItem>
                <asp:ListItem>辽宁省</asp:ListItem>
                <asp:ListItem>吉林省</asp:ListItem>
                <asp:ListItem>黑龙江</asp:ListItem>
                <asp:ListItem>台湾省</asp:ListItem>
                <asp:ListItem>海南省</asp:ListItem>
                <asp:ListItem>山东省</asp:ListItem>
                <asp:ListItem>广西</asp:ListItem>
                <asp:ListItem>内蒙古</asp:ListItem>
                <asp:ListItem>西藏</asp:ListItem>
                <asp:ListItem>宁夏</asp:ListItem>
                <asp:ListItem>新疆</asp:ListItem>
                <asp:ListItem>北京</asp:ListItem>
                <asp:ListItem>上海</asp:ListItem>
                <asp:ListItem>天津</asp:ListItem>
                <asp:ListItem>重庆</asp:ListItem>
                <asp:ListItem>香港</asp:ListItem>
                <asp:ListItem>澳门</asp:ListItem>
              </asp:DropDownList>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">区域</label>
          <div class="col-sm-3">
              <asp:DropDownList ID="DropDownList6" CssClass="form-control" runat="server">
                    <asp:ListItem>大通区</asp:ListItem>
                    <asp:ListItem>田家庵区</asp:ListItem>
                    <asp:ListItem>谢家集区</asp:ListItem>
                    <asp:ListItem>八公山区</asp:ListItem>
                    <asp:ListItem>潘集区</asp:ListItem>
                    <asp:ListItem>凤台县</asp:ListItem>
              </asp:DropDownList>
          </div>
        </div>
        <hr/>
        <div class="form-group">
          <label class="col-sm-2 control-label">详细地址</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">高中</label>
          <div class="col-sm-4">
             <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>        
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">QQ</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">邮箱</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ControlToValidate="TextBox8" ErrorMessage="邮箱格式不正确" CssClass="red" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </div>
        </div>
         <div class="form-group">
          <label class="col-sm-2 control-label">可授课科目</label>
          <div class="col-sm-8">
          <div class="row">
            <div class="col-sm-4">
              <asp:ListBox ID="ListBox1" CssClass="form-control" runat="server" 
                Height="250px" Width="150px">
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
              </asp:ListBox>
            </div>
            <div class="col-sm-2" style="padding:100px 20px 20px 30px;">
              <asp:Button ID="Button2" runat="server"  Text="&gt;" onclick="Button2_Click" />
              <asp:Button ID="Button3" runat="server"  Text="&lt;" onclick="Button3_Click" />
            </div>
            <div class="col-sm-4">
              <asp:ListBox ID="ListBox2" CssClass="form-control" runat="server" Width="150px" 
                Height="250px"></asp:ListBox>
            </div>          
          </div>
          </div>
        </div>
         <div class="form-group">
          <label class="col-sm-2 control-label">可授课区域</label>
          <div class="col-sm-8">
            <div class="row">
              <div class="col-sm-4">
                <asp:ListBox ID="ListBox3" CssClass="form-control" runat="server" Width="150px" 
                  Height="160px">
                  <asp:ListItem>大通区</asp:ListItem>
                  <asp:ListItem>田家庵区</asp:ListItem>
                  <asp:ListItem>谢家集区</asp:ListItem>
                  <asp:ListItem>八公山区</asp:ListItem>
                  <asp:ListItem>潘集区</asp:ListItem>
                  <asp:ListItem>凤台县</asp:ListItem>
                </asp:ListBox>
              </div>
              <div class="col-sm-2" style="padding:60px 20px 20px 30px;">
              <asp:Button ID="Button4" runat="server" Text="&gt;" onclick="Button4_Click" />
              <asp:Button ID="Button5" runat="server" Text="&lt;" onclick="Button5_Click" />
              </div>
              <div class="col-sm-4">
              <asp:ListBox ID="ListBox4" CssClass="form-control" runat="server" Height="160px" 
                  Width="150px"></asp:ListBox>
              </div>
            </div>
          </div>
        </div>
         <div class="form-group">
          <label class="col-sm-2 control-label">可授课方式</label>
          <div class="col-sm-4" style="padding-top:5px;">
              <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                  RepeatDirection="Horizontal" Width="400px">
                        <asp:ListItem Selected="True">本人上门</asp:ListItem>
                        <asp:ListItem>学生上门</asp:ListItem>
                        <asp:ListItem>网上授课</asp:ListItem>
                        <asp:ListItem>统一培训</asp:ListItem>
              </asp:RadioButtonList>
          </div>
        </div>
         <div class="form-group">
          <label class="col-sm-2 control-label">可授课时间</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
        </div>
         <div class="form-group">
          <label class="col-sm-2 control-label">薪水要求</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server"></asp:TextBox>
          </div>
        </div>
         <div class="form-group">
          <label class="col-sm-2 control-label">自我描述</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control" Height="76px" TextMode="MultiLine" 
                  Width="530px"></asp:TextBox>
          </div>
        </div>
         <div class="form-group">
          <label class="col-sm-2 control-label">照片</label>
          <div class="col-sm-2">
              <asp:FileUpload ID="FileUpload1" CssClass="form-control-static" runat="server" />
          </div>
          <div class = "col-sm-8"><asp:Label ID="Label2" runat="server" Text="Label" style = "padding-left: 30px; color:Red;">请最好上传您的照片， 可以增加被学员选中的机会</asp:Label></div>
        </div>
        <hr/>
        <div class="col-sm-3 col-sm-offset-2">
            <asp:Button ID="Button1" runat="server" CssClass = "btn-DefaultStyle" 
                Text="完成注册" onclick="Button1_Click" />
        </div>
      </form>
    </div>      
  </div>
</asp:Content>


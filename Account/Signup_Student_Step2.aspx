<%@ Page Title="学员注册" Language="C#" MasterPageFile="~/Site.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="Signup_Student_Step2.aspx.cs" Inherits="Account_Signup_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">      
  <div class="container"> 
    <ol class="breadcrumb">
      <li><a href="Signup.aspx">选择账户类型</a></li>
      <li class="active">学员注册</li>
    </ol>  
    <div class="col-sm-10">
      <form id="Form1" runat="server"  class="form-horizontal">
        <div class="form-group">
          <label class="col-sm-2 control-label">真实姓名</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                  ControlToValidate="TextBox4" ErrorMessage="必填" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">性别</label>
          <div class="col-sm-2">
            <div style="padding-top:6px;">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">年级</label>
          <div class="col-sm-2">
            <div style="padding-top:5px;">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
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
                    <asp:ListItem>大学</asp:ListItem>
                </asp:DropDownList>
            </div>
          </div>          
        </div>
         <div class="form-group">
          <label class="col-sm-2 control-label">手机</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ControlToValidate="TextBox5" ErrorMessage="必填" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">来自省份</label>
          <div class="col-sm-2">
              <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
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
          <div class="col-sm-2">
              <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
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
          <label class="col-sm-2 control-label">QQ</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
        </div>
         <div class="form-group">
          <label class="col-sm-2 control-label">邮箱</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
        </div>
        <br />
        <div class="form-group">
          <label class="col-sm-2 control-label">求教科目</label>
          <div class="col-sm-4">
              <table>
                  <tr>
                      <td rowspan="2">
                          <asp:ListBox ID="ListBox1" runat="server" CssClass="form-control" 
                            Height="250px" Width="200px">
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
                      </td>
                      <td>
                          <asp:Button ID="Button2" runat="server" Text="&gt;" onclick="Button2_Click" />
                      </td>
                      <td rowspan="2">
                          <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" 
                            CssClass="form-control" Height="250px" Width="200px"></asp:ListBox>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Button ID="Button3" runat="server"  Text="&lt;" onclick="Button3_Click" />
                      </td>
                  </tr>
              </table>
          </div>
        </div>
         <div class="form-group">
          <label class="col-sm-2 control-label">求教时间</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">对教员性别要求</label>
          <div class="col-sm-2">
              <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                        <asp:ListItem Selected="True">无所谓</asp:ListItem>
              </asp:DropDownList>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">授课方式</label>
          <div class="col-sm-2" style="padding-top:5px;">
              <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                  RepeatDirection="Horizontal" Width="350px">
                        <asp:ListItem Selected="True">本人上门</asp:ListItem>
                        <asp:ListItem>老师上门</asp:ListItem>
                        <asp:ListItem>网上授课</asp:ListItem>
                        <asp:ListItem>统一培训</asp:ListItem>
              </asp:RadioButtonList>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">薪水说明</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">有无车费补贴</label>
          <div class="col-sm-2" style="padding-top:5px;">
              <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                  RepeatDirection="Horizontal">
                  <asp:ListItem>无</asp:ListItem>
                  <asp:ListItem>有</asp:ListItem>
              </asp:RadioButtonList>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">对教员具体要求</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">自我描述</label>
          <div class="col-sm-4">
              <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
        </div>
        <%--禁用上传照片功能--%>
        <%--
        <div class="form-group">
          <label class="col-sm-2 control-label">上传照片</label>
          <div class="col-sm-4">
              <asp:FileUpload ID="FileUpload1" runat="server" 
                CssClass="form-control-static" />
          </div>
        </div>--%>
        <hr/>
        <div class="col-sm-3 col-sm-offset-2">
            <asp:Button ID="Button1" runat="server" cssClass = "btn-DefaultStyle" 
                Text = "同意协议并注册" onclick="Button1_Click"/>
        </div>
      </form>
    </div>      
  </div>  
</asp:Content>


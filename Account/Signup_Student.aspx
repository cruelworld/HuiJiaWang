<%@ Page Title="教员注册" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Signup_Student.aspx.cs" Inherits="Account_Signup_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">    
    <ol class="breadcrumb">
      <li><a href="Signup.aspx">选择账户类型</a></li>
      <li class="active">学员注册</li>
      <li class="red">选择学员类型</li>
      <li class="active">完成</li>      
    </ol>
    <div class="col-sm-10">
      <form runat="server" class="form-horizontal">
        <div class="form-group">
          <label class="col-sm-2 control-label">用户名</label>
          <div class="col-sm-3">
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" AutoPostBack="True" 
                ontextchanged="TextBox1_TextChanged"></asp:TextBox>            
          </div>
          <div class="col-sm-5">
          <asp:Label ID="Label1" runat="server" CssClass="red"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ControlToValidate="TextBox1" ErrorMessage="用户名为空" CssClass="red"></asp:RequiredFieldValidator>
          </div>
          <%--用户名验证--%>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">密码</label>
          <div class="col-sm-3">
              <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>              
          </div>
          <div class="col-sm-5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ControlToValidate="TextBox2" ErrorMessage="密码不能为空" CssClass="red"></asp:RequiredFieldValidator>
          </div>
          <%--密码验证--%>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label">确认密码</label>
          <div class="col-sm-3">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>              
          </div>
          <div class="col-sm-5">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="密码不一致" 
                  ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="red"></asp:CompareValidator>          
          </div>
        </div>
       <br />
        <div class="form-group">
          <div class="col-sm-6 col-sm-offset-2">
              <asp:CheckBox ID="CheckBox1" runat="server" />
            <label>&nbsp 我已阅读并接受《<a class="text-info" href="#">学员注册协议</a>》</label><br />
          </div>          
         
          <div class="col-sm-3 col-sm-offset-2">
              <asp:Button ID="Button1" runat="server" CssClass = "btn-DefaultStyle" 
                  Text="同意协议并注册" onclick="Button1_Click" />
          </div>
        </div>
      </form>
    </div>
  </div>
</asp:Content>


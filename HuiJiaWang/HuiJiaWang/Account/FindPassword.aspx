<%@ Page Title="找回密码" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FindPassword.aspx.cs" Inherits="Account_FindPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="../Scripts/App.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
    <h3><span class="h4-label">&nbsp</span>&nbsp 找回密码</h3><hr />
    <form runat="server" class="form-horizontal">
      <div class="form-group">
        <label class="col-sm-2 control-label">真实姓名</label>
        <div class="col-sm-3">
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="真实姓名不能为空" CssClass="red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-1">
          <label id="Valider1" class="red" runat="server">
            <span class="glyphicon glyphicon-asterisk"></span>必填
          </label>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label">身份证号</label>
        <div class="col-sm-3">
            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="身份证号不能为空" CssClass="red"></asp:RequiredFieldValidator>
        </div>        
        <div class="col-sm-1">
          <label id="Valider2" class="red" runat="server">
            <span class="glyphicon glyphicon-asterisk"></span>必填
          </label>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label">电话</label>
        <div class="col-sm-3">
            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="电话不能为空" CssClass="red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-1">
          <label id="Valider3" class="red" runat="server">
            <span class="glyphicon glyphicon-asterisk"></span>必填
          </label>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label">电子邮箱</label>
        <div class="col-sm-3">
            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10"><br />
            <asp:Button ID="Button1" runat="server" CssClass = "btn-DefaultStyle" 
                Text="确定" onclick="Button1_Click" />
        </div>
      </div>
    </form>
  </div>

</asp:Content>


<%@ Page Title="申请学员订单" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Order_Student.aspx.cs" Inherits="Order_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
    <h3><span class="h4-label">&nbsp</span>&nbsp 申请学员订单</h3><hr />
    <div class="row">
      <div class="col-md-7">        
        <form id="Form1" runat="server" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label">学员号</label>
            <div class="col-sm-3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">教员编号</label>
            <div class="col-sm-5">
                <asp:Label ID="Label2" runat="server" Text="T"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="必须为数字" ForeColor="Red" 
                    ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">姓名</label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="必添" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">联系方式</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">授教区域</label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">详细描述</label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">              
                <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</asp:Content>

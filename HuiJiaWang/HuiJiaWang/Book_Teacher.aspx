<%@ Page Title="预约教员订单" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Book_Teacher.aspx.cs" Inherits="Book_Teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
  <div class="container">
    <h3><span class="h4-label">&nbsp</span>&nbsp 预约教员订单</h3><hr />
    <div class="row">
      <div class="col-md-7">        
        <form id="Form1" runat="server" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label">教员号</label>
            <div class="col-sm-3">
                <span>T</span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">学生姓名</label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>               
            </div>
            <div class="col-sm-3">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="姓名不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">联系方式</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">求教区域</label>
            <div class="col-sm-3">
              <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
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
            <label class="col-sm-2 control-label">详细描述</label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">              
                <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" CssClass="btn-DefaultStyle" />
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  </div>
</asp:Content>
<%@ Page Title="反馈意见" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <script type="text/javascript">
    /*提交反馈*/
    function Submit() {
      var Contact = document.getElementById('Contact');
      var Text = document.getElementById('FeedbackText');
      if (Contact.value == "") {
        alert('请输入联系方式!');
      }
      else {
        alert('提交成功！我们将在6小时内给你答复！');
        //window.location.href = 'Default.aspx';
        self.location = 'FAQ.aspx';
      }
    }
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
    <h3><span class="h4-label">&nbsp</span>&nbsp 反馈意见</h3><hr />
    <div class="row">
      <div class="col-md-7">        
        <form runat="server" class="form-horizontal">
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">姓名</label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">联系方式</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">              
                <asp:Button ID="Button1" runat="server" Text="提交" CssClass="btn-DefaultStyle" 
                    onclick="Button1_Click" />
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</asp:Content>


<%@ Page Title="常见问题" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
<div class="container">
  <div class="transparent-s"></div>
    <div class="row">
      <div class="col-md-4">        
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
      <div class="col-md-5">
        <div class="list-box">
          <h4><span class="h4-label">&nbsp</span>&nbsp <strong>家教秘籍</strong></h4><br />            
          <div class="gray">                          
              <a id="A7" class="list-group-item" runat="server" href="~/article/Article4.aspx">做好家教老师的四部曲</a>              
              <a id="A8" class="list-group-item" runat="server" href="~/article/Article5.aspx">大学生做家教讲课注意事项</a>
              <a id="A9" class="list-group-item" runat="server" href="~/article/Article6.aspx">一个好家教应该做的事</a>
              <a id="A10" class="list-group-item" runat="server" href="~/article/Article7.aspx">成功大学生的家教必胜法则</a>
              <a id="A11" class="list-group-item" runat="server" href="~/article/Article8.aspx">实效家教方法四点</a>            
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="right">
          <h4><span class="h4-label">&nbsp</span>&nbsp <strong>联系客服</strong></h4><br />
          <div class="list-box">            
          <address>
            <ul>
              <li>客服电话：<span class="contact_phone">400-0044-400</span><br /></li>
              <li>客服邮件：1001@ename.com<br /></li>
              <li>客服QQ：<a href="#" target="_blank">点击这里</a><br /></li>
            </ul>
          </address>            
          </div>
          <br />
          <h4><span class="h4-label">&nbsp</span>&nbsp <strong>期待功能</strong></h4><br />
          <div class="container">                        
            <span>
              <a href="#">更换皮肤</a> 
              <a href="#">个人中心</a> 
              <a href="#">手机客户端</a>         
            </span>
          </div>
        </div>
      </div>
    </div>
    <div class="transparent-l"></div>
  </div>  
  </div>  
</asp:Content>


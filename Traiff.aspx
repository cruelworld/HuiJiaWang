<%@ Page Title="资费标准" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Traiff.aspx.cs" Inherits="Traiff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
<div class="container">
    <h4><span class="h4-label">&nbsp</span>&nbsp <strong>资费标准</strong></h4><br />    
    <div class="col-sm-12">
      <table class="table">
        <tr>
          <th class="h4"><br/><span class="glyphicon glyphicon-education"></span>&nbsp <strong>学科/理论</strong></th>
          <th><span class="glyphicon glyphicon-education"></span>&nbsp 大学生家教</th>
          <th><span class="glyphicon glyphicon-thumbs-up"></span>&nbsp 专职老师</th>
          <th><span class="glyphicon glyphicon-user"></span>&nbsp 在职老师</th>
        </tr>
        <tr>
          <th>&nbsp 学龄前教育</th>
          <td><strong>15-30</strong>&nbsp 元/小时</td>
          <td><strong>30-40</strong>&nbsp 元/小时</td>
          <td><strong>30-50</strong>&nbsp 元/小时</td>
        </tr>       
        <tr>
          <th>&nbsp 小学</th>
          <td><strong>20-35</strong>&nbsp 元/小时</td>
          <td><strong>40-50</strong>&nbsp 元/小时</td>
          <td><strong>40-65</strong>&nbsp 元/小时</td>           
        </tr>
        <tr>
          <th>&nbsp 初中（语文/数学/物理/化学/生物/英语）</th>
          <td><strong>20-50</strong>&nbsp 元/小时</td>
          <td><strong>50-70</strong>&nbsp 元/小时</td>
          <td><strong>50-90</strong>&nbsp 元/小时</td>           
        </tr>
        <tr>
          <th>&nbsp 高中（语文/数学/物理/化学/生物/英语）</th>
          <td><strong>30-50</strong>&nbsp 元/小时</td>
          <td><strong>50-80</strong>&nbsp 元/小时</td>
          <td><strong>60-120</strong>&nbsp 元/小时</td>           
        </tr>
        <tr>
          <th>&nbsp 三校生</th>
          <td><strong>20-50</strong>&nbsp 元/小时</td>
          <td><strong>50-70</strong>&nbsp 元/小时</td>
          <td><strong>50-90</strong>&nbsp 元/小时</td>           
        </tr>
<%--      </table>
      <br />
      <table class="table">--%>
        <tr>
          <th class="h4"><br/><span class="glyphicon glyphicon-font"></span>&nbsp <strong>语言</strong>&nbsp </th>
          <th></th>
          <th></th>
          <th></th>
        </tr>               
        <tr>
          <th>&nbsp 英语、翻译</th>
          <td><strong>25-70</strong>&nbsp 元/小时</td>
          <td><strong>80-150</strong>&nbsp 元/小时</td>
          <td><strong>100-200</strong>&nbsp 元/小时</td>           
        </tr>
        <tr>
          <th>&nbsp 普通话辅导</th>
          <td><strong>30-50</strong>&nbsp 元/小时</td>  
          <td><strong>30-50</strong>&nbsp 元/小时</td>
          <td><strong>30-50</strong>&nbsp 元/小时</td>           
        </tr>
        <tr>
          <th>&nbsp 小语种</th>
          <td><strong>30-100</strong>&nbsp 元/小时</td>
          <td><strong>80-200</strong>&nbsp 元/小时</td>
          <td><strong>80-250</strong>&nbsp 元/小时</td>
        </tr>
<%--      </table><br />
      <table class="table">--%>
        <tr>
          <th class="h4"><br/><span class="glyphicon glyphicon-music"></span>&nbsp <strong>艺术/乐器</strong></th>
          <th></th>
          <th></th>
          <th></th>
        </tr>
        <tr>
          <th>&nbsp 键盘乐器</th>
          <td><strong>30-80</strong>&nbsp 元/小时</td>
          <td><strong>60-130</strong>&nbsp 元/小时</td>
          <td><strong>60-150</strong>&nbsp 元/小时</td>           
        </tr>
        <tr>
          <th>&nbsp 管乐器/打击乐器/吹奏乐器/弦类乐器</th>
          <td><strong>50-120</strong>&nbsp 元/小时</td>
          <td><strong>90-180</strong>&nbsp 元/小时</td>
          <td><strong>120-180</strong>&nbsp 元/小时</td>           
        </tr>        
        <tr>
          <th>&nbsp 舞蹈/声乐/表演/其他</th>
          <td><strong>50-120</strong>&nbsp 元/小时</td>
          <td><strong>90-180</strong>&nbsp 元/小时</td>
          <td><strong>120-180</strong>&nbsp 元/小时</td>
        </tr>
<%--      </table>      
      <table class="table">  --%>      
        <tr>
          <th class="h4"><br/><span class=" glyphicon glyphicon-th"></span>&nbsp <strong>其他</strong></th>
          <th></th>
          <th></th>
          <th></th>
        </tr>   
        <tr>
          <th>&nbsp 棋类、武术、球类、其他</th>
          <td><strong>30-50</strong>&nbsp 元/小时</td>
          <td><strong>50-80</strong>&nbsp 元/小时</td>
          <td><strong>50-90</strong>&nbsp 元/小时</td>
        </tr>
      </table>
    </div>    
  </div>  
  </div>  
</asp:Content>

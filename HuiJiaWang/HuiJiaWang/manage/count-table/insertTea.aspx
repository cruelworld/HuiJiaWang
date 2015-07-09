<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertTea.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="count_table_insertTea" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 434px;
        }
        .style2
        {
            width: 206px;
        }
        .style4
        {
            width: 144px;
        }
        .style6
        {
            width: 144px;
            height: 18px;
        }
        .style7
        {
            width: 206px;
            height: 18px;
        }
        .style9
        {
            height: 18px;
            width: 222px;
        }
        .style10
        {
            width: 144px;
            height: 22px;
        }
        .style11
        {
            width: 206px;
            height: 22px;
        }
        .style12
        {
            width: 222px;
        }
        .style13
        {
            width: 100%;
            height: 62px;
        }
        .style14
        {
            width: 100%;
            height: 88px;
        }
        .style15
        {
            width: 115px;
        }
        .style16
        {
            width: 115px;
            height: 18px;
        }
        .style17
        {
            width: 84px;
        }
        .style21
        {
            width: 94px;
        }
        .style22
        {
            width: 80px;
        }
        .style23
        {
            width: 149px;
        }
        .style26
        {
            height: 50px;
            text-align: left;
        }
        .style28
        {
            width: 115px;
            height: 50px;
        }
        .style29
        {
            width: 222px;
            height: 50px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
     <div class = "rightbg">
        
    </div>
    <div class = "divscrip">
      
        
    </div>
    <div style = "margin-top: 26px;">
        <table border="1" cellpadding="0" cellspacing="0" class="style1" frame="above" 
            bgcolor="#CCCCFF">
            <tr>
                <td class="style4" align="right" rowspan="2">
                    用户名：</td>
                <td class="style2" rowspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-right: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style21" rowspan="18">
                    &nbsp;</td>
                <td class="style15" align="right">
                    籍贯：</td>
                <td class="style12">
                    <asp:DropDownList ID="DropDownList10" runat="server">
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
                </td>
            </tr>
            <tr>
                <td class="style15" align="right">
                    高中：</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6" align="right">
                    密码：</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style16" align="right">
                    QQ：</td>
                <td class="style9">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    真实姓名：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style15" align="right">
                    邮箱：</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="*" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="TextBox11"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    性别：</td>
                <td class="style2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style15" align="right" rowspan="4">
                    可授课科目：</td>
                <td rowspan="4" class="style12">
                    </asp:DropDownList>
                    <table cellpadding="0" cellspacing="0" class="style14">
                        <tr>
                            <td class="style17">
                                <asp:ListBox ID="ListBox4" runat="server" Height="109px" Width="133px">
                                    <asp:ListItem Selected="True">选择家教科目</asp:ListItem>
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
                                <asp:Button ID="Button5" runat="server" Text="&gt;&gt;" 
                                    onclick="Button5_Click" />
                                <br />
                                <asp:Button ID="Button6" runat="server" Text="&lt;&lt;" 
                                    onclick="Button6_Click" style="margin-top: 69px" />
                            </td>
                            <td>
                                <asp:ListBox ID="ListBox3" runat="server" AutoPostBack="True" Height="118px" 
                                    Width="115px"></asp:ListBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    身份：</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
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
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    学历：</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList2" runat="server">
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
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    专业：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    毕业学校：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="style15" align="right" rowspan="3">
                    可授课区域：</td>
                <td rowspan="3" class="style12">
                    <table cellpadding="0" cellspacing="0" class="style13">
                        <tr>
                            <td class="style23">
                    <asp:DropDownList ID="DropDownList11" runat="server" Height="16px" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList11_SelectedIndexChanged">
                       <asp:ListItem>淮南</asp:ListItem>
                           <asp:ListItem>合肥</asp:ListItem>
                           <asp:ListItem>芜湖</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList12" runat="server" 
                                   >
                     <asp:ListItem>大通区</asp:ListItem>
                    <asp:ListItem>田家庵区</asp:ListItem>
                    <asp:ListItem>谢家集区</asp:ListItem>
                    <asp:ListItem>八公山区</asp:ListItem>
                    <asp:ListItem>潘集区</asp:ListItem>
                    <asp:ListItem>凤台县</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                            <td class="style22">
                                <asp:Button ID="Button3" runat="server" Text="&gt;&gt;" 
                                    onclick="Button3_Click" style="margin-bottom: 71px" />
                                <br />
                                <asp:Button ID="Button4" runat="server" Text="&lt;&lt;" 
                                    onclick="Button4_Click" />
                            </td>
                            <td>
                                <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" Height="120px" 
                                    Width="109px" style="margin-left: 0px"></asp:ListBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    生日：</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                   
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
                    <asp:DropDownList ID="DropDownList4" runat="server">
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
                           <asp:ListItem>11月</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    民族：</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    身份证号：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style15" align="right">
                    可授课方式：</td>
                <td class="style12">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                        RepeatDirection="Horizontal" Width="395px">
                        <asp:ListItem Selected="True">本人上门</asp:ListItem>
                        <asp:ListItem>学生上门</asp:ListItem>
                        <asp:ListItem>网上授课</asp:ListItem>
                        <asp:ListItem>统一培训</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    手机号：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style15" align="right">
                    可授课时间：</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    政治面貌：</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList6" runat="server">
                        <asp:ListItem Selected="True">群众</asp:ListItem>
                        <asp:ListItem>团员</asp:ListItem>
                        <asp:ListItem>党员</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style15" align="right">
                    薪水要求：</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    省份：</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList7" runat="server">
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
                </td>
                <td class="style15" align="right" rowspan="3">
                    自我描述：</td>
                <td rowspan="3" class="style12">
                    <asp:TextBox ID="TextBox14" runat="server" Height="52px" TextMode="MultiLine" 
                        Width="376px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10" align="right">
                    区域：</td>
                <td class="style11">
                    <asp:DropDownList ID="DropDownList8" runat="server" Height="16px" 
                        AutoPostBack="True" onselectedindexchanged="DropDownList8_SelectedIndexChanged" 
                        >
                       <asp:ListItem>淮南</asp:ListItem>
                           <asp:ListItem>合肥</asp:ListItem>
                           <asp:ListItem>芜湖</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList9" runat="server">
                    <asp:ListItem>大通区</asp:ListItem>
                    <asp:ListItem>田家庵区</asp:ListItem>
                    <asp:ListItem>谢家集区</asp:ListItem>
                    <asp:ListItem>八公山区</asp:ListItem>
                    <asp:ListItem>潘集区</asp:ListItem>
                    <asp:ListItem>凤台县</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style26" align="right">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    详细地址：</td>
                <td class="style26" align="right">
                    <asp:TextBox ID="TextBox8" runat="server" style="text-align: left"></asp:TextBox>
                </td>
                <td class="style28" align="right">
                    插入图片：</td>
                <td class="style29">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            </table>
    </div>
    <div style = "margin: 10px 400px; width: 200px">
        <asp:Button ID="Button1" runat="server" Text="插入" Width="77px" 
            onclick="Button1_Click" />
        <asp:Button ID="Button2"
            runat="server" Text="取消" style="margin-left: 36px" Width="77px" 
            onclick="Button2_Click" />
    </div>
    </form>
</body>
</html>

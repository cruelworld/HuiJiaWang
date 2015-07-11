<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditStu.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="count_table_EditStu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

html
{
    width: 100%;
    height: 100%;}
        .style1
        {
            width: 100%;
            height: 481px;
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
        .style21
        {
            width: 94px;
        }
        .style16
        {
            width: 115px;
            height: 18px;
        }
        .style9
        {
            height: 18px;
            width: 222px;
        }
        .style14
        {
            width: 100%;
            height: 88px;
        }
        .style17
        {
            width: 84px;
        }
        .style4
        {
            width: 144px;
        }
        .style2
        {
            width: 206px;
        }
        .style15
        {
            width: 115px;
        }
        .style12
        {
            width: 222px;
        }
        .style30
        {
            width: 144px;
            height: 25px;
        }
        .style31
        {
            width: 206px;
            height: 25px;
        }
        .style32
        {
            width: 115px;
            height: 25px;
        }
        .style33
        {
            width: 222px;
            height: 25px;
        }
        .style10
        {
            width: 144px;
            }
        .style11
        {
            width: 206px;
            }
        .style36
        {
            width: 144px;
            height: 38px;
        }
        .style37
        {
            width: 206px;
            height: 38px;
        }
        .style38
        {
            width: 144px;
            height: 41px;
        }
        .style39
        {
            width: 206px;
            height: 41px;
        }
        .style40
        {
            width: 144px;
            height: 24px;
        }
        .style41
        {
            width: 206px;
            height: 24px;
        }
        .style42
        {
            width: 115px;
            height: 24px;
        }
        .style43
        {
            width: 222px;
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table border="1" cellpadding="0" cellspacing="0" class="style1" frame="above" 
            bgcolor="#CCCCFF">
            <tr>
                <td class="style36" align="right">
                    学员编号：</td>
                <td class="style37">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style21" rowspan="13">
                    &nbsp;</td>
                <td class="style16" align="right" rowspan="3">
                    求教课科目：</td>
                <td class="style9" rowspan="3">
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
                <td class="style36" align="right">
                    用户名：</td>
                <td class="style37">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-right: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6" align="right">
                    密码：</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    真实姓名：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="style15" align="right">
                    授课方式：</td>
                <td class="style12">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                        RepeatDirection="Horizontal" Width="395px">
                        <asp:ListItem Selected="True">本人上门</asp:ListItem>
                        <asp:ListItem>老师上门</asp:ListItem>
                        <asp:ListItem>网上授课</asp:ListItem>
                        <asp:ListItem>统一培训</asp:ListItem>
                    </asp:RadioButtonList>
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
                <td class="style15" align="right" rowspan="2">
                    授课时间：</td>
                <td rowspan="2" class="style12">
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    学员年级：</td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
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
                </td>
            </tr>
            <tr>
                <td class="style4" align="right" rowspan="2">
                    手机号：</td>
                <td class="style2" rowspan="2">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td class="style15" align="right">
                    薪水要求：</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15" align="right">
                    有无车贴：</td>
                <td class="style12">
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>有</asp:ListItem>
                        <asp:ListItem Selected="True">无</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style30" align="right">
                    省份：</td>
                <td class="style31">
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
                <td class="style32" align="right">
                    教员性别要求：</td>
                <td class="style33">
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                        <asp:ListItem Selected="True">无所谓</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style40" align="right">
                    区域：</td>
                <td class="style41">
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
                <td class="style42" align="right">
                    对教员其他要求：</td>
                <td class="style43">
                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4" align="right">
                    &nbsp;详细地址：</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox8" runat="server" style="text-align: left"></asp:TextBox>
                </td>
                <td class="style15" align="right" rowspan="3">
                    自我描述：</td>
                <td rowspan="3" class="style12">
                    <asp:TextBox ID="TextBox14" runat="server" Height="84px" TextMode="MultiLine" 
                        Width="376px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style38" align="right">
                    QQ：</td>
                <td class="style39">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10" align="right">
                    &nbsp;&nbsp;
                    邮箱：&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style11">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
            </tr>
            </table>
    
    </div>
    <div style = "margin: 10px 400px; width: 200px">
    <asp:Button ID="Button1" runat="server" Text="修改" Width="77px" 
        onclick="Button1_Click" />
    <asp:Button ID="Button2"
        runat="server" Text="取消" style="margin-left: 36px" Width="77px" 
        onclick="Button2_Click" />
</div>
    </form>
</body>
</html>

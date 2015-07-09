<%@ Page Title="注册" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Account_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">    
    <div class="col-sm-9 col-sm-offset-1">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title"><span class="h4-label">&nbsp</span> <strong>用户注册</strong></h3>
        </div>
        <div class="panel-body">
          <h4 class="text-center">新会员须知</h4>
          <article>
            <p>
              徽教网有着严格的教员认证体系、完善的学员服务体系，充分利用徽教网信息平台，将家教服务信息化，使教员、学员的家教服务供求更加便捷、快速、交互。
            </p> 
            <p>
              在这里，您只需在网络上轻松递交您的家教供求信息，通过系统和人工双重匹配，很快就能够享受到家教网提供的完善服务。
            </p>
            <p>
              若要申请<abbr title="通过与徽教网签订合同协议、缴纳一定的保障金后的认证身份">签约教员</abbr>，本着为保证教学质量和对学员负责的态度，需缴纳教学保证金，签约家教未结束前不能支取或做其他用途，如无签约家教授课时，可以随时支取。<span class="glyphicon glyphicon-exclamation-sign"></span>
              <a class="text-info" href="../article/Article10.aspx">了解详情</a><br />              
            </p>
            <br />
            <p class="red">
              请确认您的会员类型，做家教的大学生/教师等请选择教员，请家教的家长/孩子请选择学员。徽教网外拨电话为021-5588xxxx，请留意接听。
            </p>
          </article>
          <form runat="server" class="form-horizontal">
            <div class="form-group">                             
                <div class="text-center">
                  <input id="Student"  type="radio" name="Role"/> 请家教（学员注册）                
                  <input id="Teacher"  type="radio" name="Role"/> 做教员（教员注册）<br /><br /><br />
                  <button id="Button1" type="button" class="btn-DefaultStyle" 
                      onclick="SelectRole()">注册</button>
                </div>
            </div>                       
          </form>
        </div>  
      </div>
    </div>    
  </div>
  <script type="text/javascript">
    /*注册选择*/    
    var Teacher = document.getElementById('Teacher');
    var Student = document.getElementById('Student');
    function SelectRole() {
      if (Teacher.checked == true) {
        window.location = 'Signup_Teacher.aspx';
      }
      if (Student.checked == true) {
        window.location = 'Signup_Student.aspx';
      }
      else {
        alert('请选择注册类型');
      }
    }
  </script>
</asp:Content>


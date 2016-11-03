<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table id="loginForm" width="150" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="30%" valign="middle"><img src="images\username.jpg" width="61" height="17" align="bottom" />
            <input name="username" id="username" type="text" size="7"/>
        </td>
      </tr>
      <tr>
        <td valign="middle"><img src="images\password.jpg" width="61" height="17" />
            <input name="password" id="password" type="password" size="6" /></td>
      </tr>
      <tr>
        <td height="30" valign="bottom"><input name="image" type="image" onclick="return checkLoginIndex(form);" src="images\login_1_7.jpg" alt="登录" width="44" height="17" border="0"/>
          &nbsp;&nbsp;
         </td>
      </tr>
    </table>
    <div id="loginUser">欢迎回来，${sessionScope.loginUser.username }</div>
    <select name="sel" onchange="changeStyle(this)">
            <option value="andreas08(blue).css" selected="selected">默认风格</option>
			<option value="andreas08(orange).css">桔色</option>
			<option value="andreas08(green).css">绿色</option>
    </select>
     &nbsp;&nbsp;
     <a id="loginCancel" href="cancel.do" >注销</a><br>
     还没有账号？<a href="register.do">点此注册</a>
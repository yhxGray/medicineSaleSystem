<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>AscentSys医药商务系统</title>
<meta http-equiv="content-type" content="text/html; charset=GB2312" />
<meta name="description" content="Your website description goes here" />
<meta name="keywords" content="your,keywords,goes,here" />
<link rel="stylesheet" href="css/andreas08(blue).css" type="text/css"
	media="screen,projection" />
<script type="text/javascript" src="./js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="./js/register.js"></script>
</head>
<style type="text/css">
/* 页面字体样式 */
body,td,input {
	font-family: Arial;
	font-size: 12px;
}
/* 表格基本样式 */
table.default {
	border-collapse: collapse;
	width: 350px;
}
/* 表格单元格样式 */
table.default td {
	border: 1px solid black;
	padding: 3px;
}
/* 列头样式 */
table.default td.item {
	background: #0e59c0;
	color: #fff;
}
/* 正常信息样式 */
div.ok {
	color: #006600;
}
/* 警告信息样式 */
div.warning {
	color: #FF0000;
}
</style>
<script language="javascript">
	function refresh(){
		//重新获取验证码图片的src属性
		document.getElementById("authImg").src='verifyCode.do?now='+new Date();
	}
</script>
</head>
<body>
	<form name="form" method="post" action="" />
	<div id="container">
		<div id="header">
			<h1>加拿大·亚思晟科技</h1>
			<h2>Quality is everything!</h2>
		</div>
		<div id="navigation"><%@ include file="/indexList.jsp"%></div>
		<div id="content2" style="width:600px;background-color: #dddddd">
			<table width="100%" height="41" border="0" align="center"
				cellpadding="0" cellspacing="0">
				<tr>
					<td width="15" height="18" align="left" valign="top"><div
							align="left"></div>
					</td>
					<td width="385" align="left" valign="bottom" class="12">&nbsp;</td>
				</tr>
				<tr>
					<td height="4" colspan="2" align="left" valign="bottom"></td>
				</tr>
				<tr>
					<td height="15" align="left" valign="top">&nbsp;</td>
					<td height="15" align="left" valign="top" class="12">
						<table width="100%" height="20" border="0" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="20"><div class="right_proaducts">
										<font color="red">注册信息:</font> <br />
									</div>
									<DIV class=padding>
										<DIV id=middlebody>


											<table width="85%" class="mars" cellspacing="1"
												cellpadding="0" width="100%" border="0">
												<tbody>
													<tr>

														<td class="item" width="30%"><div align="right">用户名:</div>
														</td>
														<td width="7%"></td>
														<td width="30%"><input type="text" name="username"
															id="username">&nbsp;&nbsp;<font color="red">*</font>

															<div id="usernameCheckDiv" class="warning"></div></td>
														<td width="30%" id="usernameV" style="color:red"></td>
													</tr>

													<tr>

														<td class="item"><div align="right">密码:</div>
														</td>
														<td width="7%"></td>
														<td><input type="password" name="password"
															id="password">&nbsp;&nbsp;<font color="red">*</font>
														</td>
														<td width="30%" id="passwordV" style="color:red"></td>
													</tr>

													<tr>

														<td class="item"><div align="right">密码确认:</div>
														</td>
														<td width="7%"></td>
														<td><input type="password" name="password2"
															id="password2">&nbsp;&nbsp;<font color="red">*</font>
														</td>
														<td width="30%" id="password2V" style="color:red"></td>
													</tr>

													<tr>

														<td class="item"><div align="right">公司名称:</div>
														</td>
														<td width="7%"></td>
														<td><input type="text" name="companyName"
															id="companyName" />
														</td>
													</tr>
													<tr>

														<td class="item"><div align="right">城市:</div>
														</td>
														<td width="7%"></td>
														<td><input type="text" name="city" id="city" />
														</td>
													</tr>
													<tr>
														<td class="item"><div align="right">电话:</div>
														</td>
														<td width="7%"></td>
														<td><input type="text" name="phone" id="phone" />
														</td>
													</tr>
													<tr>
														<td class="item"><div align="right">Email:</div>
														</td>
														<td width="7%"></td>
														<td><input type="text" name="email" id="email">&nbsp;&nbsp;<font
															color="red">*</font>
														</td>
														<td width="30%" id="emailV" style="color:red"></td>
													</tr>
													<!--tr>
														<td class="item"><div align="right">级别:</div>
														</td>
														<td width="7%"></td>
														<td><input type="text" name="roleId" id="roleId">&nbsp;&nbsp;<font
															color="red">*</font>
														</td>
														<td width="30%" id="roleIdV"></td>
													</tr-->
													<tr>
 <td class="item"><div align="right">验证码:</div></td>
 <td  width="7%"></td>
    <td>
        <input type="text" name="code" id="code" >&nbsp;&nbsp;<font color="red">*</font></td>
      <td><div width="60%" id="codeCheckDiv" class="warning"><img src="verifyCode.do" onclick="verifyCode" id="authImg"/><br/></div><a href="#" onclick="refresh()">看不清？换一张</a></td>
    
</tr>

													<tr>
														<td colspan="3" align="center"><input type="button"
															value="注册" id="addUser"/> <input
															type="reset" value="取消" />
														</td>
													</tr>
											</table>
						</table> <br />
						<div class="table_wz"></div></td>
				</tr>
			</table>
		</div>
		<div>sdfg</div>
		<div id="footer">
			<p>
				<a href="http://www.ascenttech.com.cn/" target="_blank">版权所有：北京亚思晟商务科技有限公司
					&copy;2004-2008|京ICP备05005681</a>
			</p>
		</div>

	</div>
	</form>
</body>
</html>

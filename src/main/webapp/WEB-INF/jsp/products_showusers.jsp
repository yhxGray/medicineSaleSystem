<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
</head>
<body>

	<script src="js/jquery-1.7.2.min.js"></script>
	<script>
	function changeDelflag(id){
	    $.ajax(
	        {
	            url:'User_upState',
	            type:'post',
	            data:'id='+id,
	            success:function(msg)
	            {
	                 alert(msg);
	                $("#u_"+id).attr({src:"images/button/sz_tu_"+msg+".gif"});
	            }
	        }
	    
	    );
	
	}
  </script>
	<div id="container">

		<div id="header">
			<h1>加拿大·亚思晟科技</h1>
			<h2>Quality is everything!</h2>
		</div>

		<div id="navigation">
			<ul>
				<li class="selected"></li>
				<li><a href="index.jsp">首页</a></li>
				<li><a href="itservice.do">IT服务</a></li>
				<li><a href="products.do">医药商务系统</a></li>
				<li><a href="employee.do">员工招聘</a></li>
				<li><a href="ContactUs.do">关于我们</a></li>
				<li></li>
			</ul>
		</div>

		<div id="content2">
			<table width="100%" height="41" border="0" align="center"
				cellpadding="0" cellspacing="0">
				<tr>
					<td width="15" height="18" align="left" valign="top"><div
							align="left"></div></td>
					<td width="385" align="left" valign="bottom" class="12">&nbsp;</td>
				</tr>
				<tr>
					<td height="4" colspan="2" align="left" valign="bottom"></td>
				</tr>

				<tr>
					<td height="15" align="left" valign="top">&nbsp;</td>
					<td height="15" align="left" valign="top" class="12"><table
							width="100%" height="20" border="0" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="20"><div class="table_t">
										|&nbsp;&nbsp;欢迎${sessionScope.loginUser.username},&nbsp;&nbsp;|&nbsp;&nbsp;<a
											href="cancel.do" class="table_t">注销</a>&nbsp;&nbsp;|
									</div></td>
							</tr>
						</table> <br />
						<div>
							<a href="user_list.do"><img src="images/button/userlist.jpg"
								border="0" /> </a> <a href="admin_products_show.do"><img
								src="images/button/productslist.jpg" border="0" /> </a> <a
								href="mailmanager.do"><img
								src="images/button/mailmanager.jpg" border="0" /> </a>
						</div>
						<table width="100%" border="0" cellspacing="1" cellpadding="0"
							class="mars">
							<tr bgcolor="#fba661" height="25">
								<td width="10%" bgcolor="#fba661"><div align="center">用户名</div>
								</td>
								<td width="13%" bgcolor="#fba661"><div align="center">Email</div>
								</td>
								<td width="12%" bgcolor="#fba661"><div align="center">电话</div>
								</td>
								<td width="13%" bgcolor="#fba661"><div align="center">公司名称</div>
								</td>
								<td width="13%" bgcolor="#fba661"><div align="center">角色</div>
								</td>
								<td width="9%" bgcolor="#fba661"><div align="center">修改</div>
								</td>
								<td width="10%" bgcolor="#fba661"><div align="center">角色修改</div>
								</td>
								<td width="10%" bgcolor="#fba661"><div align="center">状态</div>
								</td>
							</tr>
							<c:forEach var="li" items="${li}">
								<tr bgcolor="#f3f3f3" height="25">
									<td width="10%"><div align="center">${li.username}</div></td>
									<td width="13%"><div align="center">${li.email}</div></td>
									<td width="12%"><div align="center">${li.tel}</div></td>
									<td width="13%"><div align="center">${li.companyname}</div>
									</td>
									<td width="13%"><div align="center">${li.superuser}</div>
									</td>
									<td width="9%"><div align="center">
											<a href="User_find?id=${li.id}"><img
												src="images/button/update1.gif" width="20" height="20"
												border="0" alt="修改" /> </a>
										</div></td>
									<td width="10%"><div align="center">
											<a href="User_findsuper?id=${li.id}"><img
												src="images/button/Changeuser.gif" width="20" height="20"
												border="0" alt="角色修改" /> </a>
										</div></td>
									<td><div align="center">
											<c:choose>
												<c:when test="${li.superuser eq '高级管理员' }">
													<td><div align="center">无操作</div>
													</td>
												</c:when>
												<c:otherwise>
													<td><div align="center">
															<a onclick="changeDelflag(${li.id})" href="#"> <img
																id="u_${li.id}"
																src="images/button/sz_tu_${li.delflag}.gif" border="0" />
															</a>
														</div>
													</td>
												</c:otherwise>
											</c:choose>
										</div></td>
								</tr>
							</c:forEach>
						</table>
						<table width="100%" height="100" border="0" cellpadding="0"
							cellspacing="0">
							<tr>
								<td valign="top" class="12">&nbsp;</td>
							</tr>
						</table></td>
				</tr>
			</table>
		</div>
		<div id="footer">
			<p>
				<a href="http://www.ascenttech.com.cn/" target="_blank">版权所有：北京亚思晟商务科技有限公司
					&copy;2004-2008|京ICP备05005681</a>
			</p>
		</div>

	</div>
</body>
</html>
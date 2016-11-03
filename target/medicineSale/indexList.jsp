<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="./js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="./js/acesys.js"></script>
<script type="text/javascript" src="./js/common.js"></script>
<ul>
<li class="selected"></li>
<li><a href="index.jsp">首页</a></li>
<li><a href="itservice.do">IT服务</a></li>
<li><a href="products.do">医药商务系统</a></li>
<li><a href="employee.do">员工招聘</a></li>
<li><a href="contactUs.do">关于我们</a></li>
<li><a id="adminPage" href="admin_products_show.do">管理界面</a></li>
</ul>
<div id="adminUserJudge" style="display:none">${sessionScope.loginUser.roleId }</div>

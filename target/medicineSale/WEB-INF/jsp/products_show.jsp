<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>AscentSys医药商务系统</title>
<meta http-equiv="content-type" content="text/html; charset=GB2312" />
<meta name="description" content="Your website description goes here" />
<meta name="keywords" content="your,keywords,goes,here" />
<link rel="stylesheet" href="css/andreas08(blue).css" type="text/css" media="screen,projection" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/products-show.js"></script>
</head>

<body>
<div id="container" >

<div id="header">
<h1>加拿大·亚思晟科技 </h1>
<h2>Quality is everything!</h2>
</div>

<div id="navigation"><%@ include file="/indexList.jsp"%></div>

<div id="content2">
  <table width="100%" height="41"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="15" height="18" align="left" valign="top"><div align="left"></div></td>
      <td width="385" align="left" valign="bottom" class="12">&nbsp;</td>
    </tr>
  <tr>
    <td height="4" colspan="2" align="left" valign="bottom"></td>
    </tr>
  
  <tr>
    <td height="15" align="left" valign="top">&nbsp;</td>
      <td height="15" align="left" valign="top" class="12"><table width="100%" height="20" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20"><div class="right_proaducts">我的位置&gt;&gt;医药商务管理&gt;商品列表<br />
            <br />
          </div>
		  <form action="" method="post" name="form" id="form">
  <DIV class=padding>
  <DIV id=middlebody>
  <table cellspacing="0" cellpadding="0" width="100%" border="0">
    <tbody>
      <tr>
        <td background="index.jsp"><div align="left">|&nbsp;&nbsp;欢迎,user&nbsp;&nbsp;|&nbsp;&nbsp;<a 
      class="table_t" 
      href="index.jsp">注销</a>&nbsp;&nbsp;|</div></td>
        <td><div align="center">&nbsp;</div></td>
        <td><div align="center"><a 
      href="product_search.do">商品查询</a></div></td>
        <td><div align="center"><a 
      href="ordershow.do">查看订单</a></div></td>
        <td><div align="center"><a 
      href="cartshow.do">查看购物车</a></div></td>
      </tr>
    </tbody>
  </table>
  <div></div>
</form>
          <table class="mars" cellspacing="1" cellpadding="0" width="100%" border="0">
            <tbody>
              <tr bgcolor="#fba661" height="30">
                <td><div align="center">编号</div></td>
                <td><div align="center">名称</div></td>
                  <td><div align="center">药品分类</div></td>
                <td><div align="center">价格</div></td>
                <td><div align="center">库存</div></td>
                <td><div align="center">图片</div></td>
                <td><div align="center">购买</div></td>
              </tr>
              
              <c:forEach items="${requestScope.medicines}" var="medicine" varStatus="status">
              <c:if test="${status.count%2==0}">
              	<tr bgcolor="#f3f3f3" height="25">
              </c:if>
               <c:if test="${status.count%2!=0}">
              	<tr  height="25">
              </c:if>
              <td width="10%"><div align="center">${medicine.number}</div></td>
                <td width="13%"><div align="center">${medicine.name}</div></td>
                <td width="12%"><div align="center">
                	<c:if test="${medicine.typeId==1}">
                		处方药
                	</c:if>
                	<c:if test="${medicine.typeId==2}">
                		非处方药
                	</c:if>
                	<c:if test="${medicine.typeId==3}">
                		保健药
                	</c:if>               	
                </div></td>
                <td width="10%"><div align="center">${medicine.price}</div></td>
                <td width="13%"><div align="center">${medicine.stock}</div></td>
                <td width="12%"><div align="center"><img height="52" hspace="0"  src="images/${medicine.photo}" width="83" border="0" /></div></td>
                <td width="13%"><div align="center"><a  href="javascript:alert('已经添加到购物车')">购买</a></div></td>
              	</tr>
              </c:forEach>
              
          
            </tbody>
            <tr bgcolor="#fba661" height="30">
            	<td><a href="products_show.do?pageIndex=1&currentItems=${currentItems}">首页</a></td>
            	<td><a href="products_show.do?pageIndex=${pageIndex-1}&currentItems=${currentItems}">上一页</a></td>
            	<td><a href="products_show.do?pageIndex=${pageIndex+1}&currentItems=${currentItems}">下一页</a></td>
            	<td><a href="products_show.do?pageIndex=${endPageIndex }&currentItems=${currentItems}">末页</a></td>
            	<td></td>
            	<td>当前页：<span id="pageIndexR">${pageIndex}</span></td>
            	<td>当前显示条数：<select id="currentItems">
            					<option value="3">3</option>
            					<option value="5" selected="selected">5</option>
            					<option value="10">10</option>
            				</select></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <div id="currentItemsR" style="display:none">${currentItems}</div>
        <br/>
        <div class="table_wz"></div></td>
  </tr>
  </table>
  </div>
<div id="footer">
<p><a href="http://www.ascenttech.com.cn/" target="_blank">版权所有：北京亚思晟商务科技有限公司 &copy;2004-2008|京ICP备05005681</a></p>
</div>

</div>
</body>
</html>
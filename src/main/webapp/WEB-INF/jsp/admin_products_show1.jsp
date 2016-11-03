<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>AscentSys医药商务系统</title>
<meta http-equiv="content-type" content="text/html; charset=GB2312" />
<meta name="description" content="Your website description goes here" />
<meta name="keywords" content="your,keywords,goes,here" />
<link rel="stylesheet" href="../css/andreas08(blue).css" type="text/css" media="screen,projection" />
</head>

<body>
<div id="container" >

<div id="header">
<h1>加拿大·亚思晟科技 </h1>
<h2>Quality is everything!</h2>
</div>

<div id="navigation">
<ul>
<li class="selected"></li>
<li><a href="../index.jsp">首页</a></li>
<li><a href="../product/itservice.jsp">IT服务</a></li>
<li><a href="../product/products.jsp">医药商务系统</a></li>
<li><a href="../product/employee.jsp">员工招聘</a></li>
<li><a href="../product/ContactUs.jsp">关于我们</a></li>
<li></li>
</ul>
</div>

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
		  <form action="../product/admin_products_show.jsp" method="post" name="form" id="form">
  <DIV class=padding>
  <DIV id=middlebody>
  <table width="100%">
    <tbody>
      <tr>
        <td height="20"><div class="table_t">|&nbsp;&nbsp;欢迎,admin&nbsp;&nbsp;|&nbsp;&nbsp;<a 
      class="table_t" 
      href="../index.jsp">注销</a>&nbsp;&nbsp;|</div></td>
        <td><div><a href="../product/products_showusers.jsp"><img 
      src="../images/button/userlist.jpg" 
      border="0" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a 
      href="../product/admin_products_show.jsp"><img 
      src="../images/button/productslist.jpg" 
      border="0" /></a>&nbsp;&nbsp;&nbsp;&nbsp; <a 
      href="../product/admin_ordershow.jsp"><img 
      src="../images/button/ShowOrders.jpg" border="0" /></a> &nbsp;&nbsp;&nbsp;&nbsp; <a 
      href="../product/add_products_admin.jsp"><img 
      src="../images/button/addProduct.jpg" border="0" /> </a>&nbsp;&nbsp;&nbsp;&nbsp; </div></td>
      </tr>
      <!-- 产品列表 -->
      <!-- 产品列表 -->
    </tbody>
  </table>
  <table class="mars" cellspacing="1" cellpadding="0" width="100%" border="0">
    <tbody>
      <tr bgcolor="#fba661" height="30">
         <td><div align="center">编号</div></td>
         <td><div align="center">名称</div></td>
          <td><div align="center">药品分类</div></td>
          <td><div align="center">MDL编号</div></td>
         <td><div align="center">价格</div></td>
         <td><div align="center">库存</div></td>
         <td><div align="center">图片</div></td>
        <td><div align="center">修改</div></td>
        <td><div align="center">删除</div></td>
      </tr>
              <tr bgcolor="#f3f3f3" height="25">
                <td width="10%"><div align="center">004</div></td>
                <td width="13%"><div align="center">龙血颗粒</div></td>
                <td width="12%"><div align="center">002</div></td>
                <td width="13%"><div align="center">A002</div></td>
                <td width="10%"><div align="center">65</div></td>
                <td width="13%"><div align="center">100</div></td>
                <td width="12%"><div align="center"><img height="52" hspace="0"  src="../images/button/23007.gif" width="83" border="0" /></div></td>
                <td><div align="center"><a  href="update_products_admin.jsp"><img height="20" alt="修改" src="../images/button/update1.gif" width="20" border="0" /></a></div></td>
                <td><div align="center"><a  href="admin_products_show1.jsp"><img  alt="删除" src="../images/button/sz_tu02.gif" border="0" /></a></div></td>
            </tr>
              <tr bgcolor="#f3f3f3" height="25">
                <td width="10%"><div align="center">005</div></td>
                <td width="13%"><div align="center">强心剂</div></td>
                <td width="12%"><div align="center">003</div></td>
                <td width="13%"><div align="center">A003</div></td>
                <td width="10%"><div align="center">69</div></td>
                <td width="13%"><div align="center">120</div></td>
                <td width="12%"><div align="center"><img height="52" hspace="0"  src="../images/button/23007.gif" width="83" border="0" /></div></td>
                <td><div align="center"><a  href="update_products_admin.jsp"><img height="20" alt="修改" src="../images/button/update1.gif" width="20" border="0" /></a></div></td>
                <td><div align="center"><a  href="admin_products_show1.jsp"><img  alt="删除" src="../images/button/sz_tu02.gif" border="0" /></a></div></td>
          </tr>
              <tr bgcolor="#f3f3f3" height="25">
                <td width="10%"><div align="center">008</div></td>
                <td width="13%"><div align="center">脑白金</div></td>
                <td width="12%"><div align="center">004</div></td>
                <td width="13%"><div align="center">A004</div></td>
                <td width="10%"><div align="center">69</div></td>
                <td width="13%"><div align="center">520</div></td>
                <td width="12%"><div align="center"><img height="52" hspace="0"  src="../images/button/23007.gif" width="83" border="0" /></div></td>
                <td><div align="center"><a  href="update_products_admin.jsp"><img height="20" alt="修改" src="../images/button/update1.gif" width="20" border="0" /></a></div></td>
                <td><div align="center"><a  href="admin_products_show1.jsp"><img  alt="删除" src="../images/button/sz_tu02.gif" border="0" /></a></div></td>
           </tr>
              <tr bgcolor="#f3f3f3" height="25">
                <td width="10%"><div align="center">006</div></td>
                <td width="13%"><div align="center">21金维他</div></td>
                <td width="12%"><div align="center">005</div></td>
                <td width="13%"><div align="center">A005</div></td>
                <td width="10%"><div align="center">144</div></td>
                <td width="13%"><div align="center">14</div></td>
                <td width="12%"><div align="center"><img height="50" hspace="0"  src="../images/button/23007.gif" width="64" border="0" /></div></td>
                <td><div align="center"><a  href="update_products_admin.jsp"><img height="20" alt="修改" src="../images/button/update1.gif" width="20" border="0" /></a></div></td>
               <td><div align="center"><a  href="admin_products_show1.jsp"><img  alt="删除" src="../images/button/sz_tu02.gif" border="0" /></a></div></td>
           </tr>
    </tbody>
  </table>
  <div></div>
</form>
</td>
        </tr>
      </table>
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
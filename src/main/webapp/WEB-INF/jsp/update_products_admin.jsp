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
<script type="text/javascript" src="../js/acesys.js"></script>
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
          <td height="20"><div class="right_proaducts">我的位置&gt;&gt;医药商务管理&gt;商品修改<br />
            <br />
          </div>
<form action="admin_products_show.jsp" method="post" name="form" id="form">
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
      src="../images/button/addProduct.jpg" border="0" /> </a>&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
      </tr>
      <!-- 产品列表 -->
      <!-- 产品列表 -->
    </tbody>
  </table>
  <table width="580">
    <tbody>
      <tr>
        <td colspan="2" height="20"></td>
      </tr>
      <tr>
        <td bgcolor="#666666" colspan="2" height="5"></td>
      </tr>
      <tr>
        <td colspan="2" height="7"></td>
      </tr>
      <tr>
        <td class="table_c" width="157" 
      height="20">产品信息：&nbsp;<a 
      href="javascript:history.back(-1)">&lt;&lt;&lt; 返回</a> </td>
        <td width="411"><input type="hidden" value="1" name="pid" /></td>
      </tr>
    </tbody>
  </table>
   <TABLE class=mars cellSpacing=1 cellPadding=0 width="100%" 
              border=0><TBODY>
              <TR>
                <TD colSpan=4 height=10><INPUT type=hidden value=12 
                name=pid></TD></TR>
              <TR>
                <TD class=table_c width=122 height=15>
                  <DIV align=right>编号:</DIV></TD>
                <TD width=122><INPUT readOnly value=a10 name=productId></TD>
                <TD class=table_c width=85>
                  <DIV align=right>名称:</DIV></TD>
                <TD width=163 height=15><INPUT value=test 
              name=productname></TD></TR>
              <TR>
                <TD class=table_c width=122 height=15>
                  <DIV align=right>药品分类:</DIV></TD>
                <TD width=122><INPUT value=05 name=catalogno></TD>
                <TD class=table_c width=85>
                  <DIV align=right>化学文摘登记号:</DIV></TD>
                <TD width=163 height=15><INPUT value=test name=cas></TD></TR>
              <TR>
                <TD class=table_c width=122 height=15>
                  <DIV align=right>MDL 编号:</DIV></TD>
                <TD width=122><INPUT value=0001 name=mdlnumber></TD>
                <TD class=table_c width=85>
                  <DIV align=right>新产品:</DIV></TD>
                <TD class=table_c height=15>是: <INPUT type=radio CHECKED 
                  value=1 name=newproduct> 否: <INPUT type=radio value=0 
                  name=newproduct> </TD></TR>
              <TR>
                <TD class=table_c width=122 height=15>
                  <DIV align=right>化学方程式:</DIV></TD>
                <TD width=122><INPUT value=s name=formula></TD>
                <TD class=table_c width=85>
                  <DIV align=right>总重量:</DIV></TD>
                <TD width=163 height=15><INPUT value=s name=mw></TD></TR>
              <TR>
                <TD class=table_c width=122 height=15>
                  <DIV align=right>类型:</DIV></TD>
                <TD width=122><INPUT value=生化药 name=category></TD>
                <TD class=table_c width=85>
                  <DIV align=right>备注:</DIV></TD>
                <TD width=163 height=15><INPUT id="" value=s name=note> </TD></TR>
              <TR>
                <TD class=table_c width=122 height=15>
                  <DIV align=right>价钱1:</DIV></TD>
                <TD width=122><INPUT value=56 name=price1></TD>
                <TD class=table_c width=85>
                  <DIV align=right>库存:</DIV></TD>
                <TD width=163 height=35><INPUT value=66 name=stock></TD></TR>
              <TR>
                <TD class=table_c width=122 height=15>
                  <DIV align=right>价格2:</DIV></TD>
                <TD width=122><INPUT value=66 name=price2></TD>
                <TD class=table_c width=85>
                  <DIV align=right>实际库存:</DIV></TD>
                <TD width=163 height=15><INPUT value=66 name=realstock></TD></TR>
              <TR>
                <TD class=table_c width=122><DIV align=right>图片:</DIV></TD>
                <TD width=122><INPUT type=file name=upload><DIV class=img></DIV></TD>
                <TD  colSpan=2><IMG height=50   src="../images/button/23007.gif" width=100></DIV></TD>
                </TR>
              <TR>
                <TD colSpan=4 height=15>
                  <DIV align=center>
                  <DIV class=loading_ll>
                  <INPUT  onclick="return updateProducts(form);" type=image alt=修改 src="../images/button/update1.jpg" border=0 >
              </DIV></DIV></TD></TR></TBODY></TABLE>
 
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
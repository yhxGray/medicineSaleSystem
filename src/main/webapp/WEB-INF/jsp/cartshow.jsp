
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
<link rel="stylesheet" href="css/andreas08(blue).css" type="text/css" media="screen,projection" />
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
          <td height="20"><div class="right_proaducts">我的位置&gt;&gt;医药商务管理&gt;查看购物车<br />
            <br />
          </div>
		  <form action="" method="post" name="form" id="form">
  <DIV class=padding>
  <DIV id=middlebody>
  <table cellspacing="0" cellpadding="0" width="100%" border="0">
    <tbody>
      <tr>
        <td width="30%" background="index.jsp"><div align="left">|&nbsp;&nbsp;欢迎,user&nbsp;&nbsp;|&nbsp;&nbsp;<a class="table_t"  href="index.jsp">注销</a>&nbsp;&nbsp;|</div></td>
        <td width="15%"><div align="center"><a  href="ordershow.do">查看订单</a></div></td>
        <td width="20%"><div align="center"><a  href="cartshow.do">查看购物车</a></div></td>
        <td width="15%"><div align="center"><a href="checkout.do">结算中心</a></div></td>
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
                <td><div align="center">MDL编号</div></td>
                <td><div align="center">价格</div></td>
                <td><div align="center">数量</div></td>
                <td><div align="center">删除</div></td>
              </tr>
              <tr bgcolor="#f3f3f3" height="25">
                <td width="5%"><div align="center">001</div></td>
                <td width="13%"><div align="center">21金维他</div></td>
                <td width="12%"><div align="center">001</div></td>
                <td width="13%"><div align="center">ttt</div></td>
                <td width="8%"><div align="center">105</div></td>
                <td width="29%"><div align="center">
                  <input onchange="javascript:alert('修改成功！')" value="1g"  name="number" />
                  </div></td>
                <td width="13%"><div align="center"><a href="cartshow1.jsp">删除</a></div></td>
              </tr>
              <tr bgcolor="#f3f3f3" height="25">
                <td width="7%"><div align="center">004</div></td>
                <td width="13%"><div align="center">龙血颗粒</div></td>
                <td width="12%"><div align="center">005</div></td>
                <td width="13%"><div align="center">eee</div></td>
                <td width="8%"><div align="center">65</div></td>
                <td width="29%"><div align="center">
                  <input onchange="javascript:alert('修改成功！')" value="1g" name="number2" />
                  </div></td>
                <td width="13%"><div align="center"><a href="cartshow1.jsp">删除</a></div></td>
              </tr>
            </tbody>
          </table></td>
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
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
<script type="text/javascript" src="./js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="./js/acesys.js"></script>
<script type="text/javascript" src="./js/common.js"></script>
</head>
<body>
<div id="container" >
<div id="header">
<h1>加拿大·亚思晟科技 </h1>
<h2>Quality is everything!</h2>
</div>
<div id="navigation"><%@ include file="/indexList.jsp"%></div>

<div id="content"> 
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td>我的位置 &gt;&gt; 医药商务管理</td>
    </tr>
    <tr>
      <td><hr noshade="noshade" /></td>
    </tr>
    <tr>
      <td>商品信息</td>
    </tr>
  </table>
  <br />
  <div class="md_wenzi"> 某某提供全世界配药，生物科技和agroche mical药物研究&amp;发展的先进和新颖的中间体。
    我们的编目是最新与1500年药物象产品。 超过五十种新的化合物每个月增加到产品名单。我们先进的中间体的宽广的类型，
    包括积木，新颖的胺物、被保护的胺物、不自然的氨基酸、酮、醋醛、heterocycles、isatoic酐、boroinc酸和手性
    的中间体可能加速您的药物研究过程。某某也提供半大块中间体(10公斤)，大块中间体(对吨)，使原材料和他们的
    中间体服麻醉剂进入合理的价格和优良品质。 
    请参观<a href="products_show.do">浏览产品页</a>。 <br />
    编目可以在网上被观看或者由<a href="product_searchyk.do">查询产品浏览产品</a> 或您喜欢电子上接受我们的编目的(以PDF或SD格式)，请电子邮件我们. </div>
  <p>&nbsp;</p>
</div><div id="subcontent">
<div id="loginUserJudge" style="display:none">${sessionScope.loginUser.username }</div>
<form name="form" method="post" action="login.do">
    <div class="small box"><jsp:include page="/loginForm.jsp" /></div>
</form>
  <h2>最新商品列表</h2>
  <ul class="menublock">
    <li><a href="#">西药</a><a href="#"><img src="images/buy.gif" width="20" height="16" border="0"/></a></li>
    <li><a href="#">生化药</a><a href="#"><img src="images/buy.gif" width="20" height="16" border="0"/></a></li>
    </ul>


  </div>
<div id="footer">
<p><a href="http://www.ascenttech.com.cn/" target="_blank">版权所有：北京亚思晟商务科技有限公司 &copy;2004-2008|京ICP备05005681</a><a href="#"></a></p>
</div>

</div>
</body>
</html>
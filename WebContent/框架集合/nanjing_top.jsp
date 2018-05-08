<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>nanjing_top</title>
</head>
<body>
<table align="center" width="1225" height="110" border="0">
	<tr>
		<td width="162" rowspan="3"><img alt="图标" src="image/nanjing_logo.jpg"></td>
		<td height="40" colspan="4" bgcolor="#C7FF8E"><h1 align="center">南京小兰旅行社欢迎您</h1><div align="left">欢迎
		<a href="/ServletLogin/userinformation.jsp" target="allFrame"><%=(String)session.getAttribute("username")%></a>使用本系统</div></td>
	</tr>
	<tr>
		<td height="50" colspan="4" background="image/nanjing_logo1.gif">&nbsp;</td>
	</tr>
	<tr>
		<td width="71" height="30" bgcolor="#C7FF8E"><a href="nanjing_zhongshanling.html" target="mainFrame">中山陵</a></td>
		<td width="71" height="30" bgcolor="#C7FF8E"><a href="nanjing_fuzimiao.html" target="mainFrame">夫子庙</a></td>
		<td width="71" height="30" bgcolor="#C7FF8E"><a href="nanjing_xuanwuhu.html" target="mainFrame">玄武湖</a></td>
		<td width="71" height="30" bgcolor="#C7FF8E"><a href="/ServletLogin/gessgame.jsp" target="mainFrame">猜数游戏</a></td>
		<td width="71" height="30" bgcolor="#C7FF8E"><a href="/ServletLogin/calgame.jsp" target="mainFrame">趣味数学小游戏</a></td>
		<td width="828" bgcolor="#C7FF8E">&nbsp;</td>
	</tr>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>js简单的随机数学计算代码演示_源码之家</title>

<style type="text/css">
body{font-family:Dunkin,"开心软件甜蜜蜜简体","Segoe","Segoe UI","微软雅黑",sans-serif;font-size:30px;background-color:#fff}
input,button{font-family:Dunkin,"开心软件甜蜜蜜简体","Segoe","Segoe UI","微软雅黑",sans-serif;font-size:20px}
.title{width:100%;height:100%;position:absolute;left:0;top:0;background-color:#fff;z-index:3;}
#ti{font-family:Dunkin,"Segoe","Segoe UI",sans-serif;font-size:50px;background-color:#fff}
</style>

</head>
<body>

<div class="title" id="title">
	<br><br><h1 align="center">趣味数学计算</h1>
	<center><input type="button" value="答题吧！" onclick="$('title').style.display='none';dati()"></center>
</div>

<center>
	<br>
	<h2 id="ti">17+12</h2><br>
	<input type="text" id="texts"><br><br><input type="button" value="确定" onclick="ok()">
	<br><br>
	答对<span id="att1">0</span>题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;打错<span id="att2">0</span>题<br><span id="att3">60</span>
</center>

<script type="text/javascript">
function $(i){
return document.getElementById(i)
}
function rand(min,max){return Math.round(Math.random()*(max-min)+min)}
var dui=0,cuo=0,time=60,fu1=0,fu2=0,add=0,pd=29;
function dati(){
dui=0;cuo=0;time=60
$("att1").innerHTML="0"
$("att2").innerHTML="0"
$("att3").innerHTML="60"
var art=setInterval(function(){
 time--
 $("att3").innerHTML=time
 if(time<=0){alert("时间到");$('title').style.display='';clearInterval(art)}
},1000)
tis()
}
function tis(){
fu1=rand(5,100);fu2=rand(5,100);add=rand(0,1)
if(fu2>fu1){add=0}
if(add==0){pd=fu1+fu2}
if(add==1){pd=fu1-fu2}
$("ti").innerHTML=fu1+""+["+","-"][add]+""+fu2
}
function ok(){
if($("texts").value==pd){dui++;$("att1").innerHTML=dui}else{cuo++;$("att2").innerHTML=cuo}
tis()
}
</script>

<div style="text-align:center;">
<button onclick="javascript:history.back(-1);">返回上一页</button>
</div>
</body>
</html>
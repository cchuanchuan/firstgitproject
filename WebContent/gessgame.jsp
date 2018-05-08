<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'game.jsp' starting page</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

  </head>
  
  <body>
    <%!int count = 0;%>

    <%
        Object obj = session.getAttribute("numint");//第一次访问的时候，为null，第二次访问之后，都有值
        if (obj == null) {
            Random r = new Random();
            obj = r.nextInt(100);
            session.setAttribute("numint", obj);
        }
        int rm = Integer.parseInt(obj.toString());
    %>

    <%
        String numstr = request.getParameter("num");//获取猜数的数字
        int cou=0;
        if (numstr != null && !"".equals(numstr)) {//直接浏览器url访问jsp，num值为null，提交的时候，没有输入num的值，num值为""
            //num肯定是有值
            count++;
            cou=count;
            int num = Integer.parseInt(numstr);
            if (num > rm) {
                out.println("太大了");

            } else if (num < rm) {
                out.println("太小了");
            } else {
                out.println("终于猜正确了");
                Random r = new Random();
                obj = r.nextInt(100);
                session.setAttribute("numint", obj);
                count=0;
            }
            
        }
    %>


    欢迎您玩猜数游戏,猜了
    <%=cou%>次<%--<%out.print(rm); --%>
    <form action="gessgame.jsp" method="post">
        <br> 输入数字 <input name="num"> <input type="submit" value="点击确认"><br>
        <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回上一页">
    </form>

  </body>
</html>
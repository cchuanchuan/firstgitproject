<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.lah.toolBean.MyTools" %>
<jsp:useBean id="user" class="com.lah.valueBean.User" scope="request"/>
<jsp:setProperty property="*" name="user"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册成功</title>
</head>
<body>
<%=MyTools.toChinese(user.getUsername())%><br>
<%=MyTools.toChinese(user.getPassword())%><br>
<%=MyTools.toChinese(user.getEmail())%><br>
<%=MyTools.toChinese(user.getPhone())%><br>
<%
    try{//载入jdbc程序
    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    }catch(ClassNotFoundException e){
    	e.printStackTrace();
    }
    
    try{
    	String StrCon="jdbc:sqlserver://47.106.97.135:1433;databaseName=usermessage";
        Connection conn=DriverManager.getConnection(StrCon,"chuanchuan","257173");
        Statement stmt=conn.createStatement();
        String sql1="select username from users where username='"+MyTools.toChinese(user.getUsername())+"'";
        ResultSet rs=stmt.executeQuery(sql1);
        if(rs.next()){
        	%>
        	alert("用户名已存在！");
        	<%
        	request.getRequestDispatcher("/register.jsp").forward(request, response);
        	return ;
        }
        String sql="insert into users(username,password,email,phone) values(?,?,?,?)";
        PreparedStatement prestmt = conn.prepareStatement(sql);
		prestmt.setString(1, MyTools.toChinese(user.getUsername()));
		prestmt.setString(2, MyTools.toChinese(user.getPassword()));
		prestmt.setString(3, MyTools.toChinese(user.getEmail()));
		prestmt.setString(4, MyTools.toChinese(user.getPhone()));
		prestmt.executeUpdate();
		session.setAttribute("username", MyTools.toChinese(user.getUsername()));
		response.sendRedirect("/ServletLogin/mainsite/index.jsp");
    }catch(SQLException e){
    	out.println(e.getMessage());
    }
    %>

</body>
</html>
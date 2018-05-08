package com.jsp.servlet;


import java.io.IOException;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet implements javax.servlet.Servlet{
	private static final long serialVersionUID = 1L;
	String StrCon="";
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
    /**
     * Default constructor. 
     */
    public Login() {
        super();     
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    public void destory(){
    	super.destroy();
    }
    
    public void init()throws ServletException{
        try{//载入jdbc程序
        	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        }catch(ClassNotFoundException e){
        	e.printStackTrace();
        }
    }
    
    public int queryUser(String sql)throws Exception{
    	int message = 0;
    	try{
    		//定义数据库连接字符串，数据库的名称是test
    		StrCon="jdbc:sqlserver://47.106.97.135:1433;databaseName=usermessage";
    		con=DriverManager.getConnection(StrCon,"chuanchuan","257173");
    		
    		stmt=con.createStatement();
    		rs=stmt.executeQuery(sql);
    		if(rs.next()){
    			message = rs.getInt(1);
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	return message;
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String username = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		
		String sql = "select count(*) from users where username='"+username+"'and password='"+password+"'";
		try{
			int message = queryUser(sql);
			if(message == 1){
				session.setAttribute("username", username);
				response.sendRedirect("/ServletLogin/mainsite/index.jsp");
			}
			else{
				session.setAttribute("username", username);
				request.getRequestDispatcher("/error.jsp").forward(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}

<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
 Connection conn=null;
 try{
	 String url="jdbc:mysql://localhost:3306/BookMarket";
	 String user="book";
	 String password="1234";
	 
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 conn=DriverManager.getConnection(url,user,password);
	 /* mysql에서 스키마 생성하고 진행해야함 */
	 if(conn==null){
		 Context init = new InitialContext();
	 DataSource ds = 
	 	 //context.xml에 있는 name ="jdbc/bookMarketDB"와 init.lookup(java:comp/env/뒤에 오는 문자)가 같으면 됨!;
	     (DataSource)init.lookup("java:comp/env/jdbc/bookMarketDB");
	      conn=ds.getConnection();
     } 
		 
	 //out.print("연결 성공");
 }catch(Exception e){
	 out.println("데이터베이스 연결이 실패했습니다");
	 out.print("SQLException : " +e.getMessage());
 }
%>
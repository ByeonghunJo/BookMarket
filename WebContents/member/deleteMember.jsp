<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	String sessionId = (String)session.getAttribute("sessionId");
%>
<%-- <%=sessionId%><br> --%>
<sql:setDataSource  var="dataSource"  
  url="jdbc:mysql://localhost:3306/BookMarket" 
  driver="com.mysql.cj.jdbc.Driver"
  user="book"
  password="1234"/>
  
<sql:update dataSource="${dataSource}" var="resultSet">
 delete from member where cid=?
 <sql:param value="<%=sessionId%>"/>
</sql:update>

<c:if test="${resultSet>=1}">
     <c:import var="url" url="logoutMember.jsp"/>
     <c:redirect url="resultMember.jsp?msg=3"/>
</c:if>
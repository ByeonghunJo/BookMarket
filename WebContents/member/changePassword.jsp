<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%
	String sessionId = (String)session.getAttribute("sessionId");	
%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<title>비밀번호 변경하기</title>
</head>
<body>
 <jsp:include page="/me.jsp"/>
<br>
 <hr>
  <div class="container" align="center">
     <div class="col-md-4 col-md-offset-4">
          <h3 class="form-signin-heading">Change Password</h3>
          <form class="form-signin" method="post" action="processChangePassword.jsp">
              <div class="form-group">
                  <label for="inputUserName" class="sr-only">User Name</label>
                  <input type="hidden" class="form-control" placeholder="ID" name="id" value="<%=sessionId%>" required autofocus>
              </div>
              <div class="form-group">
                 <label class="col-sm-7" for="inputPassword">현재 비밀번호</label>
                 <input type="password" class="form-control" placeholder="Password" name="currentPassword" required>
              </div>
               <div class="form-group">
                 <label class="col-sm-7" for="inputPassword">새로운 비밀번호</label>
                 <input type="password" class="form-control" placeholder="New Password" name="newPassword" required>
              </div>
               <div class="form-group">
                 <label class="col-sm-7" for="inputPassword">비밀번호 확인</label>
                 <input type="password" class="form-control" placeholder="Confirm Password" name="newPasswordConfirm" required>
              </div>
              <button class="btn btn btn-lg btn-primary " type="submit">변경하기</button>
              <button class="btn btn btn-lg btn-secondary " type="reset">초기화</button>
              <button class="btn btn btn-lg btn-success " type="button" 
                        onclick="window.close()">닫기</button>
          </form>
     </div>
  </div>
</body>
<%@ include file="/fo.jsp" %>
</html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>

<head>
   <title>Company Home Page</title>
</head>
<body>

  <h2>My Company Home Page</h2>
  
  <hr>
  
  <p>
     Welcome to the company home page
  </p>
  
  <p>
     User: <sec:authentication property="principal.username" />
     <br> <br>
     Role(s): <sec:authentication property="principal.authorities" />
  </p>
  
  <hr>

  <p>
     <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
     For Managers Only
  </p>
  
  <hr>
  
  <sec:authorize access="hasRole('ADMIN')">
    <sec:authentication property="principal.username" /> Is Authorized to Manage Users
  </sec:authorize>
    
  <form:form action="${pageContext.request.contextPath}/logout" method="POST">
     <input type="submit" value="Logout" />   
    
  </form:form>
    
    
</body>

</html>
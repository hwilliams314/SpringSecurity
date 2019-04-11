<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">
       <input type="submit" value="Logout" />   
    
    </form:form>
    
    
</body>

</html>
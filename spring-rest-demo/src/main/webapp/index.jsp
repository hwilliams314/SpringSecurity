<html>
<head>

</head>
<body>

Spring Rest demo

<hr>
<br><br>

<!-- this also works    <a href="test/hello">Hello</a>   -->
<a href="${pageContext.request.contextPath}/test/hello">Hello</a>

<hr>
<br><br>
<a href="${pageContext.request.contextPath}/api/students">Get Student List</a>

</body>

</html>
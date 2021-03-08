   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body bgcolor="pink" align="center" >
<h1>Project Information</h1>
<form:form method="GET" action="projectsave" modelAttribute="project" >
ID:<form:input path="id"/><br>
 ProjectName:<form:input path="projectName"/><br>
<input type="submit" value="Save"><br>
</form:form>
</body>
</html>
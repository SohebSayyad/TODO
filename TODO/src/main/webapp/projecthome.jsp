   8<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" align="center" bgcolor="green" width="800" heigth="800">
<tr>
<th>ID</th>
<th>projectName</th>

</tr>
<c:forEach items="${plist}" var="p">
<tr>
<td>${p.id}</td>
<td>${p.projectName} </td>
<td><button><a href="projectdelete${p.id }">Delete</a></button></td>
<td><button><a href="viewtask${p.id }">ViewTask</a></button></td>

</tr>
</c:forEach>

</table>
<a href="projectadd" align="cnter">Add</a>

</body>
</html>
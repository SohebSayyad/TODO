  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<button align="center">
<a href="addtask${project.id }" >Add</a>
</button>
<h1 align="center" bgcolor="yellow"> OpenTask<h1>
<table border="1" align="center" bgcolor="green" >
<tr>
<th>ID</th>
<th>Name</th>
<th>Status</th>
<th>Delete</th>
<th>Close</th>
</tr>
<c:forEach items="${project.tasks}" var="t">
<c:if test="${t.status }">
<tr>
<td>${t.id}</td>
<td>${t.taskName} </td>
<td>${t.status }</td>
<td><button><a href="task${t.id }delete${project.id }" >Delete</a></button></td>
<td><button><a href="task${t.id } close${project.id }"> Completed</a></button></td>
</tr>
</c:if>
</c:forEach>
</table>
<br>
<br><br>
<h1 align="center" bgcolor="yellow">ClosedTasks<h1>
<table border="1" align="center" bgcolor="green" >
<tr>
<th>ID</th>
<th>Name</th>
<th>Status</th>
<th>Delete</th>

</tr>

<c:forEach items="${project.tasks}" var="t">
<c:if test="${t.status==false }">
<tr>
<td>${t.id}</td>
<td>${t.taskName} </td>
<td>${t.status }</td>
<td><button><a href="task${t.id }delete${project.id }" >Delete</a></button></td>
</tr>
</c:if>
</c:forEach>
</table>

</body>
</html>
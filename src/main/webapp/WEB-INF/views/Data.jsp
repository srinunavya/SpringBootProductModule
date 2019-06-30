<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Welcome To Product Data</h3>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>CODE</th>
			<th>NAME</th>
			<th>COST</th>
			<th>GST</th>
			<th>NOTE</th>
			<th>OPERATIONS</th>
		</tr>
		<c:forEach items="${list}" var="ob">
			<tr>
				<td><c:out value="${ob.id}" /></td>
				<td><c:out value="${ob.code}" /></td>
				<td><c:out value="${ob.name}" /></td>
				<td><c:out value="${ob.cost}" /></td>
				<td><c:out value="${ob.gst}" /></td>
				<td><c:out value="${ob.note}" /></td>
				<td><a href="delete?id=${ob.id}">DELETE</a>
		</c:forEach>
	</table>
${msg}
</body>
</html>
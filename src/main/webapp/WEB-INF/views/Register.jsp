<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Welcome To Product Register</h3>
<form:form action="save" method="POST" modelAttribute="product">
<pre>

CODE  :<form:input path="code"/>

NAME  :<form:input path="name"/>

COST  :<form:input path="cost"/>

GST   :<form:select path="gst">
       <form:option value="">-select-</form:option>
       <form:option value="5">5%-SLAB</form:option>
       <form:option value="12">12%-SLAB</form:option>
       <form:option value="18">18%-SLAB</form:option>
       <form:option value="22">22%-SLAB</form:option>
       <form:option value="30">30%-SLAB</form:option>
       </form:select>
       
NOTE  :<form:textarea path="note"/>  

      <input type="submit" value="CREATE PRODUCT"/>
        
</pre>
</form:form>
${message}
</body>
</html>
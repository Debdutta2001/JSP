<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
request.setAttribute("C_name" , "Congnizant");
//out.println(request.getAttribute("C_name"));
%>
     <h3>C-Name : ${requestScope.C_name } </h3> 

<%
session.setAttribute("address" , "kolkata-sector 5");
//out.println(session.getAttribute("address"));
%>
       <h3>Address: ${address} </h3>

<form action="output.jsp">
<input type="text" name="name1" placeholder="enter your name" oninput="this.value=this.value.toUpperCase()" /><br><br>
<input type="text" name="age1" placeholder="enter your age" /><br><br>
<input type="submit" value="click me" />

</form>
</body>
</html>
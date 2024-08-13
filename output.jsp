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
//String myname=request.getParameter("name1");
//out.println(myname);
//String myage=request.getParameter("age1");
//out.println(myage);
%>

 <h3> ${param.name1} </h3>
 <h3> ${param.age1}  </h3>
 
   ${10+25}
</body>
</html>
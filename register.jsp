<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="regForm" method="post">
   Name : <input type="text" name="name1" placeholder="enter your name" required /><br/><br/>
   Email :<input type="text" name="email1" placeholder="enter your email" required /><br/><br/>
   Password : <input type="password" name="pass1" placeholder="enter your password" required ><br/><br/>
   Gender : <input type="radio" name="gender1" value="Male" > Male <input type="radio" name="gender1" value="Female" >Female <br/><br/>
   City:<select name="city1"\>
        <option> Select city </option>
        <option> Delhi </option>
        <option> Noida </option>
        <option> Kolkata </option>
        <option> Bengalore </option>
        <option> Hydrabad </option>
        
   
         </select><br/><br/>
         <input type="submit" value="Register" />
</form>
</body>
</html>
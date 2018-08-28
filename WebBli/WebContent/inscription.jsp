<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulaire d'Inscription</title>
</head>
<body>

	<% /*Inclure Logo*/ %>
	<jsp:include page="logo.html"></jsp:include>
	
	<marquee dir="ltr"><font style="color: navy;">Welcome to WebBli</font></marquee>

	<HR>

	<div id="nav">
	   <ul>
	     <li><a href=home.jsp>Home</a></li>
	     <li><a href=inscription.jsp>Sign up</a></li>
	     <li><a href=livre.jsp>Nos Livres</a></li>
	     <li><a href=contact.jsp>Contactez-nous</a></li>
	   </ul>
	   <div class="clear"> </div>
	</div>

	<HR>

   <form action="inscriptionSave.jsp">    
    	<table>
	    	<tr> <td>Nom: </td><td><input type="text" name="username"></td></tr>
			<tr> <td>Prenom: </td><td><input type="text" name="userfirstname"></td></tr>
			<tr> <td>Password: </td><td><input type="password" name="password"></td></tr>
			<tr> <td>Email: </td><td><input type="text" name="email"></td></tr>
			<tr><td><input type="submit" value="Submit"></td></tr>
		</table>    
    </form>

  	<HR>
           
            
    <jsp:include page="footer.html"></jsp:include>
    
    <HR>



</body>
</html>
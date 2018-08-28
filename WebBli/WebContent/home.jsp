<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page d'Accueil</title>
</head>
<body>

	<% /*Inclure Logo*/ %>
	<jsp:include page="logo.html"></jsp:include>
	
	
	
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
	
	<% /*Inclure Footer*/ %>
	<jsp:include page="footer.html"></jsp:include>

</body>
</html>
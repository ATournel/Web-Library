<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	
	<h2>Consulter par:</h2>
	
	<form action="livreSelect.jsp">
		<input type="submit" value="Titres">
	</form>
	<form action="auteurSelect.jsp">
		<input type="submit" value="Auteurs">
	</form>
	<form action="genreSelect.jsp">
		<input type="submit" value="Genres">
	</form>
	
	<HR>
	
	<% /*Inclure Footer*/ %>
	<jsp:include page="footer.html"></jsp:include>

</body>
</html>
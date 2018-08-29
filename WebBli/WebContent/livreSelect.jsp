<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="webBli.Livre"%>
<%
ArrayList<Livre> listeLivre = new ArrayList<Livre>();
try{
	Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/webli";
		String user = "root";
		String pwd= "Ioplop88";
		
		Connection con = DriverManager.getConnection(url, user, pwd);
		Statement st = con.createStatement();
		String sql = "Select * FROM livre ORDER BY titre";
		ResultSet result = st.executeQuery(sql);
		
				
		
		
		while(result.next()) {
			
			Livre instanceLivre = new Livre();
				
			instanceLivre.setTitre(result.getString("titre"));
			instanceLivre.setAuteur(result.getString("auteur"));
			instanceLivre.setGenre(result.getString("genre"));
			
			listeLivre.add(instanceLivre);
		}
}
catch (SQLException e) {
	e.printStackTrace();
}
catch (ClassNotFoundException e) {
	e.printStackTrace();
}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Livres par Titres</title>
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
	
	<% 
	out.println("<ul>");
	for (int i=0; i<listeLivre.size(); i++)
          {
		
			  out.println("<li>");
			  out.println("<strong>");
              out.print(listeLivre.get(i).getTitre());
              out.println("</strong>");
              out.print(", de ");
              out.println("<em>");
              out.print(listeLivre.get(i).getAuteur());
              out.println("</em>");
              out.print(" - ");
              out.println(listeLivre.get(i).getGenre());
              out.print(".");
              out.print("</li>");
              out.println("<br />");

          } 
	out.println("</ul>");%>
	
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
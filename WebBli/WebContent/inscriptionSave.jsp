<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
 <%
 try {
 			String n = request.getParameter("username");
	        String p = request.getParameter("userfirstname");
	        String e = request.getParameter("password");
	        String c = request.getParameter("email");
	        
	        
	        Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/webli";
			String user = "root";
			String pwd= "Ioplop88";
			
			Connection con=DriverManager.getConnection(url, user, pwd);
			PreparedStatement ps = con.prepareStatement("insert into inscription values(?,?,?,?)");
				
			ps.setString(1, n);
		    ps.setString(2, p);
		    ps.setString(3, e);
		    ps.setString(4, c);
		            
		    int i = ps.executeUpdate();
		            
		            
		    if(i>0){
		    %>
		        <jsp:forward page="home.jsp"></jsp:forward>
		    <% 
		    }
		    else{
		    	out.print("sorry!please fill correct detail and try again" );
		    }
				
 }
 catch(Exception e){e.printStackTrace();
 out.print("sorry!please fill correct detail and try again" );
 }

 %>

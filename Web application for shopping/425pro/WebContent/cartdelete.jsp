<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart delete</title>
</head>
<body>

	<%
      	String userName = request.getParameter("user");
		String productid = request.getParameter("productid");
		
		 //Connect database.
      	String driverName="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
				
		Statement cartstmt=conn.createStatement();
		ResultSet cartrs = null;
		String cartsql = "delete from Cart where CustomerID = '" + userName +"' and ProductID ='" +productid +"'";
		cartrs = cartstmt.executeQuery(cartsql);
		
	%>
	
	<jsp:forward page="order.jsp">
     <jsp:param name="user" value= "<%=userName %>" />
	</jsp:forward>

</body>
</html>
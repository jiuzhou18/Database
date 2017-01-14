<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Address Delete</title>
</head>
<body>
<%
	String AddressID = request.getParameter("AddID");
	String userName = request.getParameter("user");
	
	
	String driverName="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
	Class.forName(driverName);
	Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
	
	String sql1="Delete from CustomerAddress where AddressID = '"+AddressID+"'";
	String sql2="Delete from Address where AddressID = '"+AddressID+"'";
	System.out.println(sql2);
	
	Statement delete=conn.createStatement();
	//delete.execute(sql2);
	delete.execute(sql1);
	delete.execute(sql2);
	
	delete.close();
 	conn.close();
%>
	<jsp:forward page="setting.jsp">
        <jsp:param name="user" value= "<%=userName %>" />
         </jsp:forward>
</body>
</html>
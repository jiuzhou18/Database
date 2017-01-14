<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Address modify Save</title>
</head>
<body>
<%
	String newStreet = request.getParameter("newStreet");
	String newZip = request.getParameter("newZip");
	String AddressID = request.getParameter("AddID");
	String newType= request.getParameter("Type");
	String userName = request.getParameter("user");
	System.out.println(newType);
	System.out.println(newZip);
	
	String driverName="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
	Class.forName(driverName);
	Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
	
	String sql1= "update Address set Street = '" + newStreet + "' where AddressID = '"+ AddressID +"'";
	String sql2= "update Address set Zipcode = '" + newZip + "' where AddressID = '" + AddressID +"'";
	System.out.println(sql2);
	String sql3= "update CustomerAddress set Type = '" +newType+"'where AddressID = '"+ AddressID+"'";
	
	Statement modify = conn.createStatement();
	modify.execute(sql1);
	modify.execute(sql2);
	modify.execute(sql3);
	
	modify.close();
	conn.close();
%>	
<jsp:forward page="setting.jsp">
        <jsp:param name="user" value= "<%=userName %>" />
         </jsp:forward>

</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Save</title>
</head>
<body>
	<%
	String userName = request.getParameter("user");
	String newCard = request.getParameter("newCard");
	String newStreet = request.getParameter("newStreet");
	String newZip = request.getParameter("newZip");
	String newAddressID = "A" + request.getParameter("newCard");
	
	System.out.println(newAddressID);
	
	String driverName="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
	Class.forName(driverName);
	Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
	
	String sql1="insert into CreditCard values('"+ newCard +"','"+ newAddressID +"','" + userName +"')";
	String sql2="insert into Address values('" + newAddressID+"','" + newStreet +"','" + newZip+"')";
	
	
	
	Statement Add = conn.createStatement();
	Add.execute(sql2);
	Add.execute(sql1);
	
	Add.close();
	conn.close();
	
	
	%>
	
	<jsp:forward page="setting.jsp">
        <jsp:param name="user" value= "<%=userName %>" />
         </jsp:forward>
</body>
</html>
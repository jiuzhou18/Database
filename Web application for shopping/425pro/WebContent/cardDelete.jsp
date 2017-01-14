<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Credit Card Delete</title>
</head>
<body>
	<%
	String CardID = request.getParameter("CardID");
	String userName = request.getParameter("user");
	String addressID = null;
	System.out.println(userName);
	
	
	//System.out.println(CardID);
	
	String driverName="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
	Class.forName(driverName);
	Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
	
	String sql1 = "Select AddressID from CreditCard where CardID = '" +CardID +"'";
	Statement deleteAdd = conn.createStatement();
	ResultSet rs = deleteAdd.executeQuery(sql1);
	rs.next();
	addressID = rs.getString("AddressID");
	System.out.println(addressID);
	
	String sql = "Delete from CreditCard where CardID = '"+ CardID +"'";
	String sql2 = "Delete from Address where AddressID = '" + addressID +"'";
	Statement delete=conn.createStatement();
	delete.execute(sql);
	delete.execute(sql2);
	
	delete.close();
	deleteAdd.close();
	rs.close();
 	conn.close();
	%>
	<jsp:forward page="setting.jsp">
        <jsp:param name="user" value= "<%=userName %>" />
         </jsp:forward>
</body>
</html>
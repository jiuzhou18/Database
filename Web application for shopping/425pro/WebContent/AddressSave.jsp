<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*, java.util.Random" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Address Save</title>
</head>
<body>
	<%
	String userName = request.getParameter("user");
	String newStreet = request.getParameter("newStreet");
	String newZip = request.getParameter("newZip");
	
	Random random = new Random();
	int ID = random.nextInt(10);
	
	String driverName="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
	Class.forName(driverName);
	Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
	
	Statement checkID = conn.createStatement();
	while(true){
	String sql1 = "Select * from Address where AddressID = '"+ ID +"'";
	ResultSet check = checkID.executeQuery(sql1);
	if (check.next() == false)
		break;

	}
	System.out.println(ID);
	
	String sql2 = "insert into Address values('" + ID +"', '"+newStreet+"', '"+newZip+"')";
	String sql3 ="insert into CustomerAddress values('"+userName+"', '"+ID+"', 'delivery')";
	
	Statement Add = conn.createStatement();
	Add.executeQuery(sql2);
	Add.executeQuery(sql3);
	
	checkID.close();
	Add.close();
	conn.close();
	
	
	%>
	<jsp:forward page="setting.jsp">
        <jsp:param name="user" value= "<%=userName %>" />
         </jsp:forward>
</body>
</html>
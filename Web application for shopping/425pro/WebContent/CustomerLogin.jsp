<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Login verification</title>
</head>
<body>
	<%
	boolean flag = false;
	
    	String userName = request.getParameter("username");
    	String password = request.getParameter("password");
    	
    	//Connect database.
    	String driverName="oracle.jdbc.driver.OracleDriver";
 		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
 		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		String sql="select * from Customer where CustomerID = '" + userName + "' and password = '" + password + "'";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
    	flag = rs.next();
    	System.out.println("User " + userName + " login verifyed by database:" + flag);
    	rs.close();
     	stmt.close();
     	conn.close();
    %>
    
    <%
    if(flag){
    %>
    	<jsp:forward page="product.jsp">
        <jsp:param name="user" value= "<%=userName %>" />
         </jsp:forward>
    <%
		
	}else{
		request.setAttribute("message", "Customer name or password is not paired!");
		request.getRequestDispatcher("home.jsp").forward(request, response);
	}
	%>
   <%
    
   %>

</body>
</html>
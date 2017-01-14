<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product modify run</title>
</head>
<body>
		
		<%
      	String userName = request.getParameter("user");
		String selection = request.getParameter("select");
      	if(selection==null){
        	%>
        	  <jsp:forward page="staffproduct.jsp">
              <jsp:param name="user" value= "<%=userName %>" />
              <jsp:param name="message" value= "No selection!" />
              </jsp:forward>
          <%
          }
      	      	
      	String driverName="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		
		Statement stmt=conn.createStatement();
		ResultSet rs = null;
      	     	
      	String sql = "delete from AdditionInfo  where ProductID = '" + selection + "'";
		rs=stmt.executeQuery(sql);
  		
		sql = "delete from Store  where ProductID = '" + selection + "'";
  		rs = stmt.executeQuery(sql);
		
		sql = "delete from ProductPrice  where ProductID = '" + selection + "'";
  		rs=stmt.executeQuery(sql);
		
  		sql = "delete from Product where ProductID = '" + selection + "'";
  		rs=stmt.executeQuery(sql);
      	
  		
      	rs.close();
      	stmt.close();
      	%>    
		<jsp:forward page="staffproduct.jsp">
        <jsp:param name="user" value= "<%=userName %>" />
        </jsp:forward>


</body>
</html>
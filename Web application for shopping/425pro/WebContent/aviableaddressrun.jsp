<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*,java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>run/title>
</head>
<body>

<%
      	String userName = request.getParameter("user");
		String addr = request.getParameter("addrselect");
		
		String driverName="oracle.jdbc.driver.OracleDriver";
 		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
 		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		
		String addrsql="select Zipcode from Address where AddressID = '" + addr + "'";
		Statement stmt1=conn.createStatement();
		ResultSet addrrs=stmt1.executeQuery(addrsql);
      	addrrs.next();
      	int zipcode = Integer.parseInt(addrrs.getString("Zipcode"));
      	String state= null;
		if(60001<=zipcode && zipcode<=62999) state="IL";
		else if(90001<=zipcode && zipcode<=96162) state ="CA";
		else if(10001<=zipcode && zipcode<=14975) state ="NY";
		else if(46001<=zipcode && zipcode<=47997) state ="IN";
		addrrs.close();
		stmt1.close();
		
		String warehousesql="select * from Warehouse natural join Address";
		Statement stmtware=conn.createStatement();
		ResultSet warehousers=stmtware.executeQuery(warehousesql);
		int warecode = -1;
		String warestate = null;
		String wareID = null;
		Statement stmtstore=conn.createStatement();
		boolean hasstore = false;
		boolean enoughstore = true;
		
		while(warehousers.next()){
			warecode = warehousers.getInt("Zipcode");
			warestate = null;
			if(60001<=warecode && warecode<=62999) warestate="IL";
			else if(90001<=warecode && warecode<=96162) warestate ="CA";
			else if(10001<=warecode && warecode<=14975) warestate ="NY";
			else if(46001<=warecode && warecode<=47997) warestate ="IN";
			if(state.equals(warestate)){
				wareID = warehousers.getString("WarehouseID");
				warehousers.close();
				stmtware.close();
				conn.close();
		%>
			<jsp:forward page="product.jsp">
        	<jsp:param name="user" value= "<%=userName %>" />
        	<jsp:param name="stateselect" value= "<%=wareID %>" />
        	 </jsp:forward>
				
				
		<%	
			}
		}
%> 

</body>
</html>
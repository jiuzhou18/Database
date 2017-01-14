<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stock modify run</title>
</head>
<body>
		
		<%
      	String userName = request.getParameter("user");
		String selection = request.getParameter("select");
		
		String driverName="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		Statement stmt=conn.createStatement();
		String sql="select * from Store where WarehouseID = '" + selection + "'";
	    ResultSet rs=stmt.executeQuery(sql);
	    Statement stmt1=conn.createStatement();
	    ResultSet rs1 = null;
	    double sumsize = 0;
	    while(rs.next()){
			String para = rs.getString("ProductID");
			int currentnum = Integer.parseInt(rs.getString("ProductNumber"));
   			String add = request.getParameter(para);
   			int addnum = 0;
   			if(add!=null && !add.equals("") && !add.equals("0")){
   				addnum = Integer.parseInt(add);
   			}
			String prosql = "select ProSize from Product where ProductID='" +para + "'"; 
   			rs1 = stmt1.executeQuery(prosql);
   			rs1.next();
   			double size = Double.parseDouble(rs1.getString(1));
   			sumsize += (currentnum+addnum)*size;
   			System.out.println(sumsize);
	    }
	    
	    sql="select Capacity from Warehouse where WarehouseID = '" + selection + "'";
	    rs=stmt.executeQuery(sql);
	    rs.next();
	    double waresize = Double.parseDouble(rs.getString(1));
	    System.out.println(waresize);
	    if(sumsize > waresize){
	    %>
      	  <jsp:forward page="stockmodify.jsp">
            <jsp:param name="user" value= "<%=userName %>" />
            <jsp:param name="select" value= "<%=selection %>"/>
            <jsp:param name="message" value= "Exceed the capacity!" />
            </jsp:forward>
        <%
	    }
	    
	    sql="select * from Store where WarehouseID = '" + selection + "'";
	    rs=stmt.executeQuery(sql);
	    while(rs.next()){
			String para = rs.getString("ProductID");
			String add = request.getParameter(para);
   			int addnum = 0;
   			if(add!=null && !add.equals("") && !add.equals("0")){
   				addnum = Integer.parseInt(add);
   				String prosql = "update Store set ProductNumber = ProductNumber + "+ addnum +" where ProductID='" +para + "' and warehouseID = '"+ selection +"'"; 
   	   			rs1 = stmt1.executeQuery(prosql);
	   			System.out.println("update Store set ProductNumber = ProductNumber + "+ addnum +" where ProductID='" +para + "' and warehouseID = '"+ selection +"'");
   			}
   			
	    }
   			
	    rs.close();
	    stmt.close();
	    rs1.close();
	    stmt1.close();
	    
	    %>
	     <jsp:forward page="stockmodify.jsp">
            <jsp:param name="user" value= "<%=userName %>" />
            <jsp:param name="select" value= "<%=selection %>"/>
         </jsp:forward>
	    
	    
</body>
</html>
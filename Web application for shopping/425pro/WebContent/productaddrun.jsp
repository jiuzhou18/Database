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
      	      	
      	String driverName="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		
		Statement stmt=conn.createStatement();
		ResultSet rs = null;
      	     	
      	String content[] ={"ProductID", "Category", "Type","ProSize","Name"}; 
		String contentresult[] = new String[content.length];
      	for(int i=0; i<content.length; i++){
      		contentresult[i] = request.getParameter(content[i]);
	  	}
      	String sql = "insert into Product values ('" +contentresult[0]+ "', '" +contentresult[1]+ "', '"
	  					+contentresult[2]+ "', '"+contentresult[3]+ "', '" +contentresult[4]+"')";
  		rs=stmt.executeQuery(sql);
      	
      	int infonum = 3;
      	String newinfos[] = new String[infonum];
      	String oldinfos[] = new String[infonum];
      	for(int i=0; i<infonum; i++){
      		newinfos[i] = request.getParameter("newinfo"+(i));	
      		if(newinfos[i]!=null && !newinfos[i].equals("")){
      			sql = "insert into AdditionInfo values ('" +contentresult[0]+ "', '" +newinfos[i]+ "')";
				rs=stmt.executeQuery(sql);
      		}
      	}
      	
      	
      	String statescope[] ={"IL", "CA", "NY", "IN", "00"};
      	for(int i=0; i<statescope.length; i++){
      		String price = request.getParameter(statescope[i]);
      		if(price==null || price.equals("")){
      	%>
      		<jsp:forward page="staffproduct.jsp">
      		  <jsp:param name="user" value= "<%=userName %>" />
      		  <jsp:param name="message" value= "The set price cannot be null!" />
       		 </jsp:forward>
      	<%	
      		}
      		sql = "insert into ProductPrice values ('" +contentresult[0]+ "', '" +statescope[i]+ "', '" +price+ "')";
      		rs=stmt.executeQuery(sql);
      	}
      	sql = "select WarehouseID from Warehouse";
      	rs=stmt.executeQuery(sql);
      	
      	Statement stmt1=conn.createStatement();
		ResultSet rs1 = null;
      	while(rs.next()){
      		String warehouse = rs.getString(1);
      		String sql1 = "insert into Store values ('" +warehouse+ "', '" +contentresult[0]+ "', '0')";
      		rs1 = stmt1.executeQuery(sql1);
      	}
      	
      	rs1.close();
      	stmt1.close();
      	rs.close();
      	stmt.close();
      	%>    
		<jsp:forward page="staffproduct.jsp">
        <jsp:param name="user" value= "<%=userName %>" />
        </jsp:forward>


</body>
</html>
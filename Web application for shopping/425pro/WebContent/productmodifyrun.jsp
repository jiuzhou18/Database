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
      	String productID = request.getParameter("oldID");
      	
      	String driverName="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		
		Statement stmt=conn.createStatement();
		ResultSet rs = null;
      	      	
      	String content[] ={"ProductID", "Category", "Type","ProSize","Name"}; 
		String contentresult[] = new String[content.length];
      	for(int i=1; i<content.length; i++){
      		contentresult[i] = request.getParameter(content[i]);
      		if(contentresult[i]!=null && !contentresult[i].equals("")){
      			String sql = "update Product set "+content[i]+" = '"+contentresult[i]+"' where ProductID = '" + productID + "'";
          		rs=stmt.executeQuery(sql);
      		}
	  	}
      	
      	
      	int infonum = Integer.parseInt(request.getParameter("infonum"));
      	String newinfos[] = new String[infonum];
      	String oldinfos[] = new String[infonum];
      	for(int i=0; i<infonum; i++){
      		newinfos[i] = request.getParameter("newinfo"+(i+1));
      		oldinfos[i] = request.getParameter("oldinfo"+(i+1));
      		if(newinfos[i]!=null && !newinfos[i].equals("")){
      			String sql = "update AdditionInfo set Information = '"+newinfos[i]+"' where ProductID = '" + productID + 
      				"' and Information ='"+ oldinfos[i] +"'";
      			rs=stmt.executeQuery(sql);
      		}
      		
      	}
      	
      	String statescope[] ={"IL", "CA", "NY", "IN", "00"};
      	for(int i=0; i<statescope.length; i++){
      		String price = request.getParameter(statescope[i]);
      		if(price!=null && !price.equals("")){
      			String sql = "update ProductPrice set Price = '" +price+"' where ProductID = '" + productID + 
      				"' and State ='"+ statescope[i] +"'";
      			rs=stmt.executeQuery(sql);
      		}
      		
      	}
      	%>    
		<jsp:forward page="staffproduct.jsp">
        <jsp:param name="user" value= "<%=userName %>" />
        </jsp:forward>


</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
  try
  {
   String driverName="oracle.jdbc.driver.OracleDriver";
 	String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
 	Class.forName(driverName);
	 Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
	 String sql="select * from Customer";
	 Statement stmt=conn.createStatement();
	 ResultSet rs=stmt.executeQuery(sql);
	 System.out.println("Login database successfully now");
	 out.println("<table border=1 width=400>");
	 while(rs.next())
	 {
 	 String para1 = rs.getString("CustomerID");
 	 String para2 = rs.getString(2);
 	 String para3 = rs.getString(3);
 	 int para4 = rs.getInt(4);
 	 out.println("<tr><td>"+para1+"</td><td>"+para2+"</td><td>"+para3+"</td><td>"+para4+"</td></tr>");
	 }
 	rs.close();
 	stmt.close();
 	conn.close();
 	}
 	catch(Exception e){
 	System.out.println("Exception:"+e.getMessage());
 	}
   %>
<script>
   function login(){
   var name=document.getElementById("name").value;
   var pass=document.getElementById("pass").value;
   if(name=="admin" && pass=="admin"){
   alert("Login successfully!");
   window.location="test.jsp" ;
   }else{
   alert("Username or password are wrong.");
     window.location="connect.jsp" ;
     }   
   }
</script>
<body>
<form name="f" action="a.htm">
User: <input TYPE="text" id="name"><br>
Password: <input TYPE="password" NAME="" id="pass"><br>
<input TYPE="button" value="Login" onclick="login()">
</form> 

</body>
</html>
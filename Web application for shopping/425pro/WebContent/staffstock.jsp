<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Warehouse List</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/product/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/ie.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="files/product/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
</head>
<body>
<!-- Unnamed (Shape) -->
      <div class="ax_h1" style="position:absolute;
  		left:450px;  top:33px;  width:188px;  height:37px;">
        <!-- Unnamed () -->
        <div style="position:absolute;
          left:0px;  top:0px;  width:188px;  white-space:nowrap;" class="text">
          <p><span>Manage stock</span></p>
        </div>
      </div>
      
      	<%
      	String userName = request.getParameter("user");
      	String message = request.getParameter("message");
      	if(message!= null){
      	
      	%>
      		<div class="ax_h2" style="position:absolute;  left:100px;  top:80px;
  					width:300px;  height:19px;  font-size:25px; color:#FF0000; text-align:center;">
         		<p><span>Error: <%=message %></span></p>
      		</div>
      	
      	<% 
    	}
      	%>
      	 
        <div style="position:absolute;  left:150px;
          top:122px;  width:129px;  height:28px;" class="ax_h2">
          <!-- Unnamed () -->
          <div style="position:absolute;  left:0px;  
          top:0px;  width:129px;  white-space:nowrap;" class="text">
            <p><span>Staff name: <%=userName %></span></p>
          </div>
        </div>
        
        <form action="staffpage.jsp" method="post">
        <input  type="hidden" name="user" value="<%=userName%>"/>
        <!-- Unnamed (HTML Button) -->
        <div style="position:absolute;  left:150px;  top:175px;
    		width:100px;  height:25px;" class="ax_html_button">
    		<input  type="hidden" name="user" value="<%=userName%>"/>
          <input style="position:absolute;  left:0px;  top:0px;  width:100px;
            height:25px;  font-family:'Arial Regular', 'Arial';  font-weight:400;
              font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000; text-align:center;" 
              type="submit" value="back"/>
        </div>
      </form>
      
  	<form action="home.jsp" method="post">    
  	
        <!-- Unnamed (HTML Button) -->
        <div style="position:absolute;  left:300px;  
        top:175px;  width:100px;  height:25px;" class="ax_html_button">
          <input style=" position:absolute;  left:0px;  top:0px;  width:100px;  
          height:25px;  font-family:'Arial Regular', 'Arial';  font-weight:400;
            font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000;  text-align:center;" 
            type="submit" value="Log out"/>
        </div>
        </form>
        <%
      //Connect database.
     	String driverName="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		Statement stmt=conn.createStatement();
        int textx = 120;
		int texty = 280;
		
		%>
		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
					width:500px;  height:19px;  font-size:24px;  text-align:left;">
     		<p><span>Please select one warehouse:</span></p>
  		</div>
		 <%		
		texty += 70;
		String title[] ={"WarehouseID",  "Capacity",  "Name"}; 
		textx = 120;
		for(int i=0; i<title.length; i++){
	  		 %>
	  		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
	  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
	         		<p><span><%=title[i]%></span></p>
	      		</div>
	      		
	      	 <form action="stockmodify.jsp" method="post"> 
 			 <input  type="hidden" name="user" value="<%=userName%>"/>
 			 
	  		 <%		
	  		 		textx +=200;
	  	}
		texty += 50;
		
		String sql="select * from Warehouse";
	    ResultSet rs=stmt.executeQuery(sql);
	    while(rs.next()){
			String para[] = new String[3];
  			para[0] = rs.getString(1);
   			para[1] = rs.getString(2);
   			para[2] = rs.getString(3);
   			
   			
   		%>
 			
 			 <div class="ax_checkbox" style="position:absolute;  
      				left:50px;  top:<%=texty %>px;  width:100px;  height:16px; ">
          	<div class="text" style="position:absolute;  
          			left:16px;  top:0px;  width:82px;  word-wrap:break-word;">
            	<p><span>Select</span></p>
          	</div>
        	<input style=" position:absolute;  left:-3px;  top:-2px;"
        			type="radio" name="select" value="<%=para[0]%>"/>
      		</div>
 			    
 		<%
  			textx = 120;
  			for(int i=0; i<para.length; i++){
  				
 		 %>
 		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
 					width:120px;  height:19px;  font-size:16px;  text-align:center;">
        		<p><span><%=para[i]%></span></p>
     		</div>
 		 
 		 <%
 				textx +=200;
	    	}
	   		texty += 60;
	    }
	    
	    texty += 50;
        %>
        <div style="position:absolute;  left:475px;  top:<%=texty%>px;
     	   width:100px;  height:25px;" class="ax_html_button">
      	  <input style="position:absolute;  left:0px;  top:0px;  width:100px;  height:25px;
     	   font-family:'Arial Regular', 'Arial';  font-weight:400;  font-style:normal;
     	     font-size:13px;  text-decoration:none;  color:#000000; text-align:center;"
     	      type="submit" value="Submit selection" />
     	    </div>
        </form>
        

</body>
</html>
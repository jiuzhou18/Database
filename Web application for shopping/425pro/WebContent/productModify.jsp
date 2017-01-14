<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>product Modify</title>
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
	<div class="ax_h1" style="position:absolute;
  		left:450px;  top:33px;  width:188px;  height:37px;">
        <!-- Unnamed () -->
        <div style="position:absolute;
          left:0px;  top:0px;  width:188px;  white-space:nowrap;" class="text">
          <p><span>Product Modify</span></p>
        </div>
      </div>
      
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
        
        <form action="staffproduct.jsp" method="post">
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
		int index = 0;
		String title[] ={"Product attribute", "Old Information", "New Information"}; 
		for(int i=0; i<title.length; i++){
	  		 %>
	  		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
	  					width:300px;  height:19px;  font-size:16px;  text-align:left;">
	         		<p><span><%=title[i]%></span></p>
	      		</div>
	  		 <%		
	  		 		textx +=300;
	  	}
		texty += 50; 
		String sql="select * from Product where ProductID = '" + selection +"'";
	    ResultSet rs=stmt.executeQuery(sql);
	    rs.next();
	   
		String para[] = new String[5];
  		para[0] = rs.getString("ProductID");
   		para[1] = rs.getString("Category");
   		para[2] = rs.getString("Type");
   		para[3] = rs.getString("ProSize");
   		para[4] = rs.getString("Name");
   		String content[] ={"ProductID", "Category", "Type","ProSize","Name"}; 
  		
  		%>
  			 <form action="productmodifyrun.jsp" method="post"> 
  			 <input  type="hidden" name="oldID" value="<%=selection%>"/>
  			    
  		<%
   			for(int i=0; i<para.length; i++){
   				textx = 120;
   				
  		 %>
  		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=content[i]%></span></p>
      		</div>
  		 
  		 <%
  			textx +=300;
  		 %>
  		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=para[i]%></span></p>
      		</div>
  		 <%		
  		 	textx +=300;
  		 	if(i!=0){
  		 %>
  			<div style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  			  width:200px;  height:25px;" class="ax_text_field">
        	<input style="position:absolute;  left:0px;  top:0px;  width:200px;
        	  height:25px;  font-family:'Arial Regular', 'Arial';  font-weight:400;
        	    font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000;  text-align:left;" 
        	    type="text" name="<%=content[i]%>" value=""/>
      		</div>
  		 <%
  		 		}
   			texty += 50;
   			}
  		 
  		 	String infosql="select * from AdditionInfo where ProductID = '" + para[0] + "'";
			Statement stmt1=conn.createStatement();
			ResultSet infors=stmt1.executeQuery(infosql);
			
			int infoi = 0;
			while(infors.next()){
				textx = 120;
				infoi++;
				String info = infors.getString("Information");
			%>
		
				<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
	  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
	         		<p><span>Addtion info<%=infoi%></span></p>
	      		</div>
	  			 <input  type="hidden" name="oldinfo<%=infoi%>" value="<%=info%>"/>
	  		 <%
	  			textx +=300;
	  		 %>
	  		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
	  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
	         		<p><span><%=info%></span></p>
	      		</div>
	  		 <%		
	  		 	textx +=300;
	  		 %>
	  			<div style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
	  			  width:200px;  height:25px;" class="ax_text_field">
	        	<input style="position:absolute;  left:0px;  top:0px;  width:200px;
	        	  height:25px;  font-family:'Arial Regular', 'Arial';  font-weight:400;
	        	    font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000;  text-align:left;" 
	        	    type="text" name="newinfo<%=infoi%>" value=""/>
	      		</div>
	  		 <%
	   			texty += 50;
	   			}
			infors.close();
	     	stmt1.close();
  		 	
  			%>
		 		<input  type="hidden" name="infonum" value="<%=infoi%>"/>
		 		<input  type="hidden" name="user" value="<%=userName%>"/>
  			<%
  			rs.close();
  			stmt.close();
  			
      		String pricesql="select * from ProductPrice where ProductID = '" + para[0] + "'";
      		Statement stmt2=conn.createStatement();
			ResultSet pricers=stmt2.executeQuery(pricesql);
			while(pricers.next()){
				textx = 120;
				String price = pricers.getString("Price");
				String state = pricers.getString("State");
      	%>
			<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
	  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
	         		<p><span>Price in "<%=state%>"</span></p>
	      		</div>
		<%
	  			textx +=300;
	  		 %>
	  		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
	  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
	         		<p><span><%=price%></span></p>
	      		</div>
	  		 <%		
	  		 	textx +=300;
	  		 %>
	  			<div style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
	  			  width:200px;  height:25px;" class="ax_text_field">
	        	<input style="position:absolute;  left:0px;  top:0px;  width:200px;
	        	  height:25px;  font-family:'Arial Regular', 'Arial';  font-weight:400;
	        	    font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000;  text-align:left;" 
	        	    type="text" name="<%=state%>" value=""/>
	      		</div>
	  		 <%
	   			texty += 50;
			}
  		 	pricers.close();
  		 	stmt2.close();
  		 	
		%>
 
     	 <div style="position:absolute;  left:475px;  top:<%=texty%>px;
     	   width:100px;  height:25px;" class="ax_html_button">
      	  <input style="position:absolute;  left:0px;  top:0px;  width:100px;  height:25px;
     	   font-family:'Arial Regular', 'Arial';  font-weight:400;  font-style:normal;
     	     font-size:13px;  text-decoration:none;  color:#000000; text-align:center;"
     	      type="submit" value="Submit modify" />
      	</div>
      	</form>
       
       

</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Product List</title>
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
          <p><span>Manage Product List</span></p>
        </div>
      </div>
      
      	<%
      	String userName = request.getParameter("user");
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

         
       <!-- Unnamed (Shape) -->
      <div id="u2" class="ax_h2">
          <p><span>Picture</span></p>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u4" class="ax_h2">
          <p><span>Product ID</span></p>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u6" class="ax_h2">
          <p><span>Category</span></p>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u8" class="ax_h2">
          <p><span>Type</span></p>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u10" class="ax_h2">
          <p><span>Size</span></p>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u12" class="ax_h2">
          <p><span>Name</span></p>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u14" class="ax_h2">
          <p><span>Adidition Info</span></p>
      </div>

       <!-- Unnamed (Shape) -->
      <div id="u16" class="ax_h2">
          <p><span>Basic price</span></p>
      </div>
      
      	<%
      	String message = request.getParameter("message");
      	if(message!= null){
      	
      	%>
      		<div class="ax_h2" style="position:absolute;  left:100px;  top:80px;
  					width:300px;  height:19px;  font-size:25px; color:#FF0000; text-align:center;">
         		<p><span>Error: <%=message %></span></p>
      		</div>
      	
      	<%
      	}
    	//Connect database.
  		String driverName="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		String sql="select * from Product order by ProductID";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		int imagex = 150;
		int imagey = 280;
		int textx = 380;
		int texty = 330	;	
  		while(rs.next()){
  			textx = 380;
  			String para[] = new String[5];
  			para[0] = rs.getString("ProductID");
  		 	para[1] = rs.getString("Category");
  		 	para[2] = rs.getString("Type");
  		 	para[3] = rs.getString("ProSize");
  		 	para[4] = rs.getString("Name");
  		%>
      		
  		
  		 	<div style="position:absolute;  left:<%=imagex%>px;  top:<%=imagey%>px;  width:180px; height:120px;">
        	<img class="img" src="images/product/<%=para[0]%>.jpg" style=" position:absolute;
  					left:0px;  top:0px;  width:180px;  height:120px;"/>
      		</div>
      		
  		<%
  			for(int i=0; i<5; i++){
  		 %>
  		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=para[i] %></span></p>
      		</div>
  		 <%		
  		 		textx +=120;
  		 	}
  			String infosql="select * from AdditionInfo where ProductID = '" + para[0] + "'";
  			Statement stmt1=conn.createStatement();
			ResultSet infors=stmt1.executeQuery(infosql);
		%>
			<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span>
		<%
			while(infors.next()){
				String info = infors.getString("Information");
				out.print(info+" ");
			}
			
		%>
				</span></p>
      		</div>
      	<%
      		String pricesql="select * from ProductPrice where ProductID = '" + para[0] + "' and state = '00'";
      		Statement stmt2=conn.createStatement();
			ResultSet pricers=stmt2.executeQuery(pricesql);
			pricers.next();
			String price = pricers.getString("Price");
			textx +=120;
      	%>
			<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=price %></span></p>
      		</div>
			
  		<%
  		 	texty +=150;
  		 	imagey +=150;
  		 	pricers.close();
  		 	stmt2.close();
  		 	infors.close();
  	     	stmt1.close();
  		}
  		
  		rs=stmt.executeQuery(sql);
  		%>
  		
  		 <form name="fm" id="fm" method="post">
      
      		
  		<%
  		texty = 330;
  		while(rs.next()){
  			
  			String para0 = rs.getString("ProductID");
  		%>
  			<div class="ax_checkbox" style="position:absolute;  
      				left:50px;  top:<%=texty %>px;  width:100px;  height:16px; ">
          	<div class="text" style="position:absolute;  
          			left:16px;  top:0px;  width:82px;  word-wrap:break-word;">
            	<p><span>Select</span></p>
          	</div>
        	<input style=" position:absolute;  left:-3px;  top:-2px;"
        			type="radio" name="select" value="<%=para0%>"/>
      		</div>
  		
  		<%
  			texty +=150;
  		}
  		
  		
  		rs.close();
     	stmt.close();
     	
	  	%>
	  	<input  type="hidden" name="user" value="<%=userName %>"/>
 
      <div style="position:absolute;  left:250px;  top:<%=texty%>px;  
      		width:100px;  height:25px;" class="ax_html_button">
        <input style="position:absolute;  left:0px;  top:0px;  width:100px;  height:25px;  font-family:'Arial Regular', 'Arial';
          font-weight:400;  font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000;  text-align:center;" 
          type="button" name="btn1" onclick="document.fm.action='productDelete.jsp';document.fm.submit();" value="Delete product"/>
      </div>
      
       <div style="position:absolute;  left:500px;  top:<%=texty%>px;  
      		width:100px;  height:25px;" class="ax_html_button">
        <input style="position:absolute;  left:0px;  top:0px;  width:100px;  height:25px;  font-family:'Arial Regular', 'Arial';
          font-weight:400;  font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000;  text-align:center;" 
          type="button" name="btn2" onclick="document.fm.action='productModify.jsp';document.fm.submit();" value="Modify product"/>
      </div>
  
      </form>
      
      <form action="productAdd.jsp" method="post">
      <input  type="hidden" name="user" value="<%=userName %>"/>
       <div style="position:absolute;  left:750px;  top:<%=texty%>px;  
      		width:100px;  height:25px;" class="ax_html_button">
        <input style="position:absolute;  left:0px;  top:0px;  width:100px;  height:25px;  font-family:'Arial Regular', 'Arial';
          font-weight:400;  font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000;  text-align:center;" 
          type="submit" value="Add product"/>
      </div>
      </form>


</body>
</html>
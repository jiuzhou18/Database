<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*,java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
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
          <p><span>Cart List</span></p>
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
          <p><span>User name: <%=userName %></span></p>
        </div>
      </div>
      <form action="product.jsp" method="post">
      <!-- Unnamed (HTML Button) -->
      <input  type="hidden" name="user" value="<%=userName%>"/>
      <div style="position:absolute;  left:150px;  top:175px;
  		width:100px;  height:25px;" class="ax_html_button">
        <input style="position:absolute;  left:0px;  top:0px;  width:100px;
          height:25px;  font-family:'Arial Regular', 'Arial';  font-weight:400;
            font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000; text-align:center;" 
            type="submit" value="Back"/>
      </div>
    </form>
    
	<form action="home.jsp" method="post">    
      <!-- Unnamed (HTML Button) -->
      <div style="position:absolute;  left:320px;  
      top:175px;  width:100px;  height:25px;" class="ax_html_button">
        <input style=" position:absolute;  left:0px;  top:0px;  width:100px;  
        height:25px;  font-family:'Arial Regular', 'Arial';  font-weight:400;
          font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000;  text-align:center;" 
          type="submit" value="Log out"/>
      </div>
	</form>
	
	
      <%
      
      String[] selection = null;
      selection = request.getParameterValues("select");
      
      //Connect database.
      	String driverName="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		Statement stmt=conn.createStatement();
		
		if(selection!=null){
			Statement addstmt=conn.createStatement();
			ResultSet addrs = null;
			for(int k =0; k<selection.length;k++){
				String addsql=" select * from Cart where ProductID = '" + selection[k] +"'";

    			addrs = addstmt.executeQuery(addsql);
    			boolean exist = addrs.next();
    			if(exist == false){
    				addsql=" insert into Cart values ('"+ userName +"', '"+ selection[k]+"', '1')";
        			
        			addrs = addstmt.executeQuery(addsql);
    			}
			}
			addrs.close();
			addstmt.close();
		}
		
		
		int textx = 120;
		int texty = 280;
		int index = 0;
		String title[] ={"ProductID","Name","Price", "Input Quantity"}; 
		for(int i=0; i<title.length; i++){
	  		 %>
	  		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
	  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
	         		<p><span><%=title[i]%></span></p>
	      		</div>
	  		 <%		
	  		 		textx +=120;
	  	}
		texty += 100;
		
		Statement cartstmt=conn.createStatement();
		ResultSet cartrs = null;
		String cartsql = "select * from Cart where CustomerID = '" + userName +"'";
		
		cartrs = cartstmt.executeQuery(cartsql);
		
		
		while(cartrs.next()){
			String id = cartrs.getString("ProductID");
	    	String sql="select * from Product where ProductID = '" + id +"'";
	    	ResultSet rs=stmt.executeQuery(sql);
	     	rs.next();
			textx = 120;
			String para[] = new String[2];
  			para[0] = rs.getString("ProductID");
   		 	para[1] = rs.getString("Name");
  		
  			for(int i=0; i<para.length; i++){
  		 %>
  		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=para[i]%></span></p>
      		</div>
  		 <%		
  		 		textx +=120;
		 	}
  			rs.close();
      		String pricesql="select * from ProductPrice where ProductID = '" + para[0] + "' and state = '00'";
      		Statement stmt2=conn.createStatement();
			ResultSet pricers=stmt2.executeQuery(pricesql);
			pricers.next();
			String price = pricers.getString("Price");
			
      	%>
			<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=price %></span></p>
      		</div>
			
  		<%
  		 	
  		 	pricers.close();
  		 	stmt2.close();
  		 	
  		%>
  		<form action="cartdelete.jsp" method="post">
  		<input  type="hidden" name="user" value="<%=userName%>"/>
	  	<input  type="hidden" name="productid" value="<%=para[0]%>"/>
  		 	<div style="position:absolute;  left:700px;  top:<%=texty%>px;
     	   width:100px;  height:25px;" class="ax_html_button">
     	    <input style="position:absolute;  left:0px;  top:0px;  width:100px;  height:25px;
     	   font-family:'Arial Regular', 'Arial';  font-weight:400;  font-style:normal;
     	     font-size:13px;  text-decoration:none;  color:#000000; text-align:center;"
     	      type="submit" value="Delete" />
      		</div>
  		 </form>
  		<% 	
  			texty +=80;
  		}
				
  		%>
  		<form name="fm" id="fm" method="post">
  		
  		<%
  		Statement stmt3=conn.createStatement();
  		String addrsql="select * from Address natural join CustomerAddress where CustomerID = '"+userName+"' and Type = 'delivery'";
		ResultSet addrrs=stmt3.executeQuery(addrsql);
		texty += 50;
		textx = 120;		
		%>
			<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:500px;  height:19px;  font-size:20px;  text-align:left;">
         		<p><span>Delivery Address Select:</span></p>
      		</div>		
		<%
		texty += 80;
		while(addrrs.next()){
			String addrinfo[] = new String[3];
			addrinfo[0] = addrrs.getString("AddressID");
			addrinfo[1] = addrrs.getString("Street");
			addrinfo[2] = addrrs.getString("Zipcode");
			
			
		%>
			<div class="ax_checkbox" style="position:absolute;  
      				left:50px;  top:<%=texty %>px;  width:100px;  height:16px; ">
          	<div class="text" style="position:absolute;  
          			left:16px;  top:0px;  width:82px;  word-wrap:break-word;">
            	<p><span>Select</span></p>
          	</div>
        	<input style=" position:absolute;  left:-3px;  top:-2px;"
        			type="radio" name="addrselect" value="<%=addrinfo[0]%>"/>
      		</div>
      		
      	
      		<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:300px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=addrinfo[1]%></span></p>
      		</div>	
      		<div class="ax_h2" style="position:absolute;  left:<%=textx+300%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=addrinfo[2]%></span></p>
      		</div>	
      	<%	
      		
      		texty +=80;
		}
		
		Statement stmt4=conn.createStatement();
		String cardsql="select * from CreditCard where CustomerID = '" + userName + "'";
		ResultSet cardrs=stmt4.executeQuery(cardsql);
		texty += 50;
		textx = 120;
		%>
			<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:500px;  height:19px;  font-size:20px;  text-align:left;">
         		<p><span>Credit Card Select:</span></p>
      		</div>		
		<%
		texty += 80;
		while(cardrs.next()){
			String cardinfo[] = new String[3];
			cardinfo[0] = cardrs.getString("CardID");
			cardinfo[1] = cardrs.getString("AddressID");

			
		%>
			<div class="ax_checkbox" style="position:absolute;  
      				left:50px;  top:<%=texty %>px;  width:100px;  height:16px; ">
          	<div class="text" style="position:absolute;  
          			left:16px;  top:0px;  width:82px;  word-wrap:break-word;">
            	<p><span>Select</span></p>
          	</div>
        	<input style=" position:absolute;  left:-3px;  top:-2px;"
        			type="radio" name="cardselect" value="<%=cardinfo[0]%>"/>
      		</div>
      		
      	<%
      		
      	%>
      		<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=cardinfo[0]%></span></p>
      		</div>	
      		<div class="ax_h2" style="position:absolute;  left:<%=textx+120%>px;  top:<%=texty%>px;
  					width:300px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=cardinfo[1]%></span></p>
      		</div>	
      	<%	
      		
      		texty +=80;
		}
		cardrs.close();
		stmt4.close();
  		
  		int texty1 = 378;
  		
  		cartstmt=conn.createStatement();
		
		cartsql = "select * from Cart where CustomerID = '" + userName +"'";
		cartrs = cartstmt.executeQuery(cartsql);
		
		int k = 0;
		while(cartrs.next()){
			String id = cartrs.getString("ProductID");
  			String num = cartrs.getString("Quantity");
  		
	    	String sql="select * from Product where ProductID = '" + id +"'";
	    	ResultSet rs=stmt.executeQuery(sql);
	     	rs.next();
			String para[] = new String[2];
  			para[0] = rs.getString("ProductID");
   		 	para[1] = rs.getString("Name");

  			
  		%>
  			<input  type="hidden" name="product<%=k%>" value="<%=para[0]%>"/>
  			<div style="position:absolute;  left:480px;  top:<%=texty1%>px;
  			  width:200px;  height:25px;" class="ax_text_field">
        	<input style="position:absolute;  left:0px;  top:0px;  width:200px;
        	  height:25px;  font-family:'Arial Regular', 'Arial';  font-weight:400;
        	    font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000;  text-align:left;" 
        	    type="text" name="productQ<%=k%>" value="<%=num%>"/>
      		</div>
  		
  		<%
  			texty1 +=80;
  			k++;
  			rs.close();
  		}
  		stmt.close();
     	cartrs.close();
  		cartstmt.close();
  		
     	int productnum = k;
     	
	  	%>
	  	<input  type="hidden" name="user" value="<%=userName%>"/>
	  	<input  type="hidden" name="productnum" value="<%=productnum%>"/>
 
     	 <div style="position:absolute;  left:300px;  top:<%=texty%>px;
     	   width:100px;  height:25px;" class="ax_html_button">
      	  <input style="position:absolute;  left:0px;  top:0px;  width:100px;  height:25px;
     	   font-family:'Arial Regular', 'Arial';  font-weight:400;  font-style:normal;
     	     font-size:13px;  text-decoration:none;  color:#000000; text-align:center;"
     	      type="submit" value="Create Order" onclick="document.fm.action='Orderconfirm.jsp';document.fm.submit();"/>
      	</div>
      	
      	<div style="position:absolute;  left:550px;  top:<%=texty%>px;
     	   width:100px;  height:25px;" class="ax_html_button">
      	  <input style="position:absolute;  left:0px;  top:0px;  width:100px;  height:25px;
     	   font-family:'Arial Regular', 'Arial';  font-weight:400;  font-style:normal;
     	     font-size:13px;  text-decoration:none;  color:#000000; text-align:center;"
     	      type="submit" value="Cart Save" onclick="document.fm.action='cartsave.jsp';document.fm.submit();"/>
      	</div>
      	
      	</form>
  	 <%
      	String balancesql="select * from Customer where CustomerID = '" + userName + "'";
		Statement balancestmt=conn.createStatement();
		ResultSet balancers=balancestmt.executeQuery(balancesql);
		balancers.next();
		double balance = balancers.getDouble("Balance");
		balancers.close();
		balancestmt.close();
		conn.close();
      %>
      
      <div style="position:absolute;  left:500px;
          top:122px;  width:129px;  height:28px;" class="ax_h2">
          <!-- Unnamed () -->
          <div style="position:absolute;  left:0px;  
          top:0px;  width:129px;  white-space:nowrap;" class="text">
            <p><span>balance: <%=balance%></span></p>
          </div>
        </div>
  
  </body>
</html>
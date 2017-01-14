<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*,java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Confirm</title>
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
          <p><span>Order Confirm</span></p>
        </div>
      </div>
      
      	<%
      	String userName = request.getParameter("user");
      	int productnum = Integer.parseInt(request.getParameter("productnum"));
      	String product[] = new String[productnum];
      	int productQ[] = new int [productnum];
      	for(int i=0; i<productnum; i++){
      		product[i] = request.getParameter("product"+i);
      		productQ[i] = Integer.parseInt(request.getParameter("productQ"+i));
      	}
      	String card = request.getParameter("cardselect");
      	String addr = request.getParameter("addrselect");
      	
      	
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
    		<input  type="hidden" name="user" value="<%=userName%>"/>
          <input style="position:absolute;  left:0px;  top:0px;  width:100px;
            height:25px;  font-family:'Arial Regular', 'Arial';  font-weight:400;
              font-style:normal;  font-size:13px;  text-decoration:none;  color:#000000; text-align:center;" 
              type="submit" value="Back Shopping"/>
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
      	
      //Connect database.
    	String driverName="oracle.jdbc.driver.OracleDriver";
 		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
 		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		
		
		String balancesql="select * from Customer where CustomerID = '" + userName + "'";
		Statement balancestmt=conn.createStatement();
		ResultSet balancers=balancestmt.executeQuery(balancesql);
		balancers.next();
		double balance = balancers.getDouble("Balance");
		balancers.close();
		balancestmt.close();
      %>
      <div style="position:absolute;  left:500px;
          top:122px;  width:129px;  height:28px;" class="ax_h2">
          <!-- Unnamed () -->
          <div style="position:absolute;  left:0px;  
          top:0px;  width:129px;  white-space:nowrap;" class="text">
            <p><span>balance: <%=balance%></span></p>
          </div>
        </div>
		
	  <%
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
		int storenum[] = new int[productnum];
		while(warehousers.next()){
			warecode = warehousers.getInt("Zipcode");
			warestate = null;
			if(60001<=warecode && warecode<=62999) warestate="IL";
			else if(90001<=warecode && warecode<=96162) warestate ="CA";
			else if(10001<=warecode && warecode<=14975) warestate ="NY";
			else if(46001<=warecode && warecode<=47997) warestate ="IN";
			if(state.equals(warestate)){
				wareID = warehousers.getString("WarehouseID");
				hasstore = true;
				for(int i=0; i<productnum; i++){
					String storesql="select * from Store where warehouseID = '" +wareID+"' and ProductID ='"+product[i]+"'";
					ResultSet storers=stmtstore.executeQuery(storesql);
					storers.next();
					storenum[i] = storers.getInt("ProductNumber");
					if(storenum[i]< productQ[i]){
						storers.close();
						stmtstore.close();
						stmtware.close();
						warehousers.close();
						enoughstore = false;
						
			%>
					<div class="ax_h2" style="position:absolute;  left:200px;  top:220px;
	  					width:700px;  height:19px;  font-size:16px; color:#FF0000; text-align:center;">
	         		<p><span>Lack of Product: The avaliable number of Product <%=product[i]%> is only <%= storenum[i]%>.</span></p>
	      			</div>	
	      			
	      			
					
			<%			
						break;
					}
					storers.close();
		      	}
			}else continue;
			if(hasstore == true) break;
		}
		
		stmtstore.close();
		stmtware.close();
		warehousers.close();

      	int textx = 120;
		int texty = 280;
		int index = 0;
		String title[] ={"ProductID","Name","Purchase Quantity", "State Price","Store quantitiy"}; 
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
		int pricesum = 0;
		Statement stmt = conn.createStatement();
		Statement stmt2 = conn.createStatement();
		for(int k =0; k<productnum;k++){
	    	
			String sql="select * from Product where ProductID = '" + product[k] +"'";
	    	ResultSet rs=stmt.executeQuery(sql);
	     	rs.next();
			textx = 120;
			String para[] = new String[4];
  			para[0] = rs.getString("ProductID");
   		 	para[1] = rs.getString("Name");
  			para[2] = String.valueOf(productQ[k]);
  			rs.close();
  			
  			
  			String pricesql="select * from ProductPrice where ProductID = '" + product[k] +"' and state = '" +state +"'";
	    	ResultSet pricers=stmt2.executeQuery(pricesql);
	    	pricers.next();
  			int price = pricers.getInt("Price");
  			pricesum += price *  productQ[k];
  			para[3] = String.valueOf(price);
  			pricers.close();
  			
  			for(int i=0; i<para.length; i++){
  		 %>
  		 	<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=para[i]%></span></p>
      		</div>
  		 
  		 <%
  		 	textx += 120;
		 	}
  		%>
  			<div class="ax_h2" style="position:absolute;  left:<%=textx%>px;  top:<%=texty%>px;
  					width:120px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span><%=storenum[k]%></span></p>
      		</div>
  		
  		<%
  			texty += 80;
		 }
			stmt2.close();
			
			stmt.close();
      	 %>  
      	 
      	 <div class="ax_h2" style="position:absolute;  left:200px;  top:<%=texty%>px;
  					width:200px;  height:19px;  font-size:16px;  text-align:center;">
         		<p><span>Total Price: <%=pricesum%></span></p>
      		</div> 
      	<%
      	 if(enoughstore == true){
      	
      	%>
      	<form action = "Ordersave.jsp">
      	
      	<%
      	for(int i=0; i<productnum; i++){
      		
      	%>
      		<input  type="hidden" name="product<%=i%>" value="<%=product[i]%>"/>
      		<input  type="hidden" name="productQ<%=i%>" value="<%=productQ[i]%>"/>
      		<input  type="hidden" name="storeQ<%=i%>" value="<%=storenum[i]%>"/>
      	<%
      		product[i] = request.getParameter("product"+i);
      		productQ[i] = Integer.parseInt(request.getParameter("productQ"+i));
      	}
      	
      	
      	%>
      	<input  type="hidden" name="user" value="<%=userName%>"/>
	  	<input  type="hidden" name="productnum" value="<%=productnum%>"/>
	  	<input  type="hidden" name="balance" value="<%=pricesum%>"/>
	  	<input  type="hidden" name="cardselect" value="<%=card%>"/>
	  	<input  type="hidden" name="addrselect" value="<%=addr%>"/>
	  	<input  type="hidden" name="state" value="<%=state%>"/>
	  	<input  type="hidden" name="wareID" value="<%=wareID%>"/>
	  	
      	<div style="position:absolute;  left:475px;  top:<%=texty%>px;
     	   width:100px;  height:25px;" class="ax_html_button">
      	  <input style="position:absolute;  left:0px;  top:0px;  width:100px;  height:25px;
     	   font-family:'Arial Regular', 'Arial';  font-weight:400;  font-style:normal;
     	     font-size:13px;  text-decoration:none;  color:#000000; text-align:center;"
     	      type="submit" value="Confirm Order"/>
      	</div>
      	
      	</form>
  <%
      	 }
      	conn.close();
  %>
  
  
  
</body>
</html>
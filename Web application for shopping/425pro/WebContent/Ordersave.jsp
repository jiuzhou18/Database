<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*,java.util.*,java.text.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Save</title>
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
      	String state = request.getParameter("state");
      	String wareID = request.getParameter("wareID");
      	double pricenum = Integer.parseInt(request.getParameter("balance"));
      	int productnum = Integer.parseInt(request.getParameter("productnum"));
      	String product[] = new String[productnum];
      	int productQ[] = new int [productnum];
      	int storenum[] = new int [productnum];
      	for(int i=0; i<productnum; i++){
      		product[i] = request.getParameter("product"+i);
      		productQ[i] = Integer.parseInt(request.getParameter("productQ"+i));
      		storenum[i] = Integer.parseInt(request.getParameter("storeQ"+i));
      	}
      	String card = request.getParameter("cardselect");
      	String addr = request.getParameter("addrselect");
      	
      	//Connect。。
      	String driverName="oracle.jdbc.driver.OracleDriver";
 		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
 		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		String tryorder = "select count(*) from Orders";
		Statement stmttry=conn.createStatement();
		ResultSet tryrs=stmttry.executeQuery(tryorder);
		tryrs.next();
		int Ordercount = tryrs.getInt(1);
		
		
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String myDate = df.format(new java.util.Date());
		
		String upsql="Insert into Orders values('"+Ordercount+"','issued',to_timestamp('" + myDate + "','yyyy-mm-dd hh24:mi:ss'),'"+userName+"','"+addr+"','"+card +"')";
		
		Statement upstmt=conn.createStatement();
		ResultSet uprs=stmttry.executeQuery(upsql);
		
		for(int i=0; i<productnum; i++){
			upsql="Insert into OrderProduct values('"+Ordercount+"','"+ product[i] +"','"+state+"','"+productQ[i]+"')";
			uprs=stmttry.executeQuery(upsql);
			upsql="UPDATE Store SET ProductNumber = "+ (storenum[i] - productQ[i]) +" where warehouseID = '" +wareID+"' and ProductID ='"+product[i]+"'";
			uprs=stmttry.executeQuery(upsql);
		}
		
		upsql="UPDATE Customer SET Balance = Balance + "+ pricenum +" where CustomerID = '" + userName + "'";
		uprs=stmttry.executeQuery(upsql);
		
      	%>   
      	<jsp:forward page="product.jsp">
        <jsp:param name="user" value= "<%=userName %>" />
         </jsp:forward>

</body>
</html>
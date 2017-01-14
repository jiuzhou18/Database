<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Setting</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/setting/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/setting/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (Shape) -->
      <div id="u0" class="ax_h1">
        <img id="u0_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span>Customer Setting</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u2" class="ax_h2">
        <img id="u2_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span>Credit Card</span></p>
        </div>
      </div>


      <!-- Unnamed (Shape) -->
      <div id="u7" class="ax_h2">
        <img id="u7_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u8" class="text">
          <p><span></span></p>
        </div>
      </div>

      
      <!-- Unnamed (Shape) -->
      <div id="u11" class="ax_h2">
        <img id="u11_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u12" class="text">
          <p><span></span></p>
        </div>
      </div>

      
    


      <!-- Unnamed (Shape) -->
      <div id="u23" class="ax_h2">
        <img id="u23_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u24" class="text">
          <p><span></span></p>
        </div>
      </div>

      

      <!-- Unnamed (Shape) -->
      <div id="u27" class="ax_h2">
        <img id="u27_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u28" class="text">
          <p><span></span></p>
        </div>
      </div>




      <!-- Unnamed (Shape) -->
      <div id="u34" class="ax_h2">
        <img id="u34_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u35" class="text">
          <p><span>User name:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u36" class="ax_h2">
        <img id="u36_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u37" class="text">
          <p><span></span></p>
        </div>
      </div>
      <%
      String userName = request.getParameter("user");
      
		%>
	<div class = "ax_h2" style = "position:absolute; Left:324px; top:100px; width: 128px; heigh:28px;">
	<p><span><%=userName %><span><p>
	</div>
	
	
		<% 
  	//Connect database.
		String driverName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
		Class.forName(driverName);
		Connection conn = DriverManager.getConnection(url,"cwan4","zhhxxx1");
		
		String sql = "select CardID from CreditCard where CustomerID = '" + userName + "' order by CardID";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		int textLeft = 324;
		int textTop = 233;
		int cardIndex = 1;
		while(rs.next()){
			textLeft = 324;
			String CardID = rs.getString("CardID");
		%>
			<div class = "ax_h2" style = "position:absolute; Left:129px; top:<%= textTop %>px; width:82px;
					height:28px;">
					<p><span>Card<%=cardIndex%><span><p>
			</div>
		
			<div class = "ax_h2" style = "position:absolute; Left: <%=textLeft%>px; top: <%=textTop%>px;
					width: 116px; height: 28px;font-size:16px;  text-align:center;">
					<p><span><%=CardID %><span><p>
			</div>
			
			<%
				
			int buttonLeft = 610;
			%>
			<form name="fm1<%=cardIndex%>" id="fm1<%=cardIndex%>" method="post">
			
			<input type = "hidden" name = "CardID" value = "<%=CardID %>"/>
			<input type="hidden" name="user" value="<%=userName %>"/>
			
			
			<div class = "ax_html_button" style = "position:absolute; Left: <%=buttonLeft%>px; 
					top: <%=textTop %>px; width: 100px; height: 25px;">  					
					<input style = "position:absolute; Left: 0px; 
					top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
  					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
  					text-align:center;"type = "submit" name="CardID"onclick="document.fm1<%=cardIndex%>.action='cardModify.jsp';document.fm1<%=cardIndex%>.submit();"
  					value = "Modify"
  					
  					/>
  					
  			</div>
  			</form>
  			<form name= "fm2<%=cardIndex%>" id = "fm2<%=cardIndex%>" method="post">
  			<input type = "hidden" name = "CardID" value = "<%=CardID %>">
  			<input type = "hidden" name = "user" value = "<%=userName %>">
  			
  			<%
  			buttonLeft = buttonLeft + 150;
  			%>		
			<div class = "ax_html_button" style = "position:absolute; Left: <%=buttonLeft%>px; 
					top: <%=textTop %>px; width: 100px; height: 25px;">  					
					<input style = "position:absolute; Left: 0px; 
					top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
  					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
  					 text-align:center;" type = "submit" name="CardID" onclick="document.fm2<%=cardIndex%>.action='cardDelete.jsp';document.fm2<%=cardIndex%>.submit();"
  					value = "Delete"
  					
  					/>
  			</div>	
			</form>
			
			<% 
			textTop = textTop + 92;
			cardIndex = cardIndex + 1;
			%>
			
			
		<%
		}
		
		
		%>	
		<form name="fm3" id = "fm3" method="post">
		<input type="hidden" name="user" value="<%=userName %>"/>
		<div class = "ax_html_button" Style = "position:absolute; Left: <%=textLeft%>px;top:<%=textTop%>px;
			width: 100px; height:25px;">
			<input style =" position:absolute; Left: 0px; 
					top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
  					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
  					text-align:center;"type = "submit" onclick="document.fm3.action='cardAdd.jsp';document.fm3.submit();"value = "Add"/>
			</div>
		</form>
		
		<%
		textTop = textTop + 80;
		
		%>
		<div class = "ax_h2" style = "position:absolute; Left:80px; top:<%= textTop %>px; width:300px;
					height:28px;font-size:25px">
					<p><span>Delivery Address<span><p>
			</div>
	
			<%
		String sql1 = "Select AddressID from CustomerAddress where CustomerID = '" + userName + "' and Type = 'delivery'";
		
		Statement stmtAddID = conn.createStatement();
		ResultSet rsAddID = stmtAddID.executeQuery(sql1);
		Statement stmtAdd = conn.createStatement();
		int addressLeft = 324;
		int addressTop = textTop + 80;
		int addressIndex = 1;
		while(rsAddID.next()){
		String AddID = rsAddID.getString("AddressID");
		
		String sql2 = "Select Street, Zipcode, Type from Address natural join CustomerAddress where AddressID = '" + AddID + "'";
		
		ResultSet rsinfo = stmtAdd.executeQuery(sql2);
		rsinfo.next();
		String Street = rsinfo.getString("Street");
		String Zipcode = rsinfo.getString("Zipcode");
		String Type = rsinfo.getString("Type");
		//String Type = rsinfo.getString("Type");
		
	%>
	<div class = "ax_h2" style = "position:absolute; Left:129px; top:<%=addressTop %>px;
				width:128px; height:28px;">
				<p><span>Address<%=addressIndex %></span>
				</div>
	<div class = "ax_h2" style = "position:absolute; Left:<%=addressLeft %>px; top:<%=addressTop %>px;
			width:200px; height:28px;">
			<p><span><%=Street + ", " + Zipcode %></span>
			</div>
	<%
	int buttonLeft = 610;
	%>
	<form name="fm4<%=addressIndex%>" id="fm4<%=addressIndex%>" method="post">
		
		<input type = "hidden" name = "AddID" value = "<%=AddID %>"/>
		<input type="hidden" name="user" value="<%=userName %>"/>
		<input type="hidden" name="Street" value="<%=Street %>"/>
		<input type="hidden" name="Zipcode" value="<%=Zipcode %>"/>
		<input type="hidden" name="Type" value="<%=Type %>"/>
		
		
		<div class = "ax_html_button" style = "position:absolute; Left: <%=buttonLeft%>px; 
				top: <%=addressTop %>px; width: 100px; height: 25px;">  					
				<input style = "position:absolute; Left: 0px; 
				top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
					text-align:center;"type = "submit"onclick="document.fm4<%=addressIndex%>.action='addressModify.jsp';document.fm4<%=addressIndex%>.submit();"
					value = "Modify"
					
					/>
					
			</div>
			</form>
			<form name= "fm5<%=addressIndex%>" id = "fm5<%=addressIndex%>" method="post">
			<input type = "hidden" name = "AddID" value = "<%=AddID %>"/>
		<input type="hidden" name="user" value="<%=userName %>"/>
		<input type="hidden" name="Street" value="<%=Street %>"/>
		<input type="hidden" name="Zipcode" value="<%=Zipcode %>"/>
		<input type="hidden" name="Type" value="<%=Type %>"/>
			<%
			buttonLeft = buttonLeft + 150;
			%>		
		<div class = "ax_html_button" style = "position:absolute; Left: <%=buttonLeft%>px; 
				top: <%=addressTop %>px; width: 100px; height: 25px;">  					
				<input style = "position:absolute; Left: 0px; 
				top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
					 text-align:center;" type = "submit" name="CardID" onclick="document.fm5<%=addressIndex%>.action='AddressDelete.jsp';document.fm5<%=addressIndex%>.submit();"
					value = "Delete"
					
					/>
			</div>	
		</form>
		
		
	<%
	addressTop = addressTop + 92;
	addressIndex = addressIndex + 1;
	
	}
	%>	
	<form name="fm6" id = "fm6" method="post">
	<input type="hidden" name="user" value="<%=userName %>"/>
	<div class = "ax_html_button" Style = "position:absolute; Left: <%=addressLeft%>px;top:<%=addressTop%>px;
		width: 100px; height:25px;">
		<input style =" position:absolute; Left: 0px; 
				top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
					text-align:center;"type = "submit" onclick="document.fm6.action='addressAdd.jsp';document.fm6.submit();"value = "Add"/>
		</div>
	</form>
	<form name="fm7" id = "fm7" method="post">
	<input type="hidden" name="user" value="<%=userName %>"/>
	<div class = "ax_html_button" Style = "position:absolute; Left: 450px;top:100px;
		width: 100px; height:25px;">
		<input style =" position:absolute; Left: 0px; 
				top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
					text-align:center;"type = "submit" onclick="document.fm7.action='product.jsp';document.fm7.submit();"value = "Back"/>
		</div>
	</form>
	
  
  <%
      rs.close();
      stmt.close();
      stmtAddID.close();
      stmtAdd.close();
      conn.close();
      %>
    </div>
    
  </body>
</html>

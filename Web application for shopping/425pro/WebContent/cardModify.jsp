<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Credit Card Information</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/credit_card_information/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/credit_card_information/data.js"></script>
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
          <p><span>Credit Card Information </span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u2" class="ax_h2">
        <img id="u2_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span>Card number:</span></p>
        </div>
      </div>
	
      
      <!-- Unnamed (Shape) -->
      <div id="u7" class="ax_h2">
        <img id="u7_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u8" class="text">
          <p><span>Payment Address:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u9" class="ax_h2">
        <img id="u9_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u10" class="text">
          <p><span>Address Line:</span></p>
        </div>
      </div>
		
      
 		 <!-- Unnamed (Shape) -->
      <div id="u14" class="ax_h2">
        <img id="u14_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u15" class="text">
          <p><span>Zipcode:</span></p>
        </div>
      </div>

		

	<%
		String userName = request.getParameter("user");
		String CardID = request.getParameter("CardID");
		//System.out.println(userName);
	%>
		<div class = "ax_h2" style = "position:absolute; Left:374px; top:105px; width: 116px; heigh:28px;">
		<p><span><%=CardID %><span><p>
		</div>
	<%
		String driverName="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
		Class.forName(driverName);
		Connection conn=DriverManager.getConnection(url,"cwan4","zhhxxx1");
		
		String sql = 
				"Select Address.Street, Address.zipcode,Address.AddressID From CreditCard inner join Address on (CreditCard.AddressID = Address.AddressID) Where CardID = '"+ CardID +"'";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		
		String Street = rs.getString("Street");
		String Zipcode = rs.getString("Zipcode");
		String AddressID = rs.getString("AddressID");
	%>
		<div class = "ax_h2" style = "position:absolute; Left:374px; top:252px; width: 116px; heigh:28px;">
		<p><span><%=Street %><span><p>
		</div>
		
		<div class = "ax_h2" style = "position:absolute; Left:374px; top:392px; width: 116px; heigh:28px;">
		<p><span><%=Zipcode %><span><p>
		</div>
		<form name="fm", id="fm", method="post">
		<input  type="hidden" name="user" value="<%=userName %>"/>
		<input  type="hidden" name="CardID" value="<%=CardID %>"/>
		<input  type="hidden" name="AddressID"value="<%=AddressID %>"/>
		<!-- Unnamed (Text Field) -->
      	<div id="u6" class="ax_text_field">
        <input id="u6_input" type="text" name= "newCard" value=""/>
     	</div>
      	<!-- Unnamed (Text Field) -->
      	<div id="u13" class="ax_text_field">
        <input id="u13_input" type="text" name="newStreet" value=""/>
      	</div>
      	<!-- Unnamed (Text Field) -->
      	<div id="u18" class="ax_text_field">
        <input id="u18_input" type="text" name="newZip"value=""/>
      	</div>
      	
      	<!-- Unnamed (HTML Button) -->
      	<div id="u21" class="ax_html_button">
        <input id="u21_input" type="submit" value="Save" onclick="document.fm.action= 'CardSave.jsp';document.fm.submit();"/>
     	</div>
     	
     	<!-- Unnamed (HTML Button) -->
     	<div id="u22" class="ax_html_button">
        <input id="u22_input" type="submit" value="Back" onclick="document.fm.action= 'setting.jsp';document.fm.submit();"/>
      	</div>
      	
      	
      
		</form>
		
    </div>
  </body>
</html>

<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Address Information</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/address_information/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/address_information/data.js"></script>
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
          <p><span>Delivery Address Information </span></p>
        </div>
      </div>


      <!-- Unnamed (Shape) -->
      <div id="u7" class="ax_h2">
        <img id="u7_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u8" class="text">
          <p><span>Zipcode:</span></p>
        </div>
      </div>



    
      <%
      String userName = request.getParameter("user");
      String Street = request.getParameter("Street");
      String Zipcode = request.getParameter("Zipcode");
      String AddID = request.getParameter("AddID");
      String Type = request.getParameter("Type");
		%>	
	<div class = "ax_h2" style = "position:absolute; Left:202px; top:422px; width: 100px; heigh:28px;">
		<p><span>Type:<span><p>
		</div>
		
	<div class = "ax_h2" style = "position:absolute; Left:202px; top:142px; width: 100px; heigh:28px;">
		<p><span>Street:<span><p>
		</div>
	
	<div class = "ax_h2" style = "position:absolute; Left:402px; top:142px; width: 100px; heigh:28px;">
		<p><span><%=Street %><span><p>
		</div>	
	<div class = "ax_h2" style = "position:absolute; Left:402px; top:422px; width: 100px; heigh:28px;">
		<p><span><%=Type %><span><p>
		</div>
		<div class = "ax_h2" style = "position:absolute; Left:402px; top:282px; width: 100px; heigh:28px;">
		<p><span><%=Zipcode %><span><p>
		</div>	
		<form name="fm", id="fm", method="post">
		<input type="hidden" name="user" value="<%=userName %>"/>
		<input type="hidden" name="AddID" value="<%=AddID %>"/>
	<div id="u6" class="ax_text_field">
        <input id="u6_input" type="text" name="newStreet" value=""/>
      </div>
      <div id="u11" class="ax_text_field">
        <input id="u11_input" type="text" name="newZip" value=""/>
      </div>
      <div class="ax_droplist" style ="position:absolute;left:610px;top:408px;width:400px;height:40px;">
        <select id="Tyte" name="Type">
        <option value = "Type" selected="selected">Type</option>
        <option value = "delivery">delivery</option>
        <option value = "payment">payment</option>
        </select>
      </div>
      
      <div class = "ax_html_button" Style = "position:absolute; Left: 280px;top:515px;
			width: 100px; height:25px;">
			<input style =" position:absolute; Left: 0px; 
					top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
  					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
  					text-align:center;"type = "submit" onclick="document.fm.action='Modifysave.jsp';document.fm.submit();"value = "Save"/>
			</div>
			
		  <div class = "ax_html_button" Style = "position:absolute; Left: 460px;top:515px;
			width: 100px; height:25px;">
			<input style =" position:absolute; Left: 0px; 
					top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
  					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
  					text-align:center;"type = "submit" onclick="document.fm.action='setting.jsp';document.fm.submit();"value = "Back"/>
			</div>
		</form>
		    

 
  </body>
</html>
<%@ page contentType="text/html; charset=UTF-8" language="Java" 
		 import="java.sql.*,java.io.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"<html>
  <head>
    <title>Add new card</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/add_new_card/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/add_new_card/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
  <%
  		String userName = request.getParameter("user");
  %>
    <div id="base" class="">

      <!-- Unnamed (Shape) -->
      <div id="u0" class="ax_h1">
        <img id="u0_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span>Add a New Card</span></p>
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
      <div id="u5" class="ax_h2">
        <img id="u5_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u6" class="text">
          <p><span>Payment Address:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u7" class="ax_h2">
        <img id="u7_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u8" class="text">
          <p><span>Address Line:</span></p>
        </div>
      </div>

    

      <!-- Unnamed (Shape) -->
      <div id="u10" class="ax_paragraph">
        <img id="u10_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u11" class="text">
          <p><span>(Street number, Apartment number)</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u12" class="ax_h2">
        <img id="u12_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u13" class="text">
          <p><span>Zipcode:</span></p>
        </div>
      </div>

      

      
      <form name="fm", id="fm", method="post">
      <input type="hidden" name ="user" value="<%=userName %>"/>
      
      <!-- Unnamed (Text Field) -->
      <div id="u4" class="ax_text_field">
        <input id="u4_input" type="text" name="newCard" value=""/>
      </div>
      
        <!-- Unnamed (Text Field) -->
      <div id="u9" class="ax_text_field">
        <input id="u9_input" type="text" name="newStreet"value=""/>
      </div>
      
      <!-- Unnamed (Text Field) -->
      <div id="u14" class="ax_text_field">
        <input id="u14_input" type="text" name="newZip" value=""/>
        
      <!-- Unnamed (HTML Button) -->
      <!--  <div id="u15" class="ax_html_button">
        <input id="u15_input" type="submit" value="Save" onclick="document.fm.action= 'AddSave.jsp';document.fm.submit();"/>
      </div>  -->
      
      <div class = "ax_html_button" style = "position:absolute; Left: <%=1%>px; 
					top: <%=200%>px; width: 100px; height: 25px;">  					
					<input style = "position:absolute; Left: 0px; 
					top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
  					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
  					text-align:center;"type = "submit" value="Save"onclick="document.fm.action= 'AddSave.jsp';document.fm.submit();"/>
  					
  					/>
  					
  			</div>
  			
  		<div class = "ax_html_button" style = "position:absolute; Left: <%=150%>px; 
					top: <%=200%>px; width: 100px; height: 25px;">  					
					<input style = "position:absolute; Left: 0px; 
					top: 0px; width: 100px; height: 25px; font-family:'Arial Regular', 'Arial';
  					font-weight:400; font-style:normal; font-size:13px; text-decoration:none; color:#000000;
  					text-align:center;"type = "submit" value="Back"onclick="document.fm.action= 'setting.jsp';document.fm.submit();"/>
  					
  			</div>

      <!-- Unnamed (HTML Button) -->
      <!-- <div id="u16" class="ax_html_button">
        <input id="u16_input" type="submit" value="Back" onclick="document.fm.action= 'setting.jsp';document.fm.submit();"/>
     -->
      </form>
    </div>
  </body>
</html>
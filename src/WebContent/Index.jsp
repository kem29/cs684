<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ page import="java.util.Date" %> 
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>CS684 Group Project</title>
		
		<meta name="robots" content="index,follow" />
		<meta name="author" content="">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		
		<link href="./js/jquery/plugins/superfish/superfish.css" rel="Stylesheet" type="text/css" />
		
		<link href="./css/master.css" rel="Stylesheet" type="text/css" />
		
		<link rel='stylesheet' media='screen and (min-width: 575px) and (max-width: 990px)' href='./css/layout-medium.css' />
		<link rel='stylesheet' media='screen and (max-width: 575px)' href='./css/layout-small.css' />
	</head>

	<body>
		<div id="page_wrapper">
			<div id="header">
				<div class="title_container">
					<a href="test.com" class="title">Library Management System</a>
					<div class="title_sub">CS684 Group Project</div>
				</div>

				<div id="nav_container">
					<span style="color:white;float:left;margin-bottom:5px;font-weight:bold;">&nbsp;</span>
					<div class="clear_both"></div>
					<ul class="sf-menu">
						<li class="current">
							<a href="#">Home</a>
						</li>
						<li>
							<a href="#" class="loginLink">Login</a>
							<ul>
								<li><a href="#">Link1</a></li>
								<li><a href="#" class="loginLink">Login link...</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clear_both"></div>
			</div>

			<div id="content_wrapper">
				<div id="content" class="center">
					<h2>Library Management System - Welcome</h2>

					<% 
					if(request.getParameter("status")!= null) {
					if(request.getParameter("status").equals("loginfailure")) {
						out.println("<p style='color:red'>Login Failed!  Invalid user name or password</p>");
					}}%>
					
					<p>This is the class semester project for CS 684.  </p>
					<p>To access the library catalogue please <a href="#" class="loginLink">Login.</a>
					<div class="clear_both"></div>
				</div>
			</div>

			<div id="footer">
				<span class="copy" style="color:white;">&copy; <%= new Date().toString() %></span>
				<div class="clear_both"></div>
			</div>
		</div>
	</body>
	
	<div id="modalLogin" class="modal medModal hidden" style="padding:15px;width:350px;">
		<form action="Login">  
		<img class="modal_close simplemodal-close" src="./img/close.gif" alt="Close" style="float:right;"/>
		<div class="header" style="font-size:25px;">
			Login
		</div>
		<div class="content" style="padding: 15px;">
		
			<div class="center_content">
				<label class="formLabel largeLabel">User Name:</label>
				<input class="formInput largeInput" type="text" name="username" />
				<div class="clear_both"></div>
				<label class="formLabel largeLabel">Password:</label>
				<input class="formInput largeInput" type="password" name="userpass"/>
				<div class="clear_both"></div>
			</div>
			
			<ul id="errorList" class="indentedList error">
			</ul>
			
		</div>
		<input type="submit" value="Login"/>  
		<!-- <a href="#" class="modalSubmit largeLinkButton" style="padding:5px;">Login</a> -->
		</form>
	</div>

	
	<script type="text/javascript" src="./js/jquery/jquery-1-7-2.min.js"></script>
	
	<script type="text/javascript" src="./js/cs684.js"></script>
	<script type="text/javascript" src="./js/cs684.modal.js"></script>

	<script type="text/javascript" src="./js/jquery/plugins/simple-modal/jquery.simplemodal.1.4.1.min.js"></script>
	<script type="text/javascript" src="./js/jquery/plugins/blockui/blockui-2.43.js"></script>
	<script type="text/javascript" src="./js/jquery/plugins/superfish/superfish.min.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$("ul.sf-menu").superfish();
			
			$(".loginLink").click(function(e){
				$.cs684.modal.show("#modalLogin");
			});
		});
	</script>
	
</html>

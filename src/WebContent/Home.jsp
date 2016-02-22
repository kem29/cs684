
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ page import="java.util.Date" %> 
<%@ page import="java.util.*" %> 

<%
if(session.getAttribute("userid") == null) {
	response.sendRedirect("Index.jsp");
	return;
}

%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>CS684 Semester Project</title>
		
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
					<span style="color:white;float:left;margin-bottom:5px;">Welcome, <%= session.getAttribute("username") %></span>
					<div class="clear_both"></div>
					<ul class="sf-menu">
						<li class="current">
							<a href="Index.jsp">Home</a>
						</li>
						<li>
							<a href="Home.jsp">Menu Item</a>
							<ul>
								<a href="Index.jsp">Item1</a>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clear_both"></div>
			</div>

			<div id="content_wrapper">
				<div id="content" class="center">
					<h2>Content</h2>

					
					<p>You are logged in!</p>
					
					
					<div class="clear_both"></div>
				</div>
			</div>

			<div id="footer">
				<span class="copy" style="color:white;">&copy; <%= new Date().toString() %></span>
				<div class="clear_both"></div>
			</div>
		</div>
	</body>
	
	<script type="text/javascript" src="./js/jquery/jquery-1-7-2.min.js"></script>
	<script type="text/javascript" src="./js/cs684.js"></script>
	<script type="text/javascript" src="./js/cs684.modal.js"></script>

	<script type="text/javascript" src="./js/jquery/plugins/simple-modal/jquery.simplemodal.1.4.1.min.js"></script>
	<script type="text/javascript" src="./js/jquery/plugins/blockui/blockui-2.43.js"></script>
	<script type="text/javascript" src="./js/jquery/plugins/superfish/superfish.min.js"></script>
	
</html>

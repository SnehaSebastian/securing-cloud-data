<%-- 
    Document   : signin
    Created on : Feb 18, 2018, 10:12:58 PM
    Author     : sneha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>KeYExposureInCloud :: SignIn</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="css/jquery-ui.css"> 
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->

        <script type="text/javascript">
            function alertName()
            {
            alert("Invalid UserName Or Password");
            } 
        </script>   
        
</head> 
<body>
    <script type="text/javascript"> window.onload = alertName; </script>
	<div class="main-wthree">
	<div class="container">
	<div class="sin-w3-agile">
		<h2>Sign In</h2>
		<form action="login_check.jsp" method="post">
			<div class="username">
				<span class="username">Username:</span>
				<input type="text" name="email" class="name" placeholder="" required="">
				<div class="clearfix"></div>
			</div>
			<div class="password-agileits">
				<span class="username">Password:</span>
				<input type="password" name="password" class="password" placeholder="" required="">
				<div class="clearfix"></div>
			</div>
                    <h4 style="color: red;">Invalid UserName Or Password</h4>
			<div class="rem-for-agile">
				<input type="checkbox" name="remember" class="remember">Remember me
				<a href="signup.jsp">Register Now</a><br>
			</div>
			<div class="login-w3">
					<input type="submit" class="login" value="Sign In">
			</div>
                    
			<div class="clearfix"></div>
		</form>
				<div class="back">
					<a href="../index.jsp">Back to Home ::</a>
				</div>
				<div class="footer">
					<p>© 2018 All Rights Reserved </p>
				</div>
	</div>
	</div>
	</div>
</body>
</html>

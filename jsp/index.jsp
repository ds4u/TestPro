<%@page import="com.dreamsoft4u.queehr.constant.ApplicationVariables"%>
<%@page import="com.dreamsoft4u.queehr.database.entities.User" %>
<%@page import="com.sun.research.ws.wadl.Application"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=9;IE=10;IE=Edge,chrome=1" />
<meta name="description" content="#">
<meta name="author" content="#">

<!-- App Favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- App title -->
<title>Home</title>

<!-- App CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="assets/css/core.css" rel="stylesheet" type="text/css" />
<link href="assets/css/components.css" rel="stylesheet" type="text/css" />
<link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
<link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
<link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />

<!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<script src="assets/js/html5shiv.js"></script>
<script src="assets/js/respond.min.js"></script>

<script src="assets/js/modernizr.min.js"></script>


</head>
<body class="home-page">
	<header class="header">
		<div class="container">

			<h1 class="margin0">
				<a class="logo margin0" href="index.do"><span
					class="white font36">Que-</span><span class="gcolor">ehr</span></a>
			</h1>
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="header-right">
				<div class="main-menu">
					<div id="navbar" class="collapse navbar-collapse">
						<ul class="nav navbar-nav">

							 <li><a href="contactusget.do">Contact us</a></li>
                            <li><a href="help.do?pagging=0">Help</a></li>
							<%
								String link = "";
							
								if (session.getAttribute("token")!=null) {
									if(session.getAttribute("user")!=null){
										User user = (User)session.getAttribute("user");
										if(user.getIsAdmin()==1){
											link = "<a href='admindashboard.do' class='btn btn-primary account-link'>Dashboard</a>";
										}else{
										switch(user.getDepartment().getId()){
										case 1:
											System.out.println("inside receptionist dashboard");
											link = "<a href='recdashboard.do' class='btn btn-primary account-link'>Dashboard</a>";
											break;
										case 3:
											System.out.println("inside physician dashboard");
											link = "<a href='phydashboard.do' class='btn btn-primary account-link'>Dashboard</a>";
											break;
										}
									}
									}

								} else {
									link = "<a href='login.do' class='btn btn-primary account-link'>Sign in</a>";
								}
							%>
							<li><%=link %></li>

						</ul>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>

	</header>

	<!-- Container -->




	<section class="slider">
		<div class="overlay"></div>
		<div class="main-banner text-center">
			<div class="banner-stuff">
				<h1 class="uprCase">EHR System for All</h1>
				<h3>Track your health records from anywhere and anytime</h3>

			</div>
			<img src="assets/images/bgg1.png" />
		</div>
	</section>




	<!-- Footer -->

	<div class="copy-foot font14">
		<div class="container">
			<div class="row">
				<div class="pull-left">&copy; Copyright 2016 Que-Ehr inc. All
					rights are reserved</div>
				<div class="pull-right">
					Designed by <a href="">DreamSoft4u</a>
				</div>
			</div>
		</div>
	</div>
	<!-- end wrapper page -->



	<script>
		var resizefunc = [];
	</script>


	<!-- jQuery  -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/detect.js"></script>
	<script src="assets/js/fastclick.js"></script>
	<script src="assets/js/jquery.slimscroll.js"></script>
	<script src="assets/js/jquery.blockUI.js"></script>
	<script src="assets/js/waves.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/jquery.nicescroll.js"></script>
	<script src="assets/js/jquery.scrollTo.min.js"></script>

	<!-- App js -->
	<script src="assets/js/jquery.core.js"></script>
	<script src="assets/js/jquery.app.js"></script>

	<!--<script>
        $(window).scroll(function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $(".header").addClass("darkHeader");
            } else {
                $(".header").removeClass("darkHeader");
            }
        });

    </script>-->

</body>

</html>
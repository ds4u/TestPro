<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Login</title>

<!-- App CSS -->
 <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
    <!--Custom css by Developer side  -->
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
 
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>

    <script src="assets/js/modernizr.min.js"></script>


</head>
<body>

	<div class="account-pages"></div>
	<div class="clearfix"></div>
	<div class="wrapper-page">
		<div class="text-center">
			<a href="index.do" class="logo"><span>Que-<span>ehr</span></span></a>
			<h5 class="text-muted m-t-0 font-600">EHR System</h5>
			<!--   <h5 class="text-muted m-t-0 font-600" style="color:red !important;">${message}</h5> -->
			<c:if test="${not empty message}">
			<div class="alert alert-danger">
				<strong></strong> ${message}
			</div>
			</c:if>
			<%-- <c:if test="${not empty check}">
			<div class="alert alert-danger">
				<strong></strong> ${check}
			</div>
			</c:if> --%>
			<c:if test="${not empty forgotmessage}">
			<div class="alert alert-success">
  				<strong></strong>New password sent to your registered email address.
			</div>
			</c:if>
		</div>
		<div class="m-t-20 card-box2">
			<div class="text-center">
				<h4 class="text-uppercase font-bold m-b-0">Sign In</h4>
			</div>
			<div class="panel-body">
				<form:form data-parsley-trigger="input" data-parsley-focus="first" id="loginform" class="form-horizontal m-t-20"
					action="login.do" method="post" commandName="user" >

					<div class="form-group ">
						<div class="col-xs-12">
							<form:input parsley-trigger="change" data-parsley-error-message="Enter User Name" class="form-control" path="userName"
								placeholder="Username" id="userName" required="required"/>
								  
							

						</div>
					</div>

					<div class="form-group">
						<div class="col-xs-12">
							<form:password class="form-control" parsley-trigger="change" data-parsley-error-message="Enter Password" id="password" path="password"
								placeholder="Password" required="required" />
								
							

						</div>
					</div>

					<div class="form-group ">
						<div class="col-xs-12">
							<div class="checkbox checkbox-custom">
								<input id="checkbox-signup" type="checkbox"> <label
									for="checkbox-signup"> Remember me </label>
							</div>

						</div>
					</div>

					<div class="form-group text-center m-t-30">
						<div class="col-xs-12">
							<button
								class="btn btn-custom btn-bordred btn-block waves-effect waves-light"
								type="submit">Log In</button>
						</div>
					</div>

					<div class="form-group m-t-30 m-b-0">
						<div class="col-sm-12">
							<a href="change-pw.do" class="text-muted"><i
								class="fa fa-lock m-r-5"></i> Forgot your password?</a>
						</div>
					</div>
				</form:form>

			</div>
		</div>
		<!-- end card-box-->



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
    <script src="assets/js/jquery.blockUI.js"></script>
    <script src="assets/js/waves.js"></script>
    <script src="assets/js/jquery.nicescroll.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    
    <!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
	
    
    <script src="assets/plugins/parsleyjs/dist/parsley.min.js"></script>
	<script type="text/javascript">
            $(document).ready(function () {
            	$.cookie("userid", null);
                $("#loginform").parsley();
                
            });
        </script>

	<!-- App js -->
	<script src="assets/js/jquery.core.js"></script>
	<script src="assets/js/jquery.app.js"></script>
	
	<script src="assets/js/jquery.cookie.js"></script>
	<script src="assets/js/cookieHandler.js"></script>
	

</body>

</html>
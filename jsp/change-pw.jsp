<%@page import="com.dreamsoft4u.queehr.shared.dto.GenderType"%>
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
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- App Favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App title -->
        <title>Forget Password</title>

        <!-- App CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
    <body>

        <div class="account-pages"></div>
        <div class="clearfix"></div>
        <div class="wrapper-page">
            <div class="text-center">
                <a href="index.do" class="logo"><span>Que-<span>ehr</span></span></a>
                <h5 class="text-muted m-t-0 font-600">EHR System</h5>
                <!--  <h5 class="text-muted m-t-0 font-600" style="color:red !important;">${message}</h5>-->
                <c:if test="${not empty message}">
				<div class="alert alert-danger">
					<strong>Error!</strong> ${message}
				</div>
				</c:if>
            </div>
            
        	<div class="m-t-20 card-box2">
                <div class="text-center">
                    <h4 class="text-uppercase font-bold m-b-0">Forget Password</h4>

					<p class="text-muted m-b-0 font-13 m-t-20">Enter your Mail Id to reset your password. </p>
                </div>
                <div class="panel-body">
                    <form:form id="changepw" data-parsley-trigger="input" data-parsley-focus="first" class="form-horizontal m-t-20" method="post" commandName="forgotpassword" action="change-pw.do">

                        <div class="form-group">
                            <div class="col-xs-12">
                                <form:input data-parsley-pattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$" class="form-control" data-parsley-length="[2, 45]" parsley-trigger="change" data-parsley-error-message="Enter Email Address" path="emailAddress" required="required" placeholder="Enter Your Email Id"/>                               
                            </div>
                        </div>                      
                        <div class="form-group text-center m-t-20 m-b-0">
                            <div class="col-xs-12">
                                <button class="btn btn-custom btn-bordred btn-block waves-effect waves-light" type="submit">Send Email</button>
                            </div>
                        </div>

                    </form:form>

                </div>
            </div>
            <!-- end card-box -->

			<div class="row">
				<div class="col-sm-12 text-center">
                    <p class="text-inverse">Already have account?<a href=login.do class="text-primary m-l-5"><b>Sign In</b></a></p>
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
         <script src="assets/pages/jquery.dashboard.js"></script>
         <script src="assets/plugins/parsleyjs/dist/parsley.min.js"></script>
      <!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
        <script src="assets/js/main.js"></script>  
        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
            	
                $("#changepw").parsley();
               
            });
        </script>

	</body>
</html>
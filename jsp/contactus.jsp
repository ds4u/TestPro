<%@page import="com.dreamsoft4u.queehr.constant.Constant"%>
<%@page import="com.dreamsoft4u.queehr.shared.utils.RolesEnum"%>
<%@page import="com.dreamsoft4u.queehr.constant.ApplicationVariables"%>
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
    <title>Contact Us</title>

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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCg0yTXjCwP3sRvuoYa3jKStBEzrNL0dDg">
    </script>
    
<script type='text/javascript'>
     var map;
    var latitude='${latitude}';
    var longitude='${longitude}';
    var message='${address.addressLineOne}'+"<br>"+'${address.addressLineTwo}'+"<br>"+'${city.name}';
    var isMap = '${isMap}';

    function initialize() {
      var mapOptions = {
        zoom: 8,
        center: new google.maps.LatLng(latitude, longitude)
      };
      map = new google.maps.Map(document.getElementById('map'),
          mapOptions);
      marker = new google.maps.Marker({
          position: new google.maps.LatLng(latitude, longitude),
          map: map
      });
      var infowindow = new google.maps.InfoWindow({
    	  content:message
    	  });

    	infowindow.open(map,marker);
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>
<body class="inner-page">
    <header class="header">
        <div class="container">

            <h1 class="margin0"><a class="logo margin0" href="index.do"><span class="white font36">Que-</span><span class="gcolor">ehr</span></a></h1>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="header-right">
                <div class="main-menu">
                    <div id="navbar" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">

                            <li><a href="contactusget.do" class='btn btn-primary account-link'>Contact us</a></li>
                            <li><a href="help.do?pagging=0">Help</a></li>
                            <%
								String link = "";
								if (session.getAttribute("token")!=null) {
									RolesEnum rolesEnum = (RolesEnum)session.getAttribute(Constant.role);
									if(rolesEnum == RolesEnum.ADMIN){
									link = "<a href='admindashboard.do' >Dashboard</a>";
									}else if(rolesEnum == RolesEnum.PHYSICIAN){
										link = "<a href='phydashboard.do' >Dashboard</a>";
									}else if(rolesEnum == RolesEnum.RECEPTIONIST){
										link = "<a href='recdashboard.do' >Dashboard</a>";
									}else if(rolesEnum == RolesEnum.NURSE){
										
									}else if(rolesEnum == RolesEnum.RADIOLOGIST){
										
									}

								} else {
									link = "<a href='login.do' >Sign in</a>";
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
                <h1 class="uprCase">Contact Us</h1>
                <p>Feel Free to contact us, We look forward to hearing from you!  </p>                
            </div>
        </div>
    </section>

    <section class="contact-details">
        <div class="container">
            <div class="row service-list noborder">
                <div class="col-md-4 col-sm-6">
                    <div class="serviceBox">
                        <div class="service-icon withborder color1 hovicon effect-1 sub-a">
                            <i class="fa fa-envelope-o"></i>
                        </div>
                        <div class="service-content">
                            <h3>Have Questions?</h3>
                            <div class="line"><hr></div>
                            <p>
                                 ${contact.emailAddress} 
                            </p>

                        </div>
                    </div>
                </div><!-- end col -->

                <div class="col-md-4 col-sm-6">
                    <div class="serviceBox">
                        <div class="service-icon withborder color2 hovicon effect-1 sub-a">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="service-content">
                            <h3>Call us today</h3>
                           <div class="line"><hr></div>
                            <p>
                                 ${contact.mobileNumber}
                            </p>
                            <p>
                                 ${contact.homeNumber}
                            </p>
                        </div>
                    </div>
                </div><!-- end col -->

                <div class="col-md-4 col-sm-6">
                    <div class="serviceBox">
                        <div class="service-icon withborder color3 hovicon effect-1 sub-a">
                            <i class="fa fa-map-marker"></i>
                        </div>
                        <div class="service-content">
                            <h3>Our Office's</h3>
                            <div class="line"><hr></div>
                            <h4> ${contact.firstName} ${contact.lastName}</h4>
                            <p>
                                ${address.addressLineOne}, ${address.addressLineTwo}, ${address.zipcode}
                            </p>
                            <p>
                                ${city.name}, ${state}
                            </p>
                        </div>
                    </div>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section>

    

    <!-- Footer -->
    <c:choose>
    <c:when test="${isMap==true }">
   <section class="map" id="map" style="width:100%; height:350px">
    </section>
    </c:when><c:otherwise>
    <section ><h6>Sorry! Currently google map is not working</h6></section>
    </c:otherwise>
    </c:choose>

    <div class="copy-foot font14">
        <div class="container">
                <div class="pull-left">&copy; Copyright 2016 Que-Ehr inc. All rights are reserved</div>
                <div class="pull-right">Designed by <a href="">DreamSoft4u</a></div>         
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

    <script>
        $(window).scroll(function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $(".header").addClass("darkHeader");
            } else {
                $(".header").removeClass("darkHeader");
            }
        });

    </script>

</body>

</html>
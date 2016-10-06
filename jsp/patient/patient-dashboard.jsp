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
    <meta name="description" content="#">
    <meta name="author" content="#">

        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <title>Dashboard</title>
    
        <!-- App css -->
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


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <a href="index.html" class="logo"><span>Que-<span>ehr</span></span><i class="zmdi zmdi-layers"></i></a>
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">

                        <!-- Page title -->
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <button class="button-menu-mobile open-left">
                                    <i class="zmdi zmdi-menu"></i>
                                </button>
                            </li>                           
                        </ul>

                        <!-- Right(Notification and Searchbox -->
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <!-- Notification -->
                                <div class="notification-box">
                                    <ul class="list-inline m-b-0">
                                        <li>
                                            <a href="javascript:void(0);" class="right-bar-toggle">
                                                <i class="zmdi zmdi-notifications-none"></i>
                                            </a>
                                            <div class="noti-dot">
                                                <span class="dot"></span>
                                                <span class="pulse"></span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <!-- End Notification bar -->
                            </li>
                            <!--<li class="hidden-xs">
                            <form role="search" class="app-search">
                                <input type="text" placeholder="Search..."
                                       class="form-control">
                                <a href="#"><i class="fa fa-search"></i></a>
                            </form>
                        </li>-->
                        </ul>

                    </div><!-- end container -->
                </div><!-- end navbar -->
            </div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">

                    <!-- User -->
                    <div class="user-box">
                        <div class="user-img">
 <%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():"";%>
                            <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                        </div>
                        <h5 class="user-name"> ${ sessionScope.user.firstName} ${ sessionScope.user.lastName}  </h5>
                        <ul class="list-inline">
                            <li>
                                <a href="change-pw.html" >
                                    <i class="zmdi zmdi-settings"></i>
                                </a>
                            </li>

                            <li>
                                <a href="login.html" class="text-custom">
                                    <i class="zmdi zmdi-power"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- End User -->

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <ul>                        	
                            <li>
                                <a href="patient-dashboard.html" class="waves-effect active"><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                            </li>

                            <li>
                                <a href="patient-profile.html" class="waves-effect"><i class="fa fa-user-md"></i> <span> My Profile  </span> </a>
                            </li>

                            <li>
                                <a href="patient-scheduling.html" class="waves-effect"><i class="fa fa-list-alt"></i> <span> Schedule  </span></a>
                                
                            </li>  
                             <li>
                                <a href="patients-appointment.html" class="waves-effect"><i class="fa fa-calendar"></i> <span>My Appointment  </span></a>
                                
                            </li>
                              <li>
                                <a href="patient-messages.html" class="waves-effect"><i class="fa fa-comments"></i> <span>My Messages  </span></a>
                                
                            </li>
                                   
                                                    

                            

                            
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <!-- Sidebar -->
                    <div class="clearfix"></div>

                </div>

            </div>
            <!-- Left Sidebar End -->



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">


                        <div class="row">
                            <div class="col-sm-12">
                                <h2>Patient Dashboard</h2>
                            </div>
                         

                            <div class="col-lg-4 col-md-6 col-xs-12">
                                <div class="card-box">

                                    <h4 class="header-title m-t-0 m-b-30">Total Appointments</h4>

                                    <div class="widget-chart-1">
                                        <div class="icon-counter success">
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                        </div>
                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0"> 62 </h2>
                                            <p class="text-muted">Total Appointments</p>
                                        </div>
                                        <div class="progress progress-bar-success-alt progress-sm m-b-0">
                                            <div class="progress-bar progress-bar-success" role="progressbar"
                                                 aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 77%;">
                                                <span class="sr-only">77% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->
                            <div class="col-lg-4 col-md-6 col-xs-12">
                                <div class="card-box">
                                    <h4 class="header-title m-t-0 m-b-30">Upcoming Appointment</h4>
                                    <div class="widget-chart-1">
                                        <div class="icon-counter danger">
                                            <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                                        </div>
                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0"> 256 </h2>
                                            <p class="text-muted">Upcoming Appointment</p>
                                        </div>
                                        <div class="progress progress-bar-danger-alt progress-sm m-b-0">
                                            <div class="progress-bar progress-bar-danger" role="progressbar"
                                                 aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 77%;">
                                                <span class="sr-only">77% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->

                            <div class="col-lg-4 col-md-6 col-xs-12">
                                <div class="card-box">

                                    <h4 class="header-title m-t-0 m-b-30">New Messages</h4>

                                    <div class="widget-chart-1">
                                        <div class="icon-counter primary">
                                            <i class="fa fa-comments" aria-hidden="true"></i>
                                        </div>
                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0"> 0 </h2>
                                            <p class="text-muted"> Messages</p>
                                        </div>
                                        <div class="progress progress-bar-primary-alt progress-sm m-b-0">
                                            <div class="progress-bar progress-bar-primary" role="progressbar"
                                                 aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 77%;">
                                                <span class="sr-only">77% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->
                            <!-- end col -->

                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="bg-picture card-box2">
                                    <div class="profile-info-name">
                                        <img src="assets/images/profile.jpg" class="img-thumbnail" alt="profile-image">

                                        <div class="profile-info-detail">
                                            <h3 class="m-t-0 m-b-0">Alexandra Clarkson
                                                <a href="#" class="pull-right edit"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                            </h3>
                                            
                                           <div class="profile-details">
                                               <p><i class="fa fa-envelope" aria-hidden="true"></i> rajesh@dreamsoft4u.com</p>
                                               <p><i class="fa fa-globe" aria-hidden="true"></i> 24 street, jaipur, Rajasthan</p>

                                               <p><i class="fa fa-phone" aria-hidden="true"></i> 1-(899) 898-9898</p>
                                               
                                               <p><i class="fa fa-tty" aria-hidden="true"></i> 85236-9741</p>
                                           </div>

                                           
                                        </div>

                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <!--/ meta -->
                            </div>                            
                        </div>
                        <!-- end row -->  
                        <div class="row">
                        <div class="col-sm-12">
                            <div class="card-box2">

                                <h4 class="header-title m-t-0 m-b-30"><i class="fa fa-calendar-check-o m-r-5"></i> Upcoming Appointments</h4>

                                <ul class="list-group m-b-0 user-list">
                                    <li class="list-group-item">
                                        <a href="#" class="user-list-item">
                                            <div class="avatar text-center">
                                                <i class="zmdi zmdi-circle text-primary"></i>
                                            </div>
                                            <div class="user-desc">
                                                <span class="name">Dr. John Doe</span>
                                              
                                                <span class="desc">February 29, 2016 - 10:30am to 12:45pm</span>
                                            </div>
                                        </a>
                                    </li>

                                    <li class="list-group-item">
                                        <a href="#" class="user-list-item">
                                            <div class="avatar text-center">
                                                <i class="zmdi zmdi-circle text-success"></i>
                                            </div>
                                            <div class="user-desc">
                                                <span class="name">Dr. Sara williams</span>
                                               
                                                <span class="desc">February 29, 2016 - 10:30am to 12:45pm</span>
                                            </div>
                                        </a>
                                    </li>

                                    <li class="list-group-item">
                                        <a href="#" class="user-list-item">
                                            <div class="avatar text-center">
                                                <i class="zmdi zmdi-circle text-pink"></i>
                                            </div>
                                            <div class="user-desc">
                                                <span class="name">Dr. Sara williams</span>
                                              
                                                <span class="desc">February 29, 2016 - 10:30am to 12:45pm</span>
                                            </div>
                                        </a>
                                    </li>

                                    <li class="list-group-item">
                                        <a href="#" class="user-list-item">
                                            <div class="avatar text-center">
                                                <i class="zmdi zmdi-circle text-muted"></i>
                                            </div>
                                            <div class="user-desc">
                                                <span class="name">Dr. Sara williams</span>
                                                
                                                <span class="desc">February 29, 2016 - 10:30am to 12:45pm</span>
                                            </div>
                                        </a>
                                    </li>

                                    <li class="list-group-item">
                                        <a href="#" class="user-list-item">
                                            <div class="avatar text-center">
                                                <i class="zmdi zmdi-circle text-danger"></i>
                                            </div>
                                            <div class="user-desc">
                                                <span class="name">Dr. Sara williams</span>
                                                
                                                <span class="desc">February 29, 2016 - 10:30am to 12:45pm</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!--/ meta -->
                        </div>
                    </div>
                        <!-- end row -->                     

                    </div> <!-- container -->

                </div> <!-- content -->

                <footer class="footer text-right">
                    <div class="pull-left">&copy; Copyright 2016 Que-Ehr inc. All rights are reserved</div>
                <div class="pull-right">Designed by <a href="">DreamSoft4u</a></div>
                </footer>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            <div class="side-bar right-bar">
                <a href="javascript:void(0);" class="right-bar-toggle">
                    <i class="zmdi zmdi-close-circle-o"></i>
                </a>
                <h4 class="">Notifications</h4>
                <div class="notification-list nicescroll">
                    <ul class="list-group list-no-border user-list">
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-2.jpg" alt="">
                                </div>
                                <div class="user-desc">
                                    <span class="name">Michael Zenaty</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">2 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-info">
                                    <i class="zmdi zmdi-account"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">New Signup</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">5 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-pink">
                                    <i class="zmdi zmdi-comment"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">New Message received</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">1 day ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item active">
                            <a href="#" class="user-list-item">
                                <div class="avatar">
                                    <img src="assets/images/users/avatar-3.jpg" alt="">
                                </div>
                                <div class="user-desc">
                                    <span class="name">James Anderson</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">2 days ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item active">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-warning">
                                    <i class="zmdi zmdi-settings"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">Settings</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">1 day ago</span>
                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
            <!-- /Right-bar -->

        </div>
        <!-- END wrapper -->



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


        <!-- Dashboard init -->
        <script src="assets/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>
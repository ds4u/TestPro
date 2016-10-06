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
    <!--Morris Chart CSS -->
    <link rel="stylesheet" href="assets/plugins/morris/morris.css">

    <!-- Plugins css-->
    <link href="assets/plugins/switchery/switchery.min.css" rel="stylesheet" />

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
                        <img src="assets/images/users/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                        <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                    </div>
                    <h5 class="user-name"> ${ sessionScope.user.firstName} ${ sessionScope.user.lastName}  </h5>
                    <ul class="list-inline">
                        <li>
                            <a href="change-pw.html">
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
                                <a href="patient-dashboard.html" class="waves-effect "><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                            </li>

                            <li>
                                <a href="patient-profile.html" class="waves-effect"><i class="fa fa-user-md"></i> <span> My Profile  </span> </a>
                            </li>

                            <li>
                                <a href="patient-scheduling.html" class="waves-effect"><i class="fa fa-list-alt"></i> <span> Schedule  </span></a>
                                
                            </li>  
                             <li>
                                <a href="patients-appointment.html" class="waves-effect "><i class="fa fa-calendar"></i> <span>My Appointment  </span></a>
                                
                            </li>
                              <li>
                                  <a href="patient-messages.html" class="waves-effect active"><i class="fa fa-comments"></i> <span>My Messages  </span></a>
                                
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
                            <h2>Messages</h2>
                        </div>
                        <div class="col-sm-12">                           
                                                      
                            <div class="bg-picture card-box2">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
                                    <li role="presentation"><a href="#history" aria-controls="history" role="tab" data-toggle="tab">History</a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="messages">
                                        <div class="search">
                                            <form>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Patient Name</label>
                                                            <input type="text" value="" class="form-control" placeholder="Enter Patient Name">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <div class="form-group">
                                                            <label class="blank">&nbsp;</label>
                                                            <button class="btn btn-primary"><i class="fa fa-search"></i></button>
                                                        </div>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Patient Name</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Dr. Sara Williams</td>
                                                        <td><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#chat">Send</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Dr. Sara Williams</td>
                                                        <td><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#chat">Send</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Dr. Sara Williams</td>
                                                        <td><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#chat">Send</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="history">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Patient Name</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Dr. Sara Williams</td>
                                                        <td><a href="#" class="btn btn-success" data-toggle="modal" data-target="#chat">Reply</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Dr. Sara Williams</td>
                                                        <td><a href="#" class="btn btn-success" data-toggle="modal" data-target="#chat">Reply</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Dr. Sara Williams</td>
                                                        <td><a href="#" class="btn btn-success" data-toggle="modal" data-target="#chat">Reply</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

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

    <!-- Modal -->
    <div class="modal fade" id="chat" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Chat</h4>
                </div>
                <div class="modal-body" style="padding-bottom:0;">
                    <div class="chat">
                        <div class="chat-header clearfix">
                            <img src="assets/images/users/avatar-1.jpg" alt="avatar" class="avatar2" />

                            <div class="chat-about">
                                <div class="chat-with">Vincent Porter</div>
                            </div>
                        </div> <!-- end chat-header -->

                        <div class="chat-history">
                            <ul>
                                <li class="clearfix">
                                    <div class="message-data align-right">
                                        <span class="message-data-time">10:10 AM, Today</span> &nbsp; &nbsp;
                                        <span class="message-data-name">Olia</span> <i class="fa fa-circle me"></i>

                                    </div>
                                    <div class="message other-message float-right">
                                        Hi Vincent, how are you? How is the project coming along?
                                    </div>
                                </li>

                                <li>
                                    <div class="message-data">
                                        <span class="message-data-name"><i class="fa fa-circle online"></i> Vincent</span>
                                        <span class="message-data-time">10:12 AM, Today</span>
                                    </div>
                                    <div class="message my-message">
                                        Are we meeting today? Project has been already finished and I have results to show you.
                                    </div>
                                </li>

                                <li class="clearfix">
                                    <div class="message-data align-right">
                                        <span class="message-data-time">10:14 AM, Today</span> &nbsp; &nbsp;
                                        <span class="message-data-name">Olia</span> <i class="fa fa-circle me"></i>

                                    </div>
                                    <div class="message other-message float-right">
                                        Well I am not sure. The rest of the team is not here yet. Maybe in an hour or so? Have you faced any problems at the last phase of the project?
                                    </div>
                                </li>

                                <li>
                                    <div class="message-data">
                                        <span class="message-data-name"><i class="fa fa-circle online"></i> Vincent</span>
                                        <span class="message-data-time">10:20 AM, Today</span>
                                    </div>
                                    <div class="message my-message">
                                        Actually everything was fine. I'm very excited to show this to our team.
                                    </div>
                                </li>
                                <li>
                                    <div class="message-data">
                                        <span class="message-data-name"><i class="fa fa-circle online"></i> Vincent</span>
                                        <span class="message-data-time">10:20 AM, Today</span>
                                    </div>
                                    <div class="message my-message">
                                        Actually everything was fine. I'm very excited to show this to our team.
                                    </div>
                                </li>

                            </ul>

                        </div> <!-- end chat-history -->

                        <div class="chat-message clearfix">
                            <textarea name="message-to-send" id="message-to-send" placeholder="Type your message" rows="3"></textarea>                          

                        </div> <!-- end chat-message -->

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Send Message</button>
                </div>
            </div>
        </div>
    </div>

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
    
    <!-- Plugins Js -->
    <script src="assets/plugins/switchery/switchery.min.js"></script>  

    <!-- Dashboard init -->
    <script src="assets/pages/jquery.dashboard.js"></script>
    <!-- App js -->
    <script src="assets/js/jquery.core.js"></script>
    <script src="assets/js/jquery.app.js"></script>
</body>
</html>
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
                        <img src="assets/images/users/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                        <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                    </div>
                    <h5 class="user-name"> ${ sessionScope.user.firstName} ${ sessionScope.user.lastName}  </h5>
                    <ul class="list-inline">
                        <li>
                            <a href="#" data-toggle="modal" data-target="#change-pwd">
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
                            <a href="admin-dashboard.html" class="waves-effect active"><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                        </li>

                        <li>
                            <a href="staff.html" class="waves-effect"><i class="fa fa-user-md"></i> <span> Staff </span> </a>
                        </li>

                        <li>
                            <a href="patients.html" class="waves-effect"><i class="fa fa-wheelchair"></i> <span> Patients </span></a>

                        </li>

                        <li class="has_sub">
                            <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-file-pdf-o"></i> <span> Reports </span> <span class="menu-arrow"></span></a>
                            <ul class="list-unstyled">
                                <li><a href="appointment.html">Appointment</a></li>
                                <li><a href="revenue.html">Revenue</a></li>
                            </ul>
                        </li>

                        <li class="has_sub">
                            <a href="javascript:void(0);" class="waves-effect"><i class="zmdi zmdi-chart"></i><span> CMS </span> <span class="menu-arrow"></span></a>
                            <ul class="list-unstyled">
                                <li><a href="CMS-information.html">Information</a></li>
                                <li><a href="#">Facility data </a></li>
                            </ul>
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
                        <div class="col-lg-6">
                            <div class="card-box2">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="zmdi zmdi-more-vert"></i>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <h4 class="header-title m-t-0 m-b-30">Basic Form</h4>
                                <form action="#" data-parsley-validate novalidate>
                                    <div class="form-group">
                                        <label for="userName">User Name*</label>
                                        <input type="text" name="nick" parsley-trigger="change" required
                                               placeholder="Enter user name" class="form-control" id="userName">
                                    </div>
                                    <div class="form-group">
                                        <label for="emailAddress">Email address*</label>
                                        <input type="email" name="email" parsley-trigger="change" required
                                               placeholder="Enter email" class="form-control" id="emailAddress">
                                    </div>
                                    <div class="form-group">
                                        <label for="pass1">Password*</label>
                                        <input id="pass1" type="password" placeholder="Password" required
                                               class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="passWord2">Confirm Password *</label>
                                        <input data-parsley-equalto="#pass1" type="password" required
                                               placeholder="Password" class="form-control" id="passWord2">
                                    </div>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <input id="remember-1" type="checkbox">
                                            <label for="remember-1"> Remember me </label>
                                        </div>
                                    </div>
                                    <div class="form-group text-right m-b-0">
                                        <button class="btn btn-primary waves-effect waves-light" type="submit">
                                            Submit
                                        </button>
                                        <button type="reset" class="btn btn-default waves-effect waves-light m-l-5">
                                            Cancel
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div><!-- end col -->
                        <div class="col-lg-6">
                            <div class="card-box2">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="zmdi zmdi-more-vert"></i>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <h4 class="header-title m-t-0 m-b-30">Horizontal Form</h4>
                                <form class="form-horizontal" role="form" data-parsley-validate novalidate>
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-4 control-label">Email*</label>
                                        <div class="col-sm-7">
                                            <input type="email" required parsley-type="email" class="form-control"
                                                   id="inputEmail3" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="hori-pass1" class="col-sm-4 control-label">Password*</label>
                                        <div class="col-sm-7">
                                            <input id="hori-pass1" type="password" placeholder="Password" required
                                                   class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="hori-pass2" class="col-sm-4 control-label">
                                            Confirm Password
                                            *
                                        </label>
                                        <div class="col-sm-7">
                                            <input data-parsley-equalto="#hori-pass1" type="password" required
                                                   placeholder="Password" class="form-control" id="hori-pass2">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="webSite" class="col-sm-4 control-label">Web Site*</label>
                                        <div class="col-sm-7">
                                            <input type="url" required parsley-type="url" class="form-control"
                                                   id="webSite" placeholder="URL">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-4 col-sm-8">
                                            <div class="checkbox">
                                                <input id="remember-2" type="checkbox">
                                                <label for="remember-2"> Remember me </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-4 col-sm-8">
                                            <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                Registrer
                                            </button>
                                            <button type="reset"
                                                    class="btn btn-default waves-effect waves-light m-l-5">
                                                Cancel
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div><!-- end col -->
                    </div>
                    <!-- end row -->

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card-box2">
                                <div class="dropdown pull-right">
                                    <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="zmdi zmdi-more-vert"></i>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <h4 class="header-title m-t-0 m-b-30">Fields validation</h4>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <h5 class="m-b-5"><b>Validation type</b></h5>
                                        <p class="text-muted font-13 m-b-30">
                                            Your awesome text goes here.
                                        </p>
                                        <form class="form-horizontal group-border-dashed" action="#">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Required</label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" required
                                                           placeholder="Type something" />
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Equal To</label>
                                                <div class="col-sm-3">
                                                    <input type="password" id="pass2" class="form-control" required
                                                           placeholder="Password" />
                                                </div>
                                                <div class="col-sm-3">
                                                    <input type="password" class="form-control" required
                                                           data-parsley-equalto="#pass2"
                                                           placeholder="Re-Type Password" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">E-Mail</label>
                                                <div class="col-sm-6">
                                                    <input type="email" class="form-control" required
                                                           parsley-type="email" placeholder="Enter a valid e-mail" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">URL</label>
                                                <div class="col-sm-6">
                                                    <input parsley-type="url" type="url" class="form-control"
                                                           required placeholder="URL" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Digits</label>
                                                <div class="col-sm-6">
                                                    <input data-parsley-type="digits" type="text"
                                                           class="form-control" required
                                                           placeholder="Enter only digits" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Number</label>
                                                <div class="col-sm-6">
                                                    <input data-parsley-type="number" type="text"
                                                           class="form-control" required
                                                           placeholder="Enter only numbers" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Alphanumeric</label>
                                                <div class="col-sm-6">
                                                    <input data-parsley-type="alphanum" type="text"
                                                           class="form-control" required
                                                           placeholder="Enter alphanumeric value" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Textarea</label>
                                                <div class="col-sm-6">
                                                    <textarea required class="form-control"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-9 m-t-15">
                                                    <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                        Submit
                                                    </button>
                                                    <button type="reset" class="btn btn-default waves-effect m-l-5">
                                                        Cancel
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div><!-- end col -->
                                    <div class="col-lg-6">
                                        <h5 class="m-b-5"><b>Range validation</b></h5>
                                        <p class="text-muted font-13 m-b-30">
                                            Your awesome text goes here.
                                        </p>
                                        <form class="form-horizontal group-border-dashed" action="#">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Min Length</label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" required
                                                           data-parsley-minlength="6" placeholder="Min 6 chars." />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Max Length</label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" required
                                                           data-parsley-maxlength="6" placeholder="Max 6 chars." />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Range Length</label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" required
                                                           data-parsley-length="[5,10]"
                                                           placeholder="Text between 5 - 10 chars length" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Min Value</label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" required
                                                           data-parsley-min="6" placeholder="Min value is 6" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Max Value</label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" required
                                                           data-parsley-max="6" placeholder="Max value is 6" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Range Value</label>
                                                <div class="col-sm-6">
                                                    <input class="form-control" required type="text range" min="6"
                                                           max="100" placeholder="Number between 6 - 100" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Regular Exp</label>
                                                <div class="col-sm-6">
                                                    <input type="text" class="form-control" required
                                                           data-parsley-pattern="#[A-Fa-f0-9]{6}"
                                                           placeholder="Hex. Color" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Min check</label>
                                                <div class="col-sm-6">
                                                    <div class="checkbox checkbox-pink">
                                                        <input id="checkbox1" type="checkbox"
                                                               data-parsley-multiple="groups"
                                                               data-parsley-mincheck="2">
                                                        <label for="checkbox1"> And this </label>
                                                    </div>
                                                    <div class="checkbox checkbox-pink">
                                                        <input id="checkbox2" type="checkbox"
                                                               data-parsley-multiple="groups"
                                                               data-parsley-mincheck="2">
                                                        <label for="checkbox2"> Can't check this </label>
                                                    </div>
                                                    <div class="checkbox checkbox-pink">
                                                        <input id="checkbox3" type="checkbox"
                                                               data-parsley-multiple="groups"
                                                               data-parsley-mincheck="2" required>
                                                        <label for="checkbox3"> This too </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Max check</label>
                                                <div class="col-sm-6">
                                                    <div class="checkbox checkbox-pink">
                                                        <input id="checkbox4" type="checkbox"
                                                               data-parsley-multiple="group1">
                                                        <label for="checkbox4"> And this </label>
                                                    </div>
                                                    <div class="checkbox checkbox-pink">
                                                        <input id="checkbox5" type="checkbox"
                                                               data-parsley-multiple="group1">
                                                        <label for="checkbox5"> Can't check this </label>
                                                    </div>
                                                    <div class="checkbox checkbox-pink">
                                                        <input id="checkbox6" type="checkbox"
                                                               data-parsley-multiple="group1"
                                                               data-parsley-maxcheck="1">
                                                        <label for="checkbox6"> This too </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group m-b-0">
                                                <div class="col-sm-offset-3 col-sm-9 m-t-15">
                                                    <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                        Submit
                                                    </button>
                                                    <button type="reset" class="btn btn-default waves-effect m-l-5">
                                                        Cancel
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                            </div>
                        </div><!-- end col -->
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
    <div class="modal fade" id="change-pwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Change Password</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Old Password</label>
                            <input type="text" name="name" value="" placeholder="Enter old password" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label>New Password</label>
                            <input type="text" name="name" value="" placeholder="Enter new password" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label>Confirm Password</label>
                            <input type="text" name="name" value="" placeholder="Enter Confirm password" class="form-control" />
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="edit-profile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Edit Profile</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>User Name</label>
                                    <input type="text" name="name" value="" placeholder="Enter Username" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <input type="text" name="name" value="" placeholder="Enter Email" class="form-control">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>First Name</label>
                                    <input type="text" name="name" value="" placeholder="Enter First Name" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <input type="text" name="name" value="" placeholder="Enter Last Name" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Gender</label>
                                    <select class="form-control">
                                        <option>Male</option>
                                        <option>Female</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Address 1</label>
                                    <input type="text" name="name" value="" placeholder="Enter Address 1" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Address 2</label>
                                    <input type="text" name="name" value="" placeholder="Enter Address 2" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>City</label>
                                    <input type="text" name="name" value="" placeholder="Enter City" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>State</label>
                                    <input type="text" name="name" value="" placeholder="Enter State" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>ZipCode</label>
                                    <input type="text" name="name" value="" placeholder="Enter ZipCode" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Mobile Phone</label>
                                    <input type="text" name="name" value="" placeholder="Enter Mobile Phone" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Home Phone</label>
                                    <input type="text" name="name" value="" placeholder="Enter Home Phone" class="form-control">
                                </div>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
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

      <!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
        <script src="assets/js/main.js"></script>  
    <!-- Dashboard init -->
    <script src="assets/pages/jquery.dashboard.js"></script>

    <!-- Validation js (Parsleyjs) -->
    <script type="text/javascript" src="assets/plugins/parsleyjs/dist/parsley.min.js"></script>

    <!-- App js -->
    <script src="assets/js/jquery.core.js"></script>
    <script src="assets/js/jquery.app.js"></script>



    <script type="text/javascript">
        $(document).ready(function () {
            $('form').parsley();
        });
    </script>
</body>
</html>
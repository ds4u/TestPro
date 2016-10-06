<%@page import="com.dreamsoft4u.queehr.constant.ApplicationVariables"%>
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
                    <a href="index.do" class="logo"><span>Que-<span>ehr</span></span><i class="zmdi zmdi-layers"></i></a>
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
                        <%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():"";
                                              %>
                            <img src="<%=image%>" alt="user-img"  class="img-circle img-thumbnail img-responsive">
                            <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                        </div>
                        <h5 class="user-name"> ${ sessionScope.user.firstName} ${ sessionScope.user.lastName} </h5>
                        <ul class="list-inline">
                        <!--Remove reset-password.do  -->
                            <li>
                                <a href="#" class="text-custom" data-toggle="modal" data-target="#change-pwd" title="Reset password">
                                
                                    <i class="zmdi zmdi-settings"></i>
                                    
                                </a>
                            </li>

                            <li>
                                <a href="logout.do" class="text-custom" title="Logout">
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


                                <a href="admindashboard.do" class="waves-effect active"><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>

                            </li>

                            <li>
                                <a href="liststaff.do" class="waves-effect"><i class="fa fa-user-md"></i> <span> Staff </span> </a>
                            </li>

                            <li>

                           

                                <a href="listpatient.do" class="waves-effect"><i class="fa fa-wheelchair"></i> <span> Patients </span></a>

                                
                            </li>                         

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-file-pdf-o"></i> <span> Reports </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="#">Appointment</a></li>
                                    <li><a href="#">Revenue</a></li>                                   
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="zmdi zmdi-chart"></i><span> CMS </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="faqlist.do">Information</a></li>
                                    <li><a href="cmscontactus.do">Facility data </a></li>
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
                              <div class="col-sm-12">
                                <h2>Admin Dashboard</h2>
                              
                    <% String msg=session.getAttribute("message")!=null?session.getAttribute("message").toString():"";
                                             
                                              if(!msg.equals(""))
                                              {
                                           %>
                                                <div class="alert alert-success">
                                                        <strong>Success!</strong> <%= msg %>
                                                </div>
                                                <%
                                              
                                                session.setAttribute("message", null);
                                              }
                                              %>
                                 
                             
                            </div>
                            <div class="col-lg-4 col-md-6 col-xs-12">
                                <div class="card-box">                                 
                                    <h4 class="header-title m-t-0 m-b-30">Total Staffs</h4>                                   
                                    <div class="widget-chart-1">   
                                        <div class="icon-counter danger">
                                            <i class="fa fa-user-md" aria-hidden="true"></i>
                                        </div>                                    
                                        <div class="widget-detail-1">                                            
                                            <h2 class="p-t-10 m-b-0"> ${countuser.totalStaffCount} </h2>
                                            <p class="text-muted">Staffs</p>
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
                                   
                                    <h4 class="header-title m-t-0 m-b-30">Total Patients</h4>

                                    <div class="widget-chart-1">
                                        <div class="icon-counter success">
                                            <i class="fa fa-heartbeat" aria-hidden="true"></i>
                                        </div> 
                                        <div class="widget-detail-1">                                           
                                            <h2 class="p-t-10 m-b-0"> ${countuser.totalPatientCount} </h2>
                                            <p class="text-muted">Patients</p>
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

                                    <h4 class="header-title m-t-0 m-b-30">Total Patients Waiting</h4>

                                    <div class="widget-chart-1">
                                        <div class="icon-counter primary">
                                            <i class="fa fa-wheelchair"  aria-hidden="true"></i>
                                        </div> 
                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0">${countuser.totalApprovalCount} </h2>
                                            <p class="text-muted"> for Approval</p>
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

                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="bg-picture card-box2">
                                    <div class="profile-info-name">
                                        <img src="${imagepath}" class="img-thumbnail" alt="profile-image">

                                        <div class="profile-info-detail">
                                            <h3 class="m-t-0 m-b-0">${address.user.firstName} &nbsp; ${address.user.lastName}
                                               <a href="#" data-toggle="modal" data-target="#edit-profile" class="pull-right edit"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                            </h3>
                                            
                                           <div class="profile-details">
                                               <p><i class="fa fa-envelope" aria-hidden="true"></i> ${address.user.emailAddress}</p>
                                               <p><i class="fa fa-globe" aria-hidden="true"></i> ${address.addressLineOne},</p>
                                                 <p><i class="fa fa-globe" aria-hidden="true"></i> ${address.addressLineTwo}, ${city.name}, ${state}</p>
                                               <p><i class="fa fa-phone" aria-hidden="true"></i> ${address.user.mobileNumber }</p>
                                               
                                              <c:if test="${ not empty address.user.homeNumber }"> <p><i class="fa fa-tty" aria-hidden="true"></i>  ${address.user.homeNumber }</p></c:if>
                                           </div>

                                           
                                        </div>

                                        <div class="clearfix"></div>
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
        <div class="modal fade" id="change-pwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header" id="modal-header">
                       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Change Password</h4>
                       
                    </div>
                                         <form:form data-parsley-trigger="input" name="frm" data-parsley-focus="first" enctype="multipart/form-data" class="form-horizontal m-t-20" method="post" commandName="address" action="reset-password.do" id="changePassword">
                               <form:hidden path="id"/>
                    <div class="modal-body">      
              
                    <% String message=session.getAttribute("message")!=null?session.getAttribute("message").toString():"";
                                             
                                              if(!message.equals(""))
                                              {
                                           %>
                                                <div class="alert alert-success">
                                                        <strong>Success!</strong> <%=message %>
                                                </div>
                                                <%
                                              
                                                session.setAttribute("message", null);
                                              }
                                              %>
                                                 
                                                    
                                                
                                    <form:hidden path="user.id" id="resetpasswordid"/>             
                                    <div class="form-group">
                                       <label>Old Password</label>
                                       <form:input type="password"  path="user.password"   value="" data-parsley-trigger="focusout"  placeholder="Enter old password" class="form-control" id="oldpassword" required="required"/>
                                   </div>
                                   <div class="form-group">
                                       <label>New Password</label>
                                       <input type="password"  name="newPassword" data-parsley-pattern = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"  data-parsley-error-message="Passwords must use 8-16 characters & atleast 1 lowercase letter, 1 uppercase letter, numbers, and symbols. " value="" data-parsley-trigger="focusout"  placeholder="Enter new password" class="form-control" required="required" id="newpassword" />
                                   </div>
                                   <div class="form-group">
                                       <label>Confirm Password</label>
                                       <input type="password"  name="confirmPassword"  value="" data-parsley-trigger="focusout" data-parsley-equalto="#newpassword" placeholder="Enter Confirm password" class="form-control" required="required" id="confirmpassword" />
                                   </div>
                                                      
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="button" id="updatepasswordsubmit" class="btn btn-primary" >Save changes</button>
                    </div>
                   </form:form>
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
                       <form:form data-parsley-trigger="input" data-parsley-focus="first" enctype="multipart/form-data"  action="updateadmin.do" method="post" commandName="address" id="editAdmin">
                       <form:hidden path="id"/>
                       <form:hidden path="user.id"/>
                       <form:hidden path="user.isAdmin"/>
                       <form:hidden path="user.password" value="${password}" id="userpasswrod"/>
                      
                       <c:if test="${not empty message}">
            <                   <div class="alert alert-success">
                                        <strong>Success!</strong> ${message}
                                </div>
                        </c:if>
                    <div class="modal-body">
                     
                           <div class="row">
                               <div class="col-sm-6">
                                   <div class="form-group">
                                       <label>User Name</label>
                                      <form:input  required="required" type="text" path="user.userName" id="username" data-parsley-length="[2, 20]" data-parsley-type="alphanum" data-parsley-trigger="focusout" placeholder="Enter Username" class="form-control"   />
                                   </div>
                               </div>
                               <div class="col-sm-6">
                                   <div class="form-group">
                                       <label>Email Address</label>
                                       <form:input  data-parsley-pattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$" path="user.emailAddress" value="" data-parsley-trigger="focusout" data-parsley-length="[2, 45]" placeholder="Enter Email" id="email" class="form-control" required="required" />
                                   </div>
                                   <span id="error-email" style="color:red; display:none">Email id already exist</span>
                               </div>
                           </div>
                           
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label>First Name</label>
                                      <form:input  type="text" data-parsley-type="alphanum" data-parsley-length="[2, 20]" path="user.firstName" id="firstName" data-parsley-trigger="focusout" value="" placeholder="Enter First Name" class="form-control" required="required" />
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label>Last Name</label>
                                      <form:input  type="text" data-parsley-type="alphanum" path="user.lastName" id="lastName" value="" data-parsley-length="[2, 20]" data-parsley-trigger="focusout"  placeholder="Enter Last Name" class="form-control" required="required" />
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label>Gender</label>
                                        <form:select class="form-control" path="user.gender" data-parsley-trigger="focusout" data-parsley-error-message="Select Gender" required="required">
                                            <form:option value="">-Select Gender-</form:option>
                                            <form:option value="1" label="Male"/>
                                            <form:option value="2" label="Female"/>
                                          
                                        </form:select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Address 1</label>
                                        <form:input type="text" path="addressLineOne" value="" data-parsley-trigger="focusout" data-parsley-error-message="Enter Address Line " placeholder="Enter Address 1" class="form-control" required="required"/>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Address 2</label>
                                        <form:input type="text" path="addressLineTwo" value="" placeholder="Enter Address 2" class="form-control" />
                                    </div>
                                </div>
                            </div>
                           <div class="row">
                            <div class="col-sm-6">
                                   <div class="form-group">
                                       <label>State</label>
                                       <form:select  path="stateID" value="" placeholder="Enter State" class="form-control" data-parsley-trigger="focusout" data-parsley-error-message="Select State" id="statelist" required="required">
                                       <form:option value="">-Select State-</form:option>
                                       <form:options itemLabel="name" itemValue="id" items="${statelist}"/>
                                       </form:select>
                                   </div>
                               </div>
                               <div class="col-sm-6">
                                   <div class="form-group">
                                       <label>City</label>
                                       <div id="cityDiv">
                                       <select type="text" value="" name="cityID" placeholder="Enter City" class="form-control" data-parsley-trigger="focusout" data-parsley-error-message="Enter City" required="required">
                                       		<c:choose>
                                                   	<c:when test="${city != null }">
                                                   		<option value="${ city.id}">${city.name}</option>
                                                   	</c:when>
                                                   	<c:otherwise>
                                                   		<option>-Select City-</option>
                                                   	</c:otherwise>
			                                       		
			                                       	</c:choose>
                                       </select>
                                       
                                       </div>
                                   </div>
                               </div>
                              
                           </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>ZipCode</label>
                                       <form:input  path="zipcode" id="zipcode" value="" data-parsley-type="alphanum" data-parsley-length="[6, 8]" placeholder="Enter ZipCode" class="form-control" required="required" data-parsley-trigger="focusout" />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Mobile Phone</label>
                                       <form:input type="text" path="user.mobileNumber" id="mobileNumber" value="" placeholder="Enter Mobile Phone" data-parsley-length="[10, 14]" data-parsley-type="digits" class="form-control" required="required" data-parsley-trigger="focusout"  />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Home Phone</label>
                                         <form:input type="text" path="user.homeNumber" value="" data-parsley-length="[10, 14]" data-parsley-type="digits" placeholder="Enter Home Phone" data-parsley-trigger="focusout" class="form-control"/>
                                    </div>
                                </div>
                                <form:hidden path="user.image.id"/>
                                 <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Image Upload</label>
                                        <form:input type="file" path="user.imageFile" value="" data-parsley-trigger="change" data-parsley-fileextension='png,jpg,jpeg,gif'  data-parsley-error-message="Only png, jpg, jpeg and gif files are allowed!" repeat-x="repeat-x"/>
                                    </div>
                                </div>
                            </div>
                              
                      
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                      </form:form>
                </div>
            </div>
        </div>
<input id="hiddencontent" type="hidden" value=${userid}>

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
  <script src="assets/plugins/parsleyjs/dist/parsley.min.js"></script>
  <!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>

	<script src="assets/js/main.js"></script>

        <!-- Dashboard init -->
        <script src="assets/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
    <script type="text/javascript">
    var userid = $("#hiddencontent").val();
	$.cookie("userid", userid);

	$("#hiddencontent").val('');
            $(document).ready(function () {
                var flag=true;
                window.ParsleyValidator
                .addValidator('fileextension', function (value, requirement) {
                    // the value contains the file path, so we can pop the extension
                    var fileExtension = value.split('.').pop();
                    var ext=requirement.split(",");
                    for (var i = 0; i < ext.length; i++) {
                        if(fileExtension!=ext[i])
                            {
                              flag=false;
                             
                            }
                        else
                            {
                            flag=true;
                            break;
                            }
                       
                        //Do something
                    }
                    
                    return flag;
                }, 32)
                .addMessage('en', 'fileextension', 'The extension doesn\'t match the required');

                
                
                $("#editAdmin").parsley();
                $("#changePassword").parsley();
               
            });
            jQuery("document").ready(function($){
                
                jQuery("#updatepasswordsubmit").click(function(){
                    var $form = $('#changePassword');
                    var a = $form.parsley().validate();
                    if(a) {
                        
                    var oldpassword=jQuery('#oldpassword').val();
                    var newpassword=jQuery('#newpassword').val();
                    var confirmpassword=jQuery('#confirmpassword').val();
               
                    var id=jQuery('#resetpasswordid').val();
                    if(newpassword!=confirmpassword)
                        {
                    	
                        var html='<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><h4 class="modal-title" id="myModalLabel">Change Password</h4><h6 class="alert alert-danger">New password and confirm password does not match</h6>';
                        jQuery("#modal-header").html(html); 
                        return false;
                        }
                   if(newpassword!=''&&oldpassword!=''&&confirmpassword!='')
                    {
                    	
                        
                    validateOldPassword(oldpassword,id);
                    }
                    }
                }); 
                
                /* jQuery("#staffForm").submit(function(e){
                    e.preventDefault();
                    var city=jQuery("#city").value();
                    validateUser();
                    console.info("city: "+city);
                });  */
                
            });
            function validateOldPassword(oldpassword,id){
            	
                
                var baseurl="${pageContext.request.contextPath}";
                jQuery.ajax({
                    url:baseurl+"/validateoldpassword.do",
                    method:"POST",
                    data:{"oldPassword":oldpassword,"id":id},
                    success:function(data){
                        var response=data;
                        
                        if(response==='success')
                        window.document.frm.submit();
                        else
                            {
                            
                            var html='<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><h4 class="modal-title" id="myModalLabel">Change Password</h4><h6 class="alert alert-danger">'+response+'</h6>';
                            jQuery("#modal-header").html(html); 
                            }
                    },
                    fails:function(error){
                        console.info("server error.....");
                    }
                });
            }
            
          

            
           
            
            // Image validation end //
        </script>
         <script type="text/javascript">
            jQuery("document").ready(function($){
               
                jQuery("#statelist").change(function(){
                	
                    var stateId=jQuery('#statelist :selected').val();
                    
                    getCityList(stateId);
                }); 
                
                
                
            });
            
            function getCityList(id){
                var baseurl="${pageContext.request.contextPath}";
                jQuery.ajax({
                    url:baseurl+"/getCityList.do",
                    method:"POST",
                    data:{"id":id},
                    success:function(data){
                        var parseData=JSON.parse(data);
                        cityList(parseData);
                        
                    },
                    fails:function(error){
                        console.info("server error.....");
                        
                    }
                });
            }
            
            function cityList(data){
                
                var html="<select placeholder='Enter City' name='cityID' parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
                html+="<option value='' >Select</option>"; 
                jQuery.each(data,function(index,value){

                    html+="<option value='"+value.id+"' >"+value.name+"</option>"; 

                });
                html+="</select>";
                jQuery("#cityDiv").html(html);
            }
              
            $(function(){  
                  $('#edit-profile').on('hidden.bs.modal', function (e) {
                  console.log("Modal hidden");
                  $("#editAdmin")[0].reset();
                });
            });

            $(function(){  
                $('#change-pwd').on('hidden.bs.modal', function (e) {
                console.log("Modal hidden");
                $("#oldpassword").val("");
                $("#newpassword").val("");
                $("#confirmpassword").val("");
               
                $('#changePassword').parsley().reset();
                $('#change-pwd').parsley().reset();
                });
          });
            
            
            //Ravi
            
           /*  $("#staffForm").submit(function(){
                var isFormValid = true;

                $(".required input").each(function(){
                    if ($.trim($(this).val()).length == 0){
                        $(this).addClass("highlight");
                        isFormValid = false;
                    }
                    else{
                        $(this).removeClass("highlight");
                    }
                });

                if (!isFormValid) alert("Please fill in all the required fields (indicated by *)");

                return isFormValid;
            }); */
        
    </script>
    <script>
        <% String msg2=session.getAttribute("error")!=null?session.getAttribute("error").toString():"";
                                             
                                              if(!msg2.equals(""))
                                              {
                                           %>
                                                
                                                
                                                $('#edit-profile').modal('show');
                                                $('#error-email').css('display', 'inline-block');
                                                
                                                <%
                                              
                                                session.setAttribute("error", null);
                                              }
                                              %>
                                              </script>
    </body>
</html>
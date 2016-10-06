<%@page import="com.dreamsoft4u.queehr.constant.ApplicationVariables"%>
<%@ page import="com.dreamsoft4u.queehr.database.entities.User" %>
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
                         <%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():""; %>
                            <img src="<%=image%>" alt="user-img"  class="img-circle img-thumbnail img-responsive">
                            <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                        </div>
                        	<h5 class="user-name"><%=((User)session.getAttribute("user")).getFirstName()+" "+ ((User)session.getAttribute("user")).getLastName() %> </h5>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="text-custom" data-toggle="modal" data-target="#change-pwd" title="Reset password">
                                    <i class="zmdi zmdi-settings"></i>
                                </a>
                            </li>

                            <li>
                                <a href="logout.do" class="text-custom" title="logout">
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
                                <a href="recdashboard.do" class="waves-effect active"><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                            </li>

                            <li>
                                <a href="recplistpatient.do" class="waves-effect"><i class="fa fa-wheelchair"></i> <span> Patients </span> </a>
                            </li>

                            <li>
                                <a href="recscheduling.do" class="waves-effect"><i class="fa fa-calendar"></i> <span> Scheduling  </span></a>
                                
                            </li>                         

                            <li>
                                <a href="recappreport.do" class="waves-effect"><i class="fa fa-calendar-plus-o"></i> <span>Appointment Reports </span></a>
                               
                            </li>

                            <li>
                                <a href="billing.do" class="waves-effect"><i class="fa fa-usd"></i><span> Billing  </span></a>                               
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
                                <h2>Receptionist Dashboard</h2>
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
                                    <h4 class="header-title m-t-0 m-b-30">Total Appointments</h4>
                                    <div class="widget-chart-1">
                                        <div class="icon-counter danger">
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                        </div>
                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0" id="total_app"> ${Total}</h2>
                                            <p class="text-muted">Appointments</p>
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

                                    <h4 class="header-title m-t-0 m-b-30">Total Booked Appointments</h4>

                                    <div class="widget-chart-1">
                                        <div class="icon-counter success">
                                            <i class="fa fa-calendar-plus-o" aria-hidden="true"></i>
                                        </div>
                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0" id="booked_app">${Booked}  </h2>
                                            <p class="text-muted">Appointments</p>
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

                                    <h4 class="header-title m-t-0 m-b-30">Total Appointments Waiting</h4>

                                    <div class="widget-chart-1">
                                        <div class="icon-counter primary">
                                            <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                                        </div>
                                        <div class="widget-detail-1">
                                            <h2 class="p-t-10 m-b-0" id="waiting_app">${Waiting} </h2>
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
                                    <div class="card-box2">                                        

                                        <h4 class="header-title m-t-0 m-b-30"><i class="fa fa-calendar m-r-5"></i> Appointments Requests</h4>

                                        <ul class="list-group m-b-0 user-list">
                                            <li class="list-group-item">
                                                <a href="#" class="user-list-item">
                                                    <div class="avatar text-center">
                                                        <i class="zmdi zmdi-circle text-primary"></i>
                                                    </div>
                                                    <div class="user-desc">
                                                        <span class="name">Meet Dr. John Doe</span>
                                                        <span>Dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde?</span>
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
                                                        <span class="name">Discussion with Dr. Sara williams</span>
                                                        <span>consectetur adipisicing elit. Iusto, optio, dolorum John deon provident rerum aut hic quasi placeat iure tempora laudantium</span>
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
                                                        <span class="name">Meet Manager</span>
                                                        <span>onatha Smith added new milestone Pathek Lorem ipsum dolor sit amet consiquest dio</span>
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
                                                        <span class="name">Discussion</span>
                                                        <span>Dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde?</span>
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
                                                        <span class="name">Meet Manager</span>
                                                        <span>Dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde?</span>
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

        <!-- Modal -->
        <div class="modal fade" id="change-pwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header" id="modal-header">
                       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Change Password</h4>
                       
                    </div>
                                         <form data-parsley-trigger="input" name="frm" data-parsley-focus="first" enctype="multipart/form-data" class="form-horizontal m-t-20" method="post" action="recpreset-password.do" id="changePassword">
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
                                              <%User user=(User)session.getAttribute("user"); %>
                                    <input type="hidden" id="resetpasswordid" value="<%=user.getId() %>"/>
                                    <div class="form-group">
                                       <label>Old Password</label>
                                       <input type="password"   value=""  placeholder="Enter old password" class="form-control" id="oldpassword" required="required" name="oldPassword"/>
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
                   </form>
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
        <script>
        
        var userid = $("#hiddencontent").val();
		$.cookie("userid", userid);

		$("#hiddencontent").val('');
        window.onload = cronJob;
        	function cronJob() {
        	  setInterval(function(){ var baseurl="${pageContext.request.contextPath}";
        	  
		    	jQuery.ajax({
		    		url:baseurl+"/recpappointments.do",
		    		method:"GET",
		    		success:function(data){
		    			obj = JSON.parse(data);
		    			document.getElementById("total_app").innerHTML = obj.Total;
		    			document.getElementById("booked_app").innerHTML = obj.Booked;
		    			document.getElementById("waiting_app").innerHTML = obj.Waiting;
		    		},
		    		fails:function(error){
		    			alert("its not working");
		    		}
		    	}); }, 90000);
        	};

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
                            
                            if(response==='success'){
                            window.document.frm.submit();
                            
                            }
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
                            $(function(){  
                                $('#change-pwd').on('hidden.bs.modal', function (e) {
                                console.log("Modal hidden");
                                $("#oldpassword").val("");
                                $("#newpassword").val("");
                                $("#confirmpassword").val("");
                                $('#changePassword').parsley().reset();
                                });
                          });

        </script>

    </body>
</html>
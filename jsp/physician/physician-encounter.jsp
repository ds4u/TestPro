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

        <title>Encounter</title>

           <!-- DataTables -->
<link href="assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />

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
                                            <div class="noti-dot" id="notd" style="display:none">
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
                            <img src="<%=image%>" alt="user-img"  class="img-circle img-thumbnail img-responsive">
                            <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                        </div>
                        <h5 class="user-name"> ${ sessionScope.user.firstName} ${ sessionScope.user.lastName}  </h5>
                        <ul class="list-inline">
                          <!--   <li>
                                <a href="change-pw.html" >
                                    <i class="zmdi zmdi-settings"></i>
                                </a>
                            </li> -->

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
                                <a href="phydashboard.do" class="waves-effect"><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                            </li>

                            <li>
                                <a href="phytodolist.do" class="waves-effect"><i class="fa fa-list"></i> <span> To Do List </span> </a>
                            </li>

                            <li>
                                <a href="physchedule.do" class="waves-effect"><i class="fa fa-calendar-plus-o"></i> <span> Scheduling Tab </span></a>
                                
                            </li>                         

                            <li>
                                <a href="phyappointment.do" class="waves-effect"><i class="fa fa-calendar"></i> <span> My Appointments </span></a>                               
                            </li>

                            <li><a href="phylistpatient.do" class="waves-effect"><i class="fa fa-wheelchair"></i><span> Patients </span></a>
                            </li>
                            <li>
                                <a href="phymessages.do" class="waves-effect"><i class="fa fa-envelope"></i><span> Messages </span></a>
                            </li>
                            <li>
                                <a href="phyencounter.do" class="waves-effect active"><i class="fa fa-file"></i><span> Encounter Report </span></a>
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
                                <h2>Physician-Encounter</h2>
                            </div> 
                        </div>
                        <!-- end row -->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="bg-picture card-box2">
                                   
                                  <div class="table-responsive">
                                                <table id="encounterReportList" class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Date</th>
                                                            <th>Patient Name</th>                                                           
                                                            <th>Encounter Report</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:if test="${not empty encounterReportList}">
                                                    <c:forEach var="list" items="${encounterReportList}">
                                                        <tr>
                                                        	<td>${list.createdOn}</td>   
                                                            <td>${list.firstName}  ${list.lastName}</td>
                                                                                                                                                                            
                                                            <td>Encounter Report &nbsp;&nbsp;
                                                                <a class="endownload" data-clid=${list.clinicianId} data-patid=${list.patientId}  href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                                <a class="enprint" data-clid=${list.clinicianId} data-patid=${list.patientId} href="#"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                            </td>
                                                        </tr>
                                                        </c:forEach>
                                                     </c:if>
                                                    </tbody>
                                                </table>
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
                    <ul class="list-group list-no-border user-list" id="NotificationList">
                        <!--  li class="list-group-item" >
                         <a href="phylistpatient.do" class="user-list-item">
                           		 <div class="icon bg-pink">
                                    <i class="zmdi zmdi-comment" id="comment"></i>
                                </div>
                               
                                <div class="user-desc">
                                    <span class="name" id="userName"></span>
                                    <span class="desc" id="fromDate"></span>
                                    <span class="time" id="fromTime"></span>
                                </div>
                            </a>
                        </li -->
                     
                    </ul>
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
        <!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
        <script src="assets/js/main.js"></script> 


        <!-- Dashboard init -->
        <script src="assets/pages/jquery.dashboard.js"></script>
         <!-- Datatables-->
		<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        <script src="assets/js/ajaxCalling.js"></script>
          <script>
			 $(document).ready(function () {
		         $('#encounterReportList').dataTable({
		        	  "order": [[ 0, "desc" ]]
		         });
		     });
		     TableManageButtons.init();
		     
		     
        </script>
        
        <script>
        	 //Download Encounter Statement 
				/**
				* Method used for download Encounter as pdf format
				*/
				$(".endownload").click(function() {
					
					var clinicianId = $(this).data('clid');
					var patientId = $(this).data('patid');

					console.info("bill id:- " + clinicianId+"/"+patientId);
					encounterDownload(clinicianId,patientId);
				});

				/**
				* Method used for print Encounter as pdf format
				*/
				$(".enprint").click(function() {
					var clinicianId = $(this).data('clid');
					var patientId = $(this).data('patid');

					console.info("bill id:- " + clinicianId+"/"+patientId);
					encounterDownload(clinicianId,patientId);
				});
				
				/**
				*	Method Used For Generic Operation of Encounter Report.
				*/
				var encounterDownload = function(clinicianId,patientId) {
					var method = "POST";
					var hostUrl = "encounterreport.do";//hosturl.appointmentReport;
					var data = "clinicianid="+clinicianId+"&patientid="+patientId;
					
					callAjax(function(msg) {

						if (msg.valid) {
							
							var filePath= msg.object;
						    var file=filePath.substring(filePath.indexOf("tmpfile"));
								
							console.info(basicHostUrl+file);
						    
						    window.open(basicHostUrl+file, '_blank');
						} else {
							console.log("File Not Download.");
						}

					}, function(error) {
						console.log("File Not Download."+error);
					}, method, hostUrl, data);
				};
				
				// End Encounter Statement
        </script>

    </body>
</html>
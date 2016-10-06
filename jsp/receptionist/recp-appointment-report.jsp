<%@page import="com.dreamsoft4u.queehr.constant.ApplicationVariables"%>
<%@ page import="com.dreamsoft4u.queehr.database.entities.User"%>
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

<title>Appointment Report</title>

<!-- DataTables -->
<link href="assets/plugins/datatables/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css" />



<!-- App css -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="assets/css/core.css" rel="stylesheet" type="text/css" />
<link href="assets/css/components.css" rel="stylesheet" type="text/css" />
<link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
<link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
<link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
<link href="assets/css/jquery-ui-v1.12.0.css" rel="stylesheet"
	type="text/css" />
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
				<a href="index.do" class="logo"><span>Que-<span>ehr</span></span><i
					class="zmdi zmdi-layers"></i></a>
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
									<li><a href="javascript:void(0);" class="right-bar-toggle">
											<i class="zmdi zmdi-notifications-none"></i>
									</a>
										<div class="noti-dot">
											<span class="dot"></span> <span class="pulse"></span>
										</div></li>
								</ul>
							</div> <!-- End Notification bar -->
						</li>
						<!--<li class="hidden-xs">
                            <form role="search" class="app-search">
                                <input type="text" placeholder="Search..."
                                       class="form-control">
                                <a href="#"><i class="fa fa-search"></i></a>
                            </form>
                        </li>-->
					</ul>

				</div>
				<!-- end container -->
			</div>
			<!-- end navbar -->
		</div>
		<!-- Top Bar End -->


		<!-- ========== Left Sidebar Start ========== -->
		<div class="left side-menu">
			<div class="sidebar-inner slimscrollleft">

				<!-- User -->
				<div class="user-box">
					<div class="user-img">
						<%
							String image = session.getAttribute("imagepath") != null ? session
									.getAttribute("imagepath").toString() : "";
						%>
						<img src="<%=image%>" alt="user-img" title="Mat Helme"
							class="img-circle img-thumbnail img-responsive">
						<!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
					</div>
					<h5 class="user-name"><%=((User) session.getAttribute("user")).getFirstName() + " "
					+ ((User) session.getAttribute("user")).getLastName()%>
					</h5>
					<ul class="list-inline">
						<li><a href="logout.do" class="text-custom" title="logout"> <i
								class="zmdi zmdi-power"></i>
						</a></li>
					</ul>
				</div>
				<!-- End User -->

				<!--- Sidemenu -->
				<div id="sidebar-menu">
					<ul>
						<li><a href="recdashboard.do" class="waves-effect "><i
								class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
						</li>

						<li><a href="recplistpatient.do" class="waves-effect"><i
								class="fa fa-wheelchair"></i> <span> Patients </span> </a></li>

						<li><a href="recscheduling.do" class="waves-effect"><i
								class="fa fa-calendar"></i> <span> Scheduling </span></a></li>

						<li><a href="recappreport.do" class="waves-effect active"><i
								class="fa fa-calendar-plus-o"></i> <span>Appointment
									Reports </span></a></li>

						<li><a href="billing.do" class="waves-effect"><i
								class="fa fa-usd"></i><span> Billing </span></a></li>
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
							<h2>Appointment Report</h2>
						</div>
						<div class="col-sm-12">
							<div class="bg-picture card-box2">
								<div class="search">
									<form method="post" action="recappreportsearch.do"
										data-parsley-focus="none" id="recappreportsearch">
										<div class="row">
											<div class="col-sm-10">
												<div class="row">
													<div class="col-sm-3">
														<div class="form-group">
															<label>Physician Name</label> <input type="text"
																name="clinicianName" value="${clinicianName}" required="required"
																data-parsley-trigger="focusout" value=""
																class="form-control" placeholder="Enter Physician Name">
														</div>
													</div>
													<div class="col-sm-3">
														<div class="form-group">
															<label>Patient Name</label> <input type="text" value="${patientName}"
																name="patientName" required="required"
																data-parsley-trigger="focusout" class="form-control"
																placeholder="Enter Patient Name">
														</div>
													</div>
													<div class="col-sm-3">
														<div class="form-group">
															<label>From Date</label> <input type="text" value="${fromDate }"
																data-parsley-trigger="change" required="required" 
																id="fromDate" name="fromDate" class="form-control"
																placeholder="MM/DD/YYYY" readonly="readonly">
														</div>
													</div>
													<div class="col-sm-3">
														<div class="form-group">
															<label>To Date</label> <input type="text" value="${toDate}"
																data-parsley-trigger="change" required="required"
																id="toDate" name="toDate" class="form-control"
																placeholder="MM/DD/YYYY" readonly="readonly">
														</div>
													</div>
												</div>
											</div>
											<div class="col-sm-2">
												<div class="form-group">
													<label class="blank">&nbsp;</label>
													<button type="submit" class="btn btn-primary">
														<i class="fa fa-search"></i>
													</button>
													<button type="button" class="btn btn-success downloadappointment">
														<i class="fa fa-download"></i>
													</button>
													<button type="button" class="btn btn-primary printappointment">
														<i class="fa fa-print"></i>
													</button>
												</div>
											</div>
										</div>

									</form>
								</div>
								<div class="table-responsive">
									<table id="recListAppointment" class="table table-bordered">
										<thead>
											<tr>
												<th>Physician Name</th>
												<th>Patient Name</th>
												<th>Date</th>
												<th>Time</th>
												<!--<th>Status</th>-->
											</tr>
										</thead>
										<tbody>
											<c:if test="${not empty listappointment }"></c:if>
											<c:forEach var="list" items="${listappointment}">
												<tr>
													<td>${list.firstName} ${list.lastName}</td>
													<td>${list.pFirstName} ${list.pLastName}</td>
													<td>${list.sFromDate}</td>
													<td>${list.sFromTime}</td>

												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!--/ meta -->
						</div>
					</div>
					<!-- end row -->

				</div>
				<!-- container -->

			</div>
			<!-- content -->

			<footer class="footer text-right">
				<div class="pull-left">&copy; Copyright 2016 Que-Ehr inc. All
					rights are reserved</div>
				<div class="pull-right">
					Designed by <a href="">DreamSoft4u</a>
				</div>
			</footer>

		</div>


		<!-- ============================================================== -->
		<!-- End Right content here -->
		<!-- ============================================================== -->


		<!-- Right Sidebar -->
		<div class="side-bar right-bar">
			<a href="javascript:void(0);" class="right-bar-toggle"> <i
				class="zmdi zmdi-close-circle-o"></i>
			</a>
			<h4 class="">Notifications</h4>
			<div class="notification-list nicescroll">
				<ul class="list-group list-no-border user-list">
					<li class="list-group-item"><a href="#" class="user-list-item">
							<div class="avatar">
								<img src="assets/images/users/avatar-2.jpg" alt="">
							</div>
							<div class="user-desc">
								<span class="name">Michael Zenaty</span> <span class="desc">There
									are new settings available</span> <span class="time">2 hours
									ago</span>
							</div>
					</a></li>
					<li class="list-group-item"><a href="#" class="user-list-item">
							<div class="icon bg-info">
								<i class="zmdi zmdi-account"></i>
							</div>
							<div class="user-desc">
								<span class="name">New Signup</span> <span class="desc">There
									are new settings available</span> <span class="time">5 hours
									ago</span>
							</div>
					</a></li>
					<li class="list-group-item"><a href="#" class="user-list-item">
							<div class="icon bg-pink">
								<i class="zmdi zmdi-comment"></i>
							</div>
							<div class="user-desc">
								<span class="name">New Message received</span> <span
									class="desc">There are new settings available</span> <span
									class="time">1 day ago</span>
							</div>
					</a></li>
					<li class="list-group-item active"><a href="#"
						class="user-list-item">
							<div class="avatar">
								<img src="assets/images/users/avatar-3.jpg" alt="">
							</div>
							<div class="user-desc">
								<span class="name">James Anderson</span> <span class="desc">There
									are new settings available</span> <span class="time">2 days ago</span>
							</div>
					</a></li>
					<li class="list-group-item active"><a href="#"
						class="user-list-item">
							<div class="icon bg-warning">
								<i class="zmdi zmdi-settings"></i>
							</div>
							<div class="user-desc">
								<span class="name">Settings</span> <span class="desc">There
									are new settings available</span> <span class="time">1 day ago</span>
							</div>
					</a></li>

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
      <!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
        <script src="assets/js/main.js"></script>  

	<!-- Dashboard init -->
	<script src="assets/pages/jquery.dashboard.js"></script>
	<script src="assets/js/jQuery-UI-v1.12.0.js"></script>

	<!-- Datatables-->
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>
	<!-- App js -->
	<script src="assets/js/jquery.core.js"></script>
	<script src="assets/js/jquery.app.js"></script>
	<script src="assets/plugins/parsleyjs/dist/parsley.min.js"></script>
	<script src="assets/js/ajaxCalling.js"></script>
	<script>
		jQuery("document").ready(function($) {
			$("#recappreportsearch").parsley();
		});

		$(function() {
			var dateFormat = "mm/dd/yy", from = $("#fromDate").datepicker({
				defaultDate : '+1w',
				changeYear : true,
				changeMonth : true,
				maxDate: "+0M +0D"
			// numberOfMonths: 1,
			// minDate: 0, 
			
			}).on("change", function() {
				to.datepicker("option", "minDate", getDate(this));
			}), to = $("#toDate").datepicker({
				defaultDate : '+1w',
				//minDate: 0,
				changeYear : true,
				changeMonth : true,
				maxDate: "+0M +0D"
			// numberOfMonths: 1,
			
			}).on("change", function() {
				from.datepicker("option", "maxDate", getDate(this));
			});

			function getDate(element) {
				var date;
				try {
					date = $.datepicker.parseDate(dateFormat, element.value);
				} catch (error) {
					date = null;
				}

				return date;
			}
		});
	</script>
	<script>
		$(document).ready(function() {
			var table = $('#recappointmentlist').DataTable({
				/* "order": [[ 0, "desc" ]], */
				"columns" : [ null, null, null, null

				]

			}).order([ 0, 'asc' ])
		});

		// Appointment Report Download 
		/**
		*	Method For Download Appointent Report
		*/
		$(".downloadappointment").click(function() {
			console.info("download file.");
			appointmentDownload();
		});

		/**
		*	Method For Print Appointent Report
		*/
		$(".printappointment").click(function() {
			console.info("print file");
			appointmentDownload();
		});

		/**
		*	Method Used For Generic Operation of Appointment Report.
		*/
		var appointmentDownload = function() {
			var method = "POST";
			var hostUrl = "appointmentreport.do";//hosturl.appointmentReport;
			var data = "";
			
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

		// End Appointment Report
	</script>
</body>
</html>
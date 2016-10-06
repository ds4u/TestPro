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

<title>Edit Patient</title>

<!--Morris Chart CSS -->
<link rel="stylesheet" href="assets/plugins/morris/morris.css">

<!-- DataTables -->
<link href="assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />

<!-- App css -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
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
				<a href="index.html" class="logo"><span>Que-<span>ehr</span></span><i
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
						<img id="imgPath" src="assets/images/ina.jpg" alt="user-img"
							class="img-circle img-thumbnail img-responsive">
						<!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
					</div>
					<h5 class="user-name">${ sessionScope.user.firstName} ${ sessionScope.user.lastName}
					</h5>
					<ul class="list-inline">
						<li><a href="change-pw.html"> <i
								class="zmdi zmdi-settings"></i>
						</a></li>

						<li><a href="login.do" class="text-custom"> <i
								class="zmdi zmdi-power"></i>
						</a></li>
					</ul>
				</div>
				<!-- End User -->

				<!--- Sidemenu -->
				<div id="sidebar-menu">
					<ul>
						<li><a href="labdashboard.do" class="waves-effect "><i
								class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
						</li>

						<li><a href="labtodo.do" class="waves-effect"><i
								class="fa fa-list-alt"></i> <span> To Do </span> </a></li>

						<li><a href="labscheduling.do" class="waves-effect"><i
								class="fa fa-calendar-plus-o"></i> <span> Scheduling </span> </a></li>
						<li><a href="labappointment.do" class="waves-effect"><i
								class="fa fa-calendar"></i> <span>Appointment </span></a></li>
						<li><a href="labpatient.do" class="waves-effect" active><i
								class="fa fa-user-md"></i> <span>Patient </span></a></li>

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
							<h2>Lab Patients</h2>
						</div>
					</div>
					<!-- end row -->

					<div class="row">
						<div class="col-sm-12">
							<div class="bg-picture card-box2">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="selectedTab basicinfo active"><a href="#one"
										aria-controls="one" role="tab" data-toggle="tab">Basic
											Info</a></li>
									<li role="presentation" class="selectedTab"><a href="#two" aria-controls="two"
										role="tab" data-toggle="tab">Guarantor</a></li>
									<!--<li role="presentation"><a href="#seven" aria-controls="seven" role="tab" data-toggle="tab">Health Details</a></li>-->
									<li role="presentation" class="selectedTab"><a href="#three"
										aria-controls="three" role="tab" data-toggle="tab">Open
											Task</a></li>
									<li role="presentation" class="selectedTab"><a href="#five"
										aria-controls="five" role="tab" data-toggle="tab">Documents</a></li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active box one" id="one">
										<form>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>User Name</label> <input type="text" name="name"
															value="${user.userName}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Email</label> <input type="text" name="name"
															value="${user.emailAddress}" class="form-control"
															disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Date of Birth</label> <input type="text"
															name="name" value="${user.dateOfBirth}"
															class="form-control" disabled />
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>First Name</label> <input type="text" name="name"
															value="${user.firstName}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Middle Name</label> <input type="text" name="name"
															value="${user.middleName}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Last Name</label> <input type="text" name="name"
															value="${user.lastName}" class="form-control" disabled />
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Gender</label> <input type="text" name="name"
															value="${gender}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Marital Status</label> <input type="text"
															name="name" value="${maritalStatus}" class="form-control"
															disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Mobile Phone</label> <input type="text" name="name"
															value="${user.mobileNumber}" class="form-control"
															disabled />
													</div>
												</div>

											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Home Phone</label> <input type="text" name="name"
															value="${user.homeNumber}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 1</label> <input type="text"
															name="name" value="${address.addressLineOne}"
															class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 2</label> <input type="text"
															name="name" value="${address.addressLineTwo}"
															class="form-control" disabled />
													</div>
												</div>

											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>City</label> <input type="text" name="name"
															value="${city}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Zip Code</label> <input type="text" name="name"
															value="${address.zipcode}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>State</label> <input type="text" name="name"
															value="${state}" placeholder="test State"
															class="form-control" disabled />
													</div>
												</div>

											</div>

											<h3>Employment Details</h3>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Employment Status</label> <input type="text"
															name="name" value="${employementStatus}"
															class="form-control" disabled="true" />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 1</label> <input name="name"
															value="${address2.getAddressLineOne()}"
															class="form-control" disabled="true" />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 2</label> <input type="text"
															name="name" value="${address2.getAddressLineOne()}"
															class="form-control" disabled="true" />
													</div>
												</div>

											</div>

											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>City</label> <input type="text" name="name"
															value="${city2}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>State</label> <input type="text" name="name"
															value="${state2}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Zip Code</label> <input type="text" name="name"
															value="${address2.getZipcode()}" class="form-control"
															disabled />
													</div>
												</div>

											</div>
											<h3>Insurance Details</h3>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Payer Name</label> <input type="text" name="name"
															value="${insuranceDetail.getPayerName()}"
															class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Insurance Type</label> <input type="text"
															name="name" value="${insuranceDetail.getInsuranceType()}"
															class="form-control" disabled />
													</div>
												</div>
											</div>
										</form>
									</div>
									<div role="tabpanel" class="tab-pane box two" id="two">
										<div class="row">
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Email</label> <input type="text" name="name"
															value="${gurantor.userName}" class="form-control"
															disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Date of Birth</label> <input type="text"
															name="name" value="${gurantor.dateOfBirth}"
															class="form-control" disabled />
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>First Name</label> <input type="text" name="name"
															value="${gurantor.firstName}" class="form-control"
															disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Middle Name</label> <input type="text" name="name"
															value="${gurantor.middleName}" class="form-control"
															disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Last Name</label> <input type="text" name="name"
															value="${gurantor.lastName}" class="form-control"
															disabled />
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Gender</label> <input type="text" name="name"
															value="${gurantorgender}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Marital Status</label> <input type="text"
															name="name" value="${gurantormaritalStatus}"
															class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Mobile Phone</label> <input type="text" name="name"
															value="${gurantor.mobileNumber}" class="form-control"
															disabled />
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Home Phone</label> <input type="text" name="name"
															value="${gurantor.homeNumber}" class="form-control"
															disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 1</label> <input type="text"
															name="name" value="${gurantoraddress1.addressLineOne}"
															class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 2</label> <input type="text"
															name="name" value="${gurantoraddress1.addressLineTwo}"
															class="form-control" disabled />
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>City</label> <input type="text" name="name"
															value="${gurantorcity1}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Zip Code</label> <input type="text" name="name"
															value="${gurantoraddress1.zipcode}" class="form-control"
															disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>State</label> <input type="text" name="name"
															value="${gurantorstate1}" class="form-control" disabled />
													</div>
												</div>
											</div>
											<h3>Employment Details</h3>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Employment Status</label> <input type="text"
															name="name" value="${gurantoremployementStatus}"
															class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Office Address Line 1</label> <input type="text"
															name="name" value="${gurantoraddress2.addressLineOne}"
															class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Office Address Line 2</label> <input type="text"
															name="name" value="${gurantoraddress2.addressLineTwo}"
															class="form-control" disabled />
													</div>
												</div>

											</div>

											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>City</label> <input type="text" name="name"
															value="${gurantorcity2}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>State</label> <input type="text" name="name"
															value="${gurantorstate2}" class="form-control" disabled />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Zip Code</label> <input type="text" name="name"
															value="${gurantoraddress2.zipcode}" class="form-control"
															disabled />
													</div>
												</div>

											</div>
										</div>

									</div>
									<!--<div role="tabpanel" class="tab-pane" id="seven">
                                            <h3>Vitals</h3>
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Weight (kg)</th>
                                                            <th>Height (cms)</th>
                                                            <th>Body Temperature (deg. F)</th>
                                                            <th>Heart Rate</th>
                                                            <th>Blood Group</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>80</td>
                                                            <td>175</td>
                                                            <td>99 </td>
                                                            <td>75</td>
                                                            <td>B+</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <h3>Allergies</h3>
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Allergy Name</th>
                                                            <th>Date</th>
                                                            <th>Reaction</th>
                                                            <th>Status</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <h3>Chronic Illness</h3>
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Illness</th>
                                                            <th>Date</th>
                                                            <th>Reaction</th>
                                                            <th>Status</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>-->
									<div role="tabpanel" class="tab-pane box three" id="three">
										<div class="table-responsive">

											<table class="table table-bordered" id="openTaskTable">
												<thead>
													<tr>
														<th>Appointment</th>
														<th>To Do Item</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<c:if test="${not empty openTaskList}">
														<c:forEach var="task" items="${openTaskList}"
															varStatus="theCount">
															<tr>
																<td>${task.sCreatedOn}${task.sFromTime}</td>
																<td>Upload Report for This appointment</td>
																<td><a class="opentask" data-appid=${task.id
																	} href="#"><i class="fa fa-upload" aria-hidden="true"></i></a></td>
															</tr>
														</c:forEach>
													</c:if>

												</tbody>
											</table>

										</div>
									</div>

									<div role="tabpanel" class="tab-pane box" id="five">
										<div class="table-responsive">
											<table id="table-1" class="table table-bordered">
												<thead>
													<tr>
														<th class="hidden">id</th>
														<th>Department Name</th>
														<th>Report Name</th>
														<th>Date</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody id="showlist">

													
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
				<ul class="list-group list-no-border user-list" id="NotificationList">
					<!-- <li class="list-group-item"><a href="#" class="user-list-item">
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
 -->
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
	
		<!-- Datatables-->
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>

	<!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
	<script src="assets/js/main.js"></script>

	<script src="assets/js/ajaxCalling.js"></script>
	<script src="assets/js/labpanel.js"></script>

	<!-- Dashboard init -->
	<script src="assets/pages/jquery.dashboard.js"></script>

	<!-- App js -->
	<script src="assets/js/jquery.core.js"></script>
	<script src="assets/js/jquery.app.js"></script>

	<script src="assets/js/upload.js"></script>

	<script>
		$("#imgPath").attr('src', $.cookie("imagePath"));

		$(".opentask").click(function() {
			var appid = $(this).data("appid");
			
			console.info(appid);
			
			$.cookie("appid",appid);

			uploadDoc('lab');

		});
		
		setDownloadFile(userType.lab);
		
	/* 	$(document).ready(function() {
			var cookies = document.cookie.split(';');
			
			
			
			for(var i=0;i<cookies.length;i++){
				name = cookies[i].split('=')[0];
		          value = cookies[i].split('=')[1];
				alert("++++"+name+"+++");
				if($.trim(name)=="patientIdopentask"){
					alert("inside phase 1");
					if(value!=null){
						alert("inside phase 2");
						$(".opentask").addClass("active");
						$(".basicinfo").removeClass("active");
						$('.box').hide();
						$('.three').show();
						
						//document.cookie = '=null; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
						alert("now the value is"+value);
						
					}
				}
			}
			
		});
		$(".selectedTab").click(function() {
			$("#patientmessage").hide();
			$("#guarantormessage").hide();
			$("#usernameError").hide();
		}); */
	</script>

</body>
</html>
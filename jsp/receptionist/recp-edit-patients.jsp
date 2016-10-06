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

<title>Edit Patient</title>

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
<!-- DataTables -->
<link href="assets/plugins/datatables/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css" />
<script src="assets/js/modernizr.min.js"></script>

<!--For datepicker  -->
<link href="assets/css/jquery-ui-v1.12.0.css" rel="stylesheet"
	type="text/css" />


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

						<li><a href="recplistpatient.do" class="waves-effect active"><i
								class="fa fa-wheelchair"></i> <span> Patients </span> </a></li>

						<li><a href="recscheduling.do" class="waves-effect"><i
								class="fa fa-calendar"></i> <span> Scheduling </span></a></li>

						<li><a href="recappreport.do" class="waves-effect"><i
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
							<h2>Patient Details</h2>
						</div>
				 <% String msg=session.getAttribute("patientmessageupdate")!=null?session.getAttribute("patientmessageupdate").toString():"";
				
                                              if(!msg.equals(""))
                                              {
                                           %>
                                           <div class="col-sm-12">
                                                <div class="alert alert-success">
                                                        <strong>Success!</strong> <%= msg %>
                                                </div>
                                              </div>
                                                <%
                                              
                                                session.setAttribute("patientmessageupdate", null);
                                              }
                                              %>    
                                              
                                <% String msg1=session.getAttribute("guarantormessage")!=null?session.getAttribute("guarantormessage").toString():"";
				
                                              if(!msg1.equals(""))
                                              {
                                           %>
                                           <div class="col-sm-12">
                                                <div class="alert alert-success">
                                                        <strong>Success!</strong> <%= msg1 %>
                                                </div>
                                                </div>
                                                <%
                                              
                                                session.setAttribute("guarantormessage", null);
                                              }
                                              %>  
                                <% String msg2=session.getAttribute("usernameError")!=null?session.getAttribute("usernameError").toString():"";
				
                                              if(!msg2.equals(""))
                                              {
                                           %>
                                           <div class="col-sm-12">
                                                <div class="alert alert-danger">
                                                        <strong>Error!</strong> <%= msg2 %>
                                                </div>
                                                </div>
                                                <%
                                              
                                                session.setAttribute("usernameError", null);
                                              }
                                              %>  
                                 <% String msg3=session.getAttribute("emailError")!=null?session.getAttribute("emailError").toString():"";
				
                                              if(!msg3.equals(""))
                                              {
                                           %>
                                           <div class="col-sm-12">
                                                <div class="alert alert-danger">
                                                        <strong>Error!</strong> <%= msg3 %>
                                                </div>
                                                </div>
                                                <%
                                              
                                                session.setAttribute("emailError", null);
                                              }
                                              %>           
						<div class="col-sm-12">
							<div class="bg-picture card-box2">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" data-tab="tab1"
										class="tab1 selectedTab active"><a href="#one"
										aria-controls="one" role="tab" data-toggle="tab">Basic
											Info</a></li>
									<li role="presentation" data-tab="tab2"
										class="tab2 selectedTab"><a href="#two"
										aria-controls="two" role="tab" data-toggle="tab">Guarantor</a></li>
									<li role="presentation" data-tab="tab4"
										class="tab4 selectedTab"><a href="#four"
										aria-controls="four" role="tab" data-toggle="tab">Notes</a></li>
									<li role="presentation" data-tab="tab5"
										class="tab5 selectedTab"><a href="#five"
										aria-controls="five" role="tab" data-toggle="tab">Documents</a></li>
									<li role="presentation" data-tab="tab6"
										class="tab6 selectedTab"><a href="#six"
										aria-controls="six" role="tab" data-toggle="tab">Clinician</a></li>
									<li role="presentation" data-tab="tab8"
										class="tab8 selectedTab"><a href="#eight"
										aria-controls="eight" role="tab" data-toggle="tab">Billing</a></li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									
										<div role="tabpanel" class="tab-pane active" id="one">
											<form data-parsley-trigger="input" data-parsley-focus="first" method="POST" action="recpupdatepatient.do" id="patientForm">
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>User Name</label>
														<input type="text"  id="username" visible="false"
															value="${username }" data-parsley-trigger="focusout"
															data-parsley-length="[2, 20]"
															data-parsley-type="alphanum" placeholder="Enter Username"
															class="form-control" name="userName" disabled="disabled" />
															<input type="hidden" name="edittype" value="patient" />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Email</label>
														<input data-parsley-pattern="^[_A-Za-z0-9-\+]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]*(\.[A-Za-z]{2,})$"
															data-parsley-length="[2, 45]"
															  value="${patient.emailAddress }"  placeholder="Enter Email" class="form-control" data-parsley-trigger="focusout" name="email"/>
														
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Date of Birth</label>
														<input  id="datepicker" type="text"
															name="name" value="${dob}"
															data-parsley-trigger="focusout" placeholder="MM/DD/YYYY"
															Parsley-Error-Message="You Must Input A Birth Date"
															class="form-control" required="required" disabled="disabled"/>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>First Name</label>
														<input data-parsley-pattern="^[a-zA-Z]+$"
															data-parsley-length="[2, 20]"
															data-parsley-message="Enter valid Firstname"
															 id="firstName"
															data-parsley-trigger="focusout"
															value="${patient.firstName }"
															placeholder="Enter First Name" class="form-control"
															required="required" disabled="disabled"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Middle Name</label>
														<input  type="text" name="name"
															value="${patient.middleName }"
															placeholder="Enter Middle Name" class="form-control" disabled="disabled"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Last Name</label>
														<input data-parsley-pattern="^[a-zA-Z]+$"
															data-parsley-message="Enter valid Lastname"
															data-parsley-type="alphanum" 
															id="lastName" value="${patient.lastName }"
															data-parsley-length="[2, 20]"
															data-parsley-trigger="focusout"
															placeholder="Enter Last Name" class="form-control"
															required="required" disabled="disabled"/>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Gender</label>
														<select class="form-control" 
															placeholder="Select Gender"
															data-parsley-trigger="focusout"
															data-parsley-error-message="Select Gender"
															required="required" disabled="disabled">
															<option value="${patient.gender}">${gender}</option>
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Marital Status</label>
														<select class="form-control"
															data-parsley-trigger="focusout"
															data-parsley-error-message="Select Marital Status"
															required="required" name="maritalStatus">
															
															
															<c:choose>
														    <c:when test="${patient.maritalStatus==1}">
														       <option value="1" selected="selected">Single</option>
   															<option value="2">Married</option>
															<option value="3">Divorced</option>
															<option value="4">Widow</option>
														    </c:when>
														    <c:when test="${patient.maritalStatus == 2}">
														    <option value="2" selected="selected">Married</option>
   															<option value="1">Single</option>
															<option value="3">Divorced</option>
															<option value="4">Widow</option>
														    </c:when>
														     <c:when test="${patient.maritalStatus == 3}">
														    <option value="3" selected="selected">Divorced</option>
   															<option value="1">Single</option>
															<option value="2">Married</option>
															<option value="4">Widow</option>
															
														    </c:when>
														     <c:when test="${patient.maritalStatus == 4}">
														    <option value="4" selected="selected">Widow</option>
   															<option value="1">Single</option>
															<option value="2">Married</option>
															<option value="3">Divorced</option>
															
														    </c:when>
														    
														    <c:otherwise>
														     <option value="1">Single</option>
															<option value="2">Married</option>
															<option value="3">Divorced</option>
															<option value="4">Widow</option>
														    </c:otherwise>
														</c:choose>
															
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Mobile Phone</label>
														<input type="text" 
															id="mobileNumber" value="${patient.mobileNumber }"
															placeholder="Enter Mobile Phone"
															data-parsley-length="[10, 14]" data-parsley-type="digits"
															class="form-control" required="required"
															data-parsley-trigger="focusout" name="mobilePhone"/>
													</div>
												</div>

											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Home Phone</label>
														<input type="text" 
															data-parsley-trigger="focusout"
															value="${patient.homeNumber}"
															data-parsley-length="[10, 14]" data-parsley-type="digits"
															placeholder="Enter Home Phone" class="form-control" name="homePhone"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 1</label>
														<input type="text" 
															id="addressLineOne" value="${addressLineOne }"
															data-parsley-length="[2, 45]"
															data-parsley-trigger="focusout"
															placeholder="Enter Address 1" class="form-control"
															required="required" name="addressLine1"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 2</label>
														<input maxlength="45" type="text"
															 value="${addressLineTwo }"
															placeholder="Enter Address 2" class="form-control" name="addressLine2"/>
													</div>
												</div>

											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>State</label>
														<select type="text"  value=""
															placeholder="Enter state" class="form-control"
															id="statelist" parsley-trigger="change"
															data-parsley-error-message="Select State"
															 name="state">
															 <c:forEach items="${statelist}" var="item">
															 <c:choose>
															 <c:when test="${stateid==item.id}">
															 <option value="${item.id}" selected="selected">${item.name}</option>
															 </c:when>
															 <c:otherwise>
															 <option value="${item.id}">${item.name}</option>
															 </c:otherwise>
															 </c:choose>
															 </c:forEach>
															
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group" id="cityDiv">
														<label>City</label>
														<select type="text"  value=""
															placeholder="Enter city" class="form-control"
															id="citylist" parsley-trigger="change"
															data-parsley-error-message="Select City"
															 name="city">
															 
															 <c:forEach items="${citylist}" var="item">
															 <c:choose>
															 <c:when test="${cityid==item.id}">
															 <option value="${item.id}" selected="selected">${item.name}</option>
															 </c:when>
															 <c:otherwise>
															 <option value="${item.id}">${item.name}</option>
															 </c:otherwise>
															 </c:choose>
															 </c:forEach>
															 
															
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Zip Code</label>
														<input path="homeZipcode" id="zipcode"
															value="${zipcode }" data-parsley-type="alphanum"
															data-parsley-length="[6, 8]" placeholder="Enter ZipCode"
															class="form-control" required="required"
															data-parsley-trigger="focusout" name="zipcode"/>
													</div>
												</div>

											</div>

											<h3>Employment Details</h3>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Employment Status </label>
														<select type="text" path="EmployementStatus" value=""
															placeholder="Enter Employment Status"
															class="form-control" id="employmentstatus"
															parsley-trigger="change"
															data-parsley-error-message="Select Employment Status" name="employementStatus">
  															<%-- <c:if test="${employmentstatusid == 1}">
  															<form:option value="${employmentstatusid}">${employmentstatus}</form:option>
   															<form:option value="2" label="Bussiness" />	
														  </c:if> --%>
														  <c:choose>
														    <c:when test="${employmentstatusid == 1}">
														       <option value="${employmentstatusid}">${employmentstatus}</option>
   															<option value="2">Bussiness</option>	
														    </c:when>
														    <c:when test="${employmentstatusid == 2}">
														    <option value="${employmentstatusid}">${employmentstatus}</option>
   															<option value="1">Salaried</option>	
														    </c:when>
														    <c:otherwise>
														     <option value="">-Select Employment Status-</option>
														       <option value="1">Salaried</option>	
														       <option value="2">Bussiness</option>
														    </c:otherwise>
														</c:choose>
														
															
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 1</label>
														<input type="text" 
															id="patientaddressLineOne"
															value="${officeaddress.addressLineOne}"
															data-parsley-length="[2, 45]"
															data-parsley-trigger="focusout"
															placeholder="Enter Address 1" class="form-control" name="empAddressLine1" />
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 2</label>
														<input maxlength="45" type="text"
															
															value="${officeaddress.addressLineTwo}"
															placeholder="Enter Address 2" class="form-control" name="empAddressLine2" />
													</div>
												</div>

											</div>

											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>State</label>
														<select type="text" value=""
															placeholder="Enter state" class="form-control"
															id="pofficestatelist" parsley-trigger="change"
															data-parsley-error-message="Select State" name="empState"
															>
															<c:if test="${not empty officestateid}">
															 <c:forEach items="${statelist}" var="item">
															 <c:choose>
															 <c:when test="${officestateid==item.id}">
															 <option value="${item.id}" selected="selected">${item.name}</option>
															 </c:when>
															 <c:otherwise>
															 <option value="${item.id}">${item.name}</option>
															 </c:otherwise>
															 </c:choose>
															 </c:forEach>
															</c:if>
															<c:if test="${empty officestateid}">
															<option value="">Select</option>
															<c:forEach items="${statelist}" var="item">
															
															 <option value="${item.id}">${item.name}</option>
															 
															 </c:forEach>
															</c:if>
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group" id="pofficecityDiv">
														<label>City</label>
														<select type="text" value=""
															placeholder="Enter city" class="form-control"
															id="citylist" parsley-trigger="change"
															data-parsley-error-message="Select City" name="empCity"
															>
															
															<c:forEach items="${empcitylist}" var="item">
															 <c:choose>
															 <c:when test="${officecityid==item.id}">
															 <option value="${item.id}" selected="selected">${item.name}</option>
															 </c:when>
															 <c:otherwise>
															 <option value="${item.id}">${item.name}</option>
															 </c:otherwise>
															 </c:choose>
															 </c:forEach>
															
															
														</select>
													</div>
												</div>

												<div class="col-sm-4">
													<div class="form-group">
														<label>Zip Code</label>
														<input  id="pofficezipcode"
															value="${officeaddress.zipcode }"
															data-parsley-type="alphanum" data-parsley-length="[6, 8]"
															placeholder="Enter ZipCode" class="form-control"
															data-parsley-trigger="focusout" name="empZipcode"/>
													</div>
												</div>

											</div>
											<h3>Insurance Details</h3>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Payer Name</label>
														<input data-parsley-pattern="^[a-zA-Z ]+$"
															data-parsley-message="Enter valid Payer Name"
															id="payerName" value="${payername }"
															data-parsley-length="[2, 20]"
															data-parsley-trigger="focusout"
															placeholder="Enter Payer Name" class="form-control" name="payerName"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Insurance Type</label>
														<input data-parsley-pattern="^[a-zA-Z ]+$"
															data-parsley-message="Enter valid Insurance Type"
															id="insuranceType" value="${insurancetype }"
															data-parsley-length="[2, 20]"
															data-parsley-trigger="focusout"
															placeholder="Enter Insurance Type" class="form-control" name="insuranceType"/>
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-sm-12 text-right">
													<button type="submit" class="btn btn-primary">Save</button>
													<a href="#" class="btn btn-danger">Cancel</a>
												</div>
											</div>
									</form>
										</div>
										
										<div role="tabpanel" class="tab-pane" id="two">
										<form data-parsley-trigger="input" data-parsley-focus="first" method="POST" action="recpupdateguarantor.do" id="gurForm" >
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Email</label>
														<input
															data-parsley-pattern="^[_A-Za-z0-9-\+]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]*(\.[A-Za-z]{2,})$"
															data-parsley-length="[2, 45]"
															value="${guarantoremail }" 
															placeholder="Enter Email" class="form-control"
															data-parsley-trigger="focusout" name="email"/>
															<input type="hidden" name="edittype" value="guarantor"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Date of Birth</label>
														<input 
															id="guarantorDateofbirth" type="text" name="name"
															value="${guarantordob}" placeholder="MM/DD/YYYY"
															data-parsley-trigger="focusout" class="form-control"
															required="required" disabled="disabled"/>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>First Name</label>
														<input data-parsley-pattern="^[a-zA-Z]+$"
															data-parsley-length="[2, 20]"
															data-parsley-message="Enter valid Firstname"
															 id="firstName"
															data-parsley-trigger="focusout"
															value="${guarantor.firstName }"
															placeholder="Enter First Name" class="form-control"
															required="required" disabled="disabled"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Middle Name</label>
														<input type="text"
															name="name" value="${guarantor.middleName }"
															placeholder="Enter Middle Name" class="form-control" disabled="disabled"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Last Name</label>
														<input data-parsley-pattern="^[a-zA-Z]+$"
															data-parsley-message="Enter valid Lastname"
															data-parsley-type="alphanum" path="guarantorDTO.lastName"
															id="lastName" value="${guarantor.lastName }"
															data-parsley-length="[2, 20]"
															data-parsley-trigger="focusout"
															placeholder="Enter Last Name" class="form-control"
															required="required" disabled="disabled"/>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Gender</label>
														<select class="form-control"
															
															data-parsley-trigger="focusout"
															data-parsley-error-message="Select Gender"
															required="required" disabled="disabled">
															<option value="${guarantor.gender}">${guarantorgender}</option>
															<option value="1" label="Male" />
															<option value="2" label="Female" />
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Marital Status</label>
														<select class="form-control"
															
															data-parsley-trigger="focusout"
															data-parsley-error-message="Select Marital Status"
															required="required" name="maritalStatus">
															
															<c:choose>
														    <c:when test="${guarantor.maritalStatus==1}">
														       <option value="1" selected="selected">Single</option>
   															<option value="2">Married</option>
															<option value="3">Divorced</option>
															<option value="4">Widow</option>
														    </c:when>
														    <c:when test="${guarantor.maritalStatus == 2}">
														    <option value="2" selected="selected">Married</option>
   															<option value="1">Single</option>
															<option value="3">Divorced</option>
															<option value="4">Widow</option>
														    </c:when>
														     <c:when test="${guarantor.maritalStatus == 3}">
														    <option value="3" selected="selected">Divorced</option>
   															<option value="1">Single</option>
															<option value="2">Married</option>
															<option value="4">Widow</option>
															
														    </c:when>
														     <c:when test="${guarantor.maritalStatus == 4}">
														    <option value="4" selected="selected">Widow</option>
   															<option value="1">Single</option>
															<option value="2">Married</option>
															<option value="3">Divorced</option>
															
														    </c:when>
														    
														    <c:otherwise>
														     <option value="1">Single</option>
															<option value="2">Married</option>
															<option value="3">Divorced</option>
															<option value="4">Widow</option>
														    </c:otherwise>
														</c:choose>
															
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Mobile Phone</label>
														<input type="text" 
															id="mobileNumber" value="${guarantor.mobileNumber }"
															placeholder="Enter Mobile Phone"
															data-parsley-length="[10, 14]" data-parsley-type="digits"
															class="form-control" required="required"
															data-parsley-trigger="focusout" name="mobilePhone"/>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Home Phone</label>
														<input type="text"
															data-parsley-trigger="focusout"
															value="${guarantor.homeNumber}"
															data-parsley-length="[10, 14]" data-parsley-type="digits"
															placeholder="Enter Home Phone" class="form-control" name="homePhone"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 1</label>
														<input type="text"
															
															id="addressLineOne" value="${guarantoraddressLineOne}"
															data-parsley-length="[2, 45]"
															data-parsley-trigger="focusout"
															placeholder="Enter Address 1" class="form-control"
															required="required" name="addressLine1"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 2</label>
														<input maxlength="45" type="text"
															
															value="${guarantoraddressLineTwo}"
															placeholder="Enter Address 2" class="form-control" name="addressLine2"/>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>State</label>
														<select type="text" 
															value="" placeholder="Enter State" class="form-control"
															id="guarantorstatelist" parsley-trigger="change"
															data-parsley-error-message="Select State" name="state"
															>
															<c:if test="${not empty guarantorstateid}">
															 <c:forEach items="${statelist}" var="item">
															 <c:choose>
															 <c:when test="${guarantorstateid==item.id}">
															 <option value="${item.id}" selected="selected">${item.name}</option>
															 </c:when>
															 <c:otherwise>
															 <option value="${item.id}">${item.name}</option>
															 </c:otherwise>
															 </c:choose>
															 </c:forEach>
															</c:if>
															<c:if test="${empty guarantorstateid}">
															<option value="">Select</option>
															<c:forEach items="${statelist}" var="item">
															
															 <option value="${item.id}">${item.name}</option>
															 
															 </c:forEach>
															</c:if>
															
															
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group" id="guarantorcityDiv">
														<label>City</label>
														<select path="guarantorDTO.homeCityID"
															class="form-control" id="city" parsley-trigger="change"
															data-parsley-error-message="Select City" name="city">
															<c:forEach items="${gurnatorcitylist}" var="item">
															 <c:choose>
															 <c:when test="${guarantorcityid==item.id}">
															 <option value="${item.id}" selected="selected">${item.name}</option>
															 </c:when>
															 <c:otherwise>
															 <option value="${item.id}">${item.name}</option>
															 </c:otherwise>
															 </c:choose>
															 </c:forEach>
															
															
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Zip Code</label>
														<input  id="zipcode"
															value="${guarantorzipcode }" data-parsley-type="alphanum"
															data-parsley-length="[6, 8]" placeholder="Enter ZipCode"
															class="form-control" required="required"
															data-parsley-trigger="focusout" name="zipcode"/>
													</div>
												</div>

											</div>
											<h3>Employment Details</h3>
											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>Employment Status</label>
														<select type="text"
															value=""
															placeholder="Enter Employment Status"
															class="form-control" id="guarantoremploymentstatus"
															parsley-trigger="change"
															data-parsley-error-message="Select Employment Status" name="employementStatus">
															  <c:choose>
														    <c:when test="${guarantoremploymentstatusid == 1}">
														       <option value="${guarantoremploymentstatusid}">${guarantoremploymentstatus}</option>
   															<option value="2" >Bussiness</option>	
														    </c:when>
														    <c:when test="${guarantoremploymentstatusid == 2}">
   															<option value="${guarantoremploymentstatusid}">${guarantoremploymentstatus}</option>
   															<option value="1" >Salaried	</option>
														    </c:when>
														    <c:otherwise>
														     <option value="">-Select Employment Status-</option>
														       <option value="1" >Salaried	</option>
														       <option value="2">Bussiness </option>
														    </c:otherwise>
														</c:choose>
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 1</label>
														<input type="text"
															
															id="addressLineOne"
															value="${guarantorofficeaddress.addressLineOne}"
															data-parsley-length="[2, 45]"
															data-parsley-trigger="focusout"
															placeholder="Enter Address 1" class="form-control" name="empAddressLine1"/>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group">
														<label>Address Line 2</label>
														<input maxlength="45" type="text"
															value="${guarantorofficeaddress.addressLineTwo}"
															placeholder="Enter Address 2" class="form-control" name="empAddressLine2"/>
													</div>
												</div>

											</div>

											<div class="row">
												<div class="col-sm-4">
													<div class="form-group">
														<label>State</label>
														<select type="text" path="guarantorDTO.officeStateID"
															value="" placeholder="Enter State" class="form-control"
															id="gofficestatelist" parsley-trigger="change"
															data-parsley-error-message="Select State" name="empState">
															
															<c:if test="${not empty guarantorofficestateid}">
															 <c:forEach items="${statelist}" var="item">
															 <c:choose>
															 <c:when test="${guarantorofficestateid==item.id}">
															 <option value="${item.id}" selected="selected">${item.name}</option>
															 </c:when>
															 <c:otherwise>
															 <option value="${item.id}">${item.name}</option>
															 </c:otherwise>
															 </c:choose>
															 </c:forEach>
															</c:if>
															<c:if test="${empty guarantorofficestateid}">
															<option value="">Select</option>
															<c:forEach items="${statelist}" var="item">
															
															 <option value="${item.id}">${item.name}</option>
															 
															 </c:forEach>
															</c:if>
															
														</select>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group" id="gofficecityDiv">
														<label>City</label>
														<select 
															class='form-control' id="city" parsley-trigger="change"
															data-parsley-error-message="Select City" name="empCity">
															<c:forEach items="${gurnatorempcitylist}" var="item">
															 <c:choose>
															 <c:when test="${guarantorofficecityid==item.id}">
															 <option value="${item.id}" selected="selected">${item.name}</option>
															 </c:when>
															 <c:otherwise>
															 <option value="${item.id}">${item.name}</option>
															 </c:otherwise>
															 </c:choose>
															 </c:forEach>
															
															
														</select>
													</div>
												</div>

												<div class="col-sm-4">
													<div class="form-group">
														<label>Zip Code</label>
														<input id="zipcode"
															value="${guarantorofficeaddress.zipcode }"
															data-parsley-type="alphanum" data-parsley-length="[6, 8]"
															placeholder="Enter ZipCode" class="form-control"
															data-parsley-trigger="focusout" name="empZipcode"/>
													</div>
												</div>

											</div>
											<div class="row">
												<div class="col-sm-12 text-right">
													<button type="submit" class="btn btn-primary">Save</button>
													<a href="#" class="btn btn-danger">Cancel</a>
												</div>
											</div>
											</form>
										</div>


									<div role="tabpanel" class="tab-pane" id="four">
										<div class="table-responsive">
											<table class="table table-bordered" id="intakeNoteData">
												<thead>
													<tr>
														<th>Physician Name</th>
														<th>Document Name</th>
														<th>Date</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody id="intakeNoteDataBody">
													<tr>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>


												</tbody>
											</table>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane" id="five">
										<div class="table-responsive">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th>Department Name</th>
														<th>Report Name</th>
														<th>Date</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Lab</td>
														<td>test.docx</td>
														<td>11/06/2016</td>
														<td><a href="#"><i class="fa fa-download"
																aria-hidden="true"></i></a></td>
													</tr>
													<tr>
														<td>Lab</td>
														<td>test.docx</td>
														<td>11/06/2016</td>
														<td><a href="#"><i class="fa fa-download"
																aria-hidden="true"></i></a></td>
													</tr>
													<tr>
														<td>Lab</td>
														<td>test.docx</td>
														<td>11/06/2016</td>
														<td><a href="#"><i class="fa fa-download"
																aria-hidden="true"></i></a></td>
													</tr>
													<tr>
														<td>Lab</td>
														<td>test.docx</td>
														<td>11/06/2016</td>
														<td><a href="#"><i class="fa fa-download"
																aria-hidden="true"></i></a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane" id="six">
										<h3>Assigned Clinicians</h3>
										<p>This patient has been assigned to the following
											clinicians. Only assigned clinicians can create or view notes
											for this patient. Only a clinical administrator or clinicians
											who are already assigned can assign another clinician to this
											patient. Only a clinical administrator may unassign
											clinicians from patients</p>

										<%--  <div class="search">
                                                <form>
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label>Assign a Physician</label>
                                                                <select class="form-control">
                                                                    <option>---Select---</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <div class="form-group">
                                                                <label class="blank">&nbsp;</label>
                                                                <button class="btn btn-primary">Add Physician</button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </form>
                                            </div> --%>
										<table class="table table-bordered" id="referPatientData">
											<thead>
												<tr>
													<th>Physician</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td></td>
													<td></td>
												</tr>

											</tbody>
										</table>
									</div>

									
										<div role="tabpanel" class="tab-pane" id="eight">
										<form:form data-parsley-trigger="input"
										data-parsley-focus="first" method="POST" action=""
										id="BillingDTO" modelAttribute="BillingDTO">
											<div class="row">
												<div class="col-sm-10">
													<div class="row">
														<div class="col-sm-4">
															<div class="form-group">
																<label>Clinician Name</label>
																<!-- <input type="text" placeholder="Enter Clinician Name" class="form-control" value=""> -->
																<select class="form-control" name="cId" id="clId"
																	required="required">
																	<option>Select Clinician</option>
																	<c:forEach var="item" items="${clinicians}">
																		<option value="${item.id }">Dr.
																			${item.firstName } ${item.lastName}</option>
																	</c:forEach>
																</select>
															</div>
														</div>

														<div class="col-sm-4">
															<div class="form-group">
																<label>From Date</label> <input type="text"
																	placeholder="MM/DD/YYYY" class="form-control" value=""
																	id="fDate" name="fromDate" required="required" readOnly = "readOnly">
															</div>
														</div>
														<div class="col-sm-4">
															<div class="form-group">
																<label>To Date</label> <input type="text"
																	placeholder="MM/DD/YYYY" class="form-control" value=""
																	id="tDate" name="toDate" required="required" readOnly = "readOnly">
															</div>
														</div>
													</div>
												</div>
												<div class="col-sm-2 ">
													<div class="form-group">
														<label class="blank">&nbsp;</label>
														<a href="javascript:void()" class="btn btn-danger" onclick="searchBill()">
															<i class="fa fa-search"></i>
														</a>
														<a href="recp-addbill.do"
															class="btn btn-primary pull-right">Add Bill</a>
													</div>
												</div>
											</div>

											<table class="table table-bordered" id="billTable">
												<thead>
													<tr>
														<th>Bill No.</th>
														<th>Patient Name</th>
														<th>Clinician Name</th>
														<th>Department</th>
														<th>DOS</th>
														<th>Action</th>
													</tr>
												</thead>
												<%-- <tbody>
                                                
                                                <c:forEach var="item" items="${bills }" varStatus="x">
                                                	
                                                	<tr>
                                                        <td> ${item.sBillNo }</td>
                                                        <td>${sessionScope.patient_user.firstName}</td>
                                                        <td>Dr. ${item.cFirstName} ${item.cLastName}</td>
                                                        <c:if test="${item.departmentId == 3}">
                                                        	<td>Physician</td>
                                                        </c:if>
                                                        <c:if test="${item.departmentId == 4}">
                                                        	<td>Lab</td>
                                                        </c:if>
                                                        <c:if test="${item.departmentId == 5}">
                                                        	<td>Radiologist</td>
                                                        </c:if>
                                                        
                                                        <td>${item.sDos}</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                            <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                    
                                                    
                                                </tbody> --%>
											</table>
											<div class="row">
												<div class="col-sm-12 text-right form-group">
													<a href="recp-charge-entry.html" class="btn btn-danger">Download
														All</a>
												</div>
											</div>
											</form:form>
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

	<!-- Datatables-->
	<!-- Datatables-->
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>

	<script src="assets/.js"></script>

	<!--For datepicker  -->
	<script src="assets/js/jQuery-UI-v1.12.0.js"></script>

	<script type="text/javascript">
		var table;
		$(document)
				.ready(
						function() {
							
							$(".tab1").addClass("active");
							
							getReferPatientData();
							getIntakeNotesPatient();
							$
									.ajax({
										method : "GET",
										url : "recp-billdatalist.do",

									})
									.done(
											function(msg) {
												var pName = '${sessionScope.patient_user.firstName}';
												var data = JSON.parse(msg);
												var d = data.myHashMap.data.myArrayList;
												var dataset = [];
												for (var i = 0; i < d.length; i++) {
													var _name = "Dr. "
															+ d[i].cFirstName
															+ " "
															+ d[i].cLastName;
													var dId;
													var _sDos = "" + d[i].sDos;
													var _billNo = ""
															+ d[i].sBillNo;
													var action = '<a href="#"><i class="fa fa-download" aria-hidden="true"></i></a><a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>';
													if (d[i].departmentId = 3) {
														dId = "Physician";
													} else if (d[i].departmentId = 4) {
														dId = "Lab";
													} else if (d[i].departmentId = 5) {
														dId = "Radiologist";
													}

													var arr = [ _billNo, pName,
															_name, dId, _sDos,
															action ];
													dataset[i] = arr;
												}
												table = $('#billTable')
														.DataTable(
																{
																	data : dataset,
																	column : [
																			null,
																			null,
																			null,
																			null,
																			null,
																			null ]
																});

											});

						});

		function searchBill() {

			var _cId = $('#clId').val();
			var _fromDate = $('#fDate').val();
			var _toDate = $('#tDate').val();

			var x = $('#fDate').parsley().validate();
			var y = $('#tDate').parsley().validate();
			$('#clId').parsley().validate();

			$
					.ajax({
						method : "POST",
						url : "recp-searchbill.do",
						data : {
							cId : _cId,
							fromDate : _fromDate,
							toDate : _toDate
						}
					})
					.done(
							function(msg) {
								var pName = '${sessionScope.patient_user.firstName}';
								var data = JSON.parse(msg);
								var d = data.myHashMap.data.myArrayList;
								var dataset = [];
								for (var i = 0; i < d.length; i++) {
									var _name = "Dr. " + d[i].cFirstName + " "
											+ d[i].cLastName;
									var dId;
									var _sDos = "" + d[i].sDos;
									var _billNo = "" + d[i].sBillNo;
									var action = '<a href="#"><i class="fa fa-download" aria-hidden="true"></i></a><a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>';
									if (d[i].departmentId = 3) {
										dId = "Physician";
									} else if (d[i].departmentId = 4) {
										dId = "Lab";
									} else if (d[i].departmentId = 5) {
										dId = "Radiologist";
									}

									var arr = [ _billNo, pName, _name, dId,
											_sDos, action ];
									dataset[i] = arr;
								}
								table.destroy();
								table = $('#billTable').DataTable(
										{
											data : dataset,
											column : [ null, null, null, null,
													null, null ]
										});

							});

		}
		function getReferPatientData() {
			jQuery.ajax({
				method : 'GET',
				url : 'recReferPatientData.do',
				data : {},
				success : function(data) {
					getReferListDataReception(data);

				},
				error : function() {
					console.info("Server-Error..");
				}
			});
		}
		function getReferListDataReception(data) {

			var list = "";

			jQuery.each(data, function(key, _v) {
				list += "<tr>";
				list += "<td>" + _v.firstName + " " + _v.lastName + "</td>";

				list += "</tr>";
			});

			jQuery("#referPatientData").html(list);

		}

		function getIntakeNotesPatient() {

			jQuery.ajax({
				method : 'GET',
				url : 'recIntakeNotesPatient.do',
				data : {},
				success : function(d) {
					getIntakeNotesReception(d);

				},
				error : function() {
					console.info("Server-Error..");
				}
			});
		}
		function getIntakeNotesReception(d) {

			var list = "";
			jQuery('#intakeNoteData').dataTable().fnDestroy();
			jQuery
					.each(
							d,
							function(key, _d) {
								list += "<tr>";
								list += "<td>" + _d.firstName + " "
										+ _d.lastName + "</td>";
								list += "<td>test.docx</td>";
								list += "<td>" + _d.createdOn + "</td>";
								list += "<td>"
										+ '<a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>'
										+ "</td>";
								list += "</tr>";
							});

			jQuery("#intakeNoteDataBody").html(list);
			$('#intakeNoteData').dataTable({
				"order" : [ [ 0, "desc" ] ],
				"columnDefs" : [ {
					"orderable" : true,
					"targets" : 0
				}, {
					"orderable" : true,
					"targets" : 1
				}, {
					"orderable" : true,
					"targets" : 2
				}, {
					"orderable" : true,
					"targets" : 3
				} ]

			});

		}
	</script>

	<script type="text/javascript">
		$(function() {

			var dateFormat = "mm/dd/yy", from = $("#fDate").datepicker({
				defaultDate : new Date(),
				changeMonth : true,
				numberOfMonths : 1,

			}).on("change", function() {
				to.datepicker("option", "minDate", getDate(this));
			}), to = $("#tDate").datepicker({
				defaultDate : new Date(),

				changeMonth : true,
				numberOfMonths : 1,

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

		$(document).ready(function() {
			$("#patientForm").parsley();
			$("#gurForm").parsley();
			
		});
		jQuery("document").ready(function($) {

			jQuery("#statelist").change(function() {
				
				var stateId = jQuery('#statelist :selected').val();
				if (stateId == '') {
					blankcity('patienthomecity');
					return;
				}
				getCityList(stateId, 'patienthomecity');

			});
			jQuery("#pofficestatelist").change(function() {

				var stateId = jQuery('#pofficestatelist :selected').val();
				if (stateId == '') {
					blankcity('patientofficecity');
					return;
				}
				getCityList(stateId, 'patientofficecity');

			});
			jQuery("#guarantorstatelist").change(function() {

				var stateId = jQuery('#guarantorstatelist :selected').val();
				if (stateId == '') {
					blankcity('guarantorhomecity');
					return;
				}
				getCityList(stateId, 'guarantorhomecity');

			});
			jQuery("#gofficestatelist").change(function() {

				var stateId = jQuery('#gofficestatelist :selected').val();
				if (stateId == '') {
					blankcity('guarantorofficecity');
					return;
				}
				getCityList(stateId, 'guarantorofficecity');

			});
			
			jQuery("#email").change(function() {

				var  a =$('#email').parsley().validate();
                
				console.info(a);
			});
			/* jQuery("#staffForm").submit(function(e){
				e.preventDefault();
				var city=jQuery("#city").value();
				validateUser();
				console.info("city: "+city);
			});  */

		});
	/* 	function blankcity(value) {
			if (value == 'patienthomecity') {
				var html = "<label>City</label><select placeholder='Enter City' name='homeCityID' path='homeCityID' parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
				html += "<option value='' >-Select-</option>";
				html += "</select>";
				jQuery("#cityDiv").html(html);

			} else if (value == 'patientofficecity') {
				var html = "<label>City</label><select placeholder='Enter City' name='empCity' parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
				html += "<option value='' >-Select-</option>";
				html += "</select>";
				jQuery("#pofficecityDiv").html(html);
			} else if (value == 'guarantorhomecity') {
				var html = "<label>City</label><select placeholder='Enter City' name='guarantorDTO.homeCityID' path='guarantorDTO.homeCityID'  parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
				html += "<option value='' >-Select-</option>";
				html += "</select>";
				jQuery("#guarantorcityDiv").html(html);
			} else if (value == 'guarantorofficecity') {
				var html = "<label>City</label><select placeholder='Enter City' name='guarantorDTO.officeCityID' path='guarantorDTO.officeCityID'  parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
				html += "<option value='' >-Select-</option>";
				html += "</select>";
				jQuery("#gofficecityDiv").html(html);

			}
		} */

		function getCityList(id, value) {
			var baseurl = "${pageContext.request.contextPath}";
			jQuery.ajax({
				url : baseurl + "/getCityList.do",
				method : "POST",
				data : {
					"id" : id
				},
				success : function(data) {
					var parseData = JSON.parse(data);
					if (value == 'patienthomecity') {
						cityList(parseData, value);
					} else if (value == 'patientofficecity') {
						cityList(parseData, value);
					} else if (value == 'guarantorhomecity') {
						cityList(parseData, value);
					} else if (value == 'guarantorofficecity') {
						cityList(parseData, value);
					}

				},
				fails : function(error) {
					console.info("server error.....");
				}
			});
		}
		function cityList(data, value) {
			if (value == 'patienthomecity') {
				var html = "<label>City</label><select placeholder='Enter City' name='city' parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
				html += "<option value='' >Select</option>";
				jQuery.each(data, function(index, value) {
					
					html += "<option value='"+value.id+"' >" + value.name
							+ "</option>";

				});
				html += "</select>";
				jQuery("#cityDiv").html(html);
			} else if (value == 'patientofficecity') {
				var html = "<label>City</label><select placeholder='Enter City'  name='empCity' parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
				html += "<option value='' >Select</option>";
				jQuery.each(data, function(index, value) {

					html += "<option value='"+value.id+"' >" + value.name
							+ "</option>";

				});
				html += "</select>";
				jQuery("#pofficecityDiv").html(html);
			} else if (value == 'guarantorhomecity') {
				var html = "<label>City</label><select placeholder='Enter City' name='city'  parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
				html += "<option value='' >Select</option>";
				jQuery.each(data, function(index, value) {

					html += "<option value='"+value.id+"' >" + value.name
							+ "</option>";

				});
				html += "</select>";
				jQuery("#guarantorcityDiv").html(html);
			} else if (value == 'guarantorofficecity') {
				var html = "<label>City</label><select placeholder='Enter City' name='empCity'  parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
				html += "<option value='' >Select</option>";
				jQuery.each(data, function(index, value) {

					html += "<option value='"+value.id+"' >" + value.name
							+ "</option>";

				});
				html += "</select>";
				jQuery("#gofficecityDiv").html(html);

			}
		}

		jQuery("document").ready(
				function($) {
						
					 jQuery("#payerName").focusout(
							function() {
								
								var payerName = $('#payerName').val();
								var insuranceType = $('#insuranceType').val();
								if (payerName != '') {
									document.getElementById("insuranceType")
											.setAttribute("required",
													"required");
								}
								if (payerName == '' && insuranceType == '') {
									
									$('#insuranceType').parsley().reset();
									$('#payerName').parsley().reset();
									$('#insuranceType').removeAttr('required');
									$('#payerName').removeAttr('required');
								}
							});
					jQuery("#insuranceType").focusout(
							function() {
								
								var payerName = $('#payerName').val();
								var insuranceType = $('#insuranceType').val();
								if (insuranceType != '') {
									
									document.getElementById("payerName")
											.setAttribute("required",
													"required");
								}
								if (payerName == '' && insuranceType == '') {
								
									$('#insuranceType').parsley().reset();
									$('#payerName').parsley().reset();
									$('#insuranceType').removeAttr('required');
									$('#payerName').removeAttr('required');
								}
							});
 
 			});
	
		$(function() {
			$("#datepicker").datepicker();
		});

		$(function() {
			$("#guarantorDateofbirth").datepicker();
		});
		$(".selectedTab").click(function() {
			$("#patientmessage").hide();
			$("#guarantormessage").hide();
			$("#usernameError").hide();
		});

		
	</script>







</body>
</html>
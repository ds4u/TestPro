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
<title>Charge Entry</title>

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
<!--For datepicker  -->
     <link href="assets/css/jquery-ui-v1.12.0.css" rel="stylesheet" type="text/css" />

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
    <div class="topbar-left"> <a href="index.html" class="logo"><span>Que-<span>ehr</span></span><i class="zmdi zmdi-layers"></i></a> </div>
    
    <!-- Button mobile view to collapse sidebar menu -->
    <div class="navbar navbar-default" role="navigation">
      <div class="container"> 
        
        <!-- Page title -->
        <ul class="nav navbar-nav navbar-left">
          <li>
            <button class="button-menu-mobile open-left"> <i class="zmdi zmdi-menu"></i> </button>
          </li>
        </ul>
        
        <!-- Right(Notification and Searchbox -->
        <ul class="nav navbar-nav navbar-right">
          <li> 
            <!-- Notification -->
            <div class="notification-box">
              <ul class="list-inline m-b-0">
                <li> <a href="javascript:void(0);" class="right-bar-toggle"> <i class="zmdi zmdi-notifications-none"></i> </a>
                  <div class="noti-dot"> <span class="dot"></span> <span class="pulse"></span> </div>
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
        <%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():""; %>
                            <img src="<%=image%>" alt="user-img"  class="img-circle img-thumbnail img-responsive">
                            <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                        </div>
                        	<h5 class="user-name"><%=((User)session.getAttribute("user")).getFirstName()+" "+ ((User)session.getAttribute("user")).getLastName() %> </h5><ul class="list-inline">
          <li> <a href="logout.do" class="text-custom" title="logout"> <i class="zmdi zmdi-power"></i> </a> </li>
        </ul>
      </div>
      <!-- End User --> 
      
      <!--- Sidemenu -->
      <div id="sidebar-menu">
        <ul>
          <li> <a href="recdashboard.do" class="waves-effect "><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a> </li>
          <li> <a href="recplistpatient.do" class="waves-effect active"><i class="fa fa-wheelchair"></i> <span> Patients </span> </a> </li>
          <li> <a href="recscheduling.do" class="waves-effect"><i class="fa fa-calendar"></i> <span> Scheduling </span></a> </li>
          <li> <a href="recappreport.do" class="waves-effect"><i class="fa fa-calendar-plus-o"></i> <span>Appointment Reports </span></a> </li>
          <li> <a href="billing.do" class="waves-effect"><i class="fa fa-usd"></i><span> Billing </span></a> </li>
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
            <h2>Add Bill</h2>
          </div>
          <div class="col-sm-12">
            <div class="bg-picture card-box2">
              <div class="row">
              <div class="col-sm-4">
              <c:choose>
              	<c:when test="${msg=='NoError' }">
              	<div class="alert alert-success">
				  <strong>Success!</strong> Bill Added Successfully!
				</div>
              	</c:when>
              	
              	<c:when test="${msg=='NoInfo' }">
              	
              	</c:when>
              	 <c:when test="${isEmptyList == true }">
              	 	<strong>Info!</strong> No Appointment for this patient!
              	 </c:when>
              	<c:otherwise>
              	<div class="alert alert-danger">
				  <strong>Error!</strong> <c:out value="${msg }"></c:out>
			  </div>
              	</c:otherwise>
              </c:choose>
              
			  </div>
			  </div>
                <div class="row">
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Patient Name</label>
                      <input type="text" name="name" value="${sessionScope.patient_user.firstName}" placeholder="Enter Patient Name" class="form-control" disabled="disabled">
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Mobile Phone</label>
                      <input type="text" name="name" value="${sessionScope.patient_user.mobileNumber}" placeholder="Enter Mobile No." class="form-control" disabled="disabled">
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Home Phone</label>
                      <input type="text" name="name" value="${sessionScope.patient_user.homeNumber}" placeholder="Enter Home No." class="form-control" disabled="disabled">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Date of Birth</label>
                      <input type="text" name="name" value="${sessionScope.patient_user.sDob}" placeholder="MM/DD/YYYY" class="form-control" disabled="disabled">
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Address Line 1</label>
                      <input type="text" name="name" value="${homeAddress.addressLineOne}" placeholder="Enter Address 1" class="form-control" disabled="disabled">
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Address Line 2</label>
                      <input type="text" name="name" value="${homeAddress.addressLineTwo}" placeholder="Enter Address 2" class="form-control" disabled="disabled">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>City</label>
                      <input type="text" name="name" value="${city.name}" placeholder="Enter City" class="form-control" disabled="disabled">
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Zip Code</label>
                      <input type="text" name="name" value="${homeAddress.zipcode}" placeholder="Enter Zip Code" class="form-control" disabled="disabled">
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>State</label>
                      <input type="text" name="name" value="${state.name}" placeholder="Enter State" class="form-control" disabled="disabled">
                    </div>
                  </div>
                </div>
                 <form data-parsley-trigger="input" data-parsley-focus="first" id="billForm" action="recp-addbill.do" method="post" onclick="clinicianselect()">
                <div class="row"> 
                  <!-- <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Bill To</label>
                                                    <input type="text" name="name" value="" placeholder="Enter Bill To" class="form-control">
                                                </div>
                                            </div>-->
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>DOS</label>
                      <input type="text" name="dos" value="" placeholder="Enter DOS" data-parsley-trigger="change" class="form-control" id = "dos" required="required" readonly="readonly">
                    </div>
                  </div>
                  <!-- <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Department</label>
                                                    <select class="form-control">                                                       
                                                        <option>Physician</option>
                                                        <option>Lab</option>
                                                        <option>Radiology</option>
                                                    </select>
                                                </div>
                                            </div>--> 
                </div>
                <c:if test="${isEmptyList == false }">
                <div class="row">
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Department</label>
                      
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Clinician</label>
                      
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <label>Fee</label>
                      
                    </div>
                  </div>
                </div>
                </c:if>
                <!-- Fees for Physician -->
              
                <c:if test="${not empty physician}">
                <div class="row">
                  <div class="col-sm-4">
                    <div class="form-group">
                      <div class="checkbox checkbox-primary">
                                        <input id="physician" name = "checkBills"  type="checkbox"  value = "isPhy" required="required">
                                        <label for="physician">
                                            Physician
                                        </label>
                                    </div>
                      
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <!-- <input type="text" name="name" value="" placeholder="Enter Name" class="form-control"> -->
                      <select class="form-control" id="phyId" name="phyId" required="required">
                      <option value="">select one</option>
                        <c:forEach items="${physician}" var="element">    
							<option value="${element.id }">${element.firstName }</option>					    
						</c:forEach>
                      </select>
                      <h6 id="errormessage" style="display: none; color:red;">Please select a value</h6>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <input type="text" name="phyFees" value="" placeholder="Physician Fees" class="form-control" data-parsley-type="number" required="required">
                    </div>
                  </div>
                </div>
                </c:if>
                <!-- Fees for Lab -->
                <c:if test="${not empty lab}">
                <div class="row">
                  <div class="col-sm-4">
                    <div class="form-group">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" value="isLab" name = "checkBills" class="form-control" required="required"> 
                          Lab </label>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <select class="form-control" name="labId" parsley-trigger="change"  required="required">
                      <option value="">select one</option>
                        <c:forEach items="${lab}" var="element">    
							<option value="${element.id }">${element.firstName }</option>					    
						</c:forEach>
                      </select>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                     <input type="number" name="labFees" value="" placeholder="Lab Fees" class="form-control" data-parsley-type="number" required="required">
                    </div>
                  </div>
                </div>
                </c:if>
                <!-- Fees for Radiology -->
                <c:if test="${not empty radiology}">
                <div class="row">
                  <div class="col-sm-4">
                    <div class="form-group">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" value="isRadio" name = "checkBills" class="form-control" required="required">
                          Radiology </label>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <select class="form-control" name="radioId" data-parsley-trigger="change" required="required">
                      <option value="">select one</option>
                        <c:forEach items="${radiology}" var="element">    
							<option value="${element.id }">${element.firstName }</option>					    
						</c:forEach>
                      </select>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="form-group">
                      <input type="number" name="radioFees" value="" placeholder="Radiology Fees" class="form-control" data-parsley-type="number" required="required">
                    </div>
                  </div>
                </div>
                </c:if>
                <div class="row">
                  
                  <div class="col-sm-6">
                    <div class="form-group">
                      <textarea class="form-control" rows="3"></textarea>
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <textarea class="form-control" rows="3"></textarea>
                    </div>
                  </div>
                </div>
                 <c:if test="${isEmptyList == false }">
                <div class="row">
                  <div class="col-sm-12 text-right"> <button type="submit" class="btn btn-primary" id="saveBill">Save</button> <a href="#" class="btn btn-danger">Cancel</a> </div>
                </div>
                </c:if>
              </form>
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
                    <div class="pull-left">&copy; Copyright 2016 Que-Ehr inc. All rights are reserved</div>
                <div class="pull-right">Designed by <a href="">DreamSoft4u</a></div>
                </footer>
  </div>
  
  <!-- ============================================================== --> 
  <!-- End Right content here --> 
  <!-- ============================================================== --> 
  
  <!-- Right Sidebar -->
  <div class="side-bar right-bar"> <a href="javascript:void(0);" class="right-bar-toggle"> <i class="zmdi zmdi-close-circle-o"></i> </a>
    <h4 class="">Notifications</h4>
    <div class="notification-list nicescroll">
      <ul class="list-group list-no-border user-list">
        <li class="list-group-item"> <a href="#" class="user-list-item">
          <div class="avatar"> <img src="assets/images/users/avatar-2.jpg" alt=""> </div>
          <div class="user-desc"> <span class="name">Michael Zenaty</span> <span class="desc">There are new settings available</span> <span class="time">2 hours ago</span> </div>
          </a> </li>
        <li class="list-group-item"> <a href="#" class="user-list-item">
          <div class="icon bg-info"> <i class="zmdi zmdi-account"></i> </div>
          <div class="user-desc"> <span class="name">New Signup</span> <span class="desc">There are new settings available</span> <span class="time">5 hours ago</span> </div>
          </a> </li>
        <li class="list-group-item"> <a href="#" class="user-list-item">
          <div class="icon bg-pink"> <i class="zmdi zmdi-comment"></i> </div>
          <div class="user-desc"> <span class="name">New Message received</span> <span class="desc">There are new settings available</span> <span class="time">1 day ago</span> </div>
          </a> </li>
        <li class="list-group-item active"> <a href="#" class="user-list-item">
          <div class="avatar"> <img src="assets/images/users/avatar-3.jpg" alt=""> </div>
          <div class="user-desc"> <span class="name">James Anderson</span> <span class="desc">There are new settings available</span> <span class="time">2 days ago</span> </div>
          </a> </li>
        <li class="list-group-item active"> <a href="#" class="user-list-item">
          <div class="icon bg-warning"> <i class="zmdi zmdi-settings"></i> </div>
          <div class="user-desc"> <span class="name">Settings</span> <span class="desc">There are new settings available</span> <span class="time">1 day ago</span> </div>
          </a> </li>
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

<!-- App js --> 
<script src="assets/js/jquery.core.js"></script> 
<script src="assets/js/jquery.app.js"></script>

<!--For datepicker  -->
    <script src="assets/js/jQuery-UI-v1.12.0.js"></script>
    <script src="assets/plugins/parsleyjs/dist/parsley.min.js"></script>
    
    <script type="text/javascript">
    $( "#dos" ).datepicker({
       defaultDate: new Date(),
      changeMonth: true,
      numberOfMonths: 1,
      minDate: 0, 
      maxDate: "+1M "
    })
    </script>
    
    <script type="text/javascript">
    $(document).ready(function () {
    	$("#billForm").parsley();
    });
    
  /* function clinicianselect(){
	  var e = document.getElementById("phyId");
  	var strUser = e.options[e.selectedIndex].text;
  	if(strUser=='select one'){
  		$('#errormessage').show();
  		return;
  }
  }	 */
    </script>
    
</body>
</html>
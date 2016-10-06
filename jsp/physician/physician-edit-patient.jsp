<%@page import="com.dreamsoft4u.queehr.constant.ApplicationVariables"%>
<%@page import="com.dreamsoft4u.queehr.shared.dto.GenderType"%>
<%@page import="com.dreamsoft4u.queehr.database.entities.User"%>
<%@page import="java.util.Date"%>
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
 							 <%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():""; %>
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
                                <a href="phytodolist.do" class="waves-effect "><i class="fa fa-list"></i> <span> To Do List </span> </a>
                            </li>

                            <li>
                                <a href="physchedule.do" class="waves-effect"><i class="fa fa-calendar-plus-o"></i> <span> Scheduling Tab </span></a>
                                
                            </li>                         

                            <li>
                                <a href="phyappointment.do" class="waves-effect"><i class="fa fa-calendar"></i> <span> My Appointments </span></a>                               
                            </li>

                            <li><a href="phylistpatient.do" class="waves-effect active"><i class="fa fa-wheelchair"></i><span> Patients </span></a>
                            </li>
                            <li>
                                <a href="phymessages.do" class="waves-effect"><i class="fa fa-envelope"></i><span> Messages </span></a>
                            </li>
                            <li>
                                <a href="phyencounter.do" class="waves-effect"><i class="fa fa-file"></i><span> Encounter Report </span></a>
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
                                <h2>Edit Patients</h2>
                            </div> 
                        </div>
                        <!-- end row -->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="bg-picture card-box2">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active selectedTab"><a href="#one" aria-controls="one" role="tab" data-toggle="tab">Basic Info</a></li>
                                        <li role="presentation" class="selectedTab"><a href="#two" aria-controls="two" role="tab" data-toggle="tab">Guarantor</a></li>
                                        <li role="presentation" class="selectedTab"><a href="#seven" aria-controls="seven" role="tab" data-toggle="tab">Health Details</a></li>
                                        <li role="presentation" class="selectedTab"><a href="#three" aria-controls="three" role="tab" data-toggle="tab">Open Task</a></li>
                                        <li role="presentation" class="selectedTab"><a href="#four" aria-controls="four" role="tab" data-toggle="tab">Notes</a></li>
                                        <li role="presentation" class="selectedTab"><a href="#five" aria-controls="five" role="tab" data-toggle="tab">Documents</a></li>
                                        <li role="presentation" class="selectedTab"><a href="#six" aria-controls="six" role="tab" data-toggle="tab">Clinician</a></li>
                                        <li role="presentation" class="selectedTab"><a href="#eight" aria-controls="six" role="tab" data-toggle="tab">Medication</a></li>
                                    </ul>
									<div id="add-madication" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                            <h4 class="modal-title"><strong>Medication</strong></h4>
                                        </div>
                                        <div class="modal-body">
                                        <form id="medicationForm" data-parsley-trigger="input" data-parsley-focus="first" data-parsley-validate>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Medication Name</label>
                                        <input type="text" id="medicationName" data-parsley-trigger="focusout" data-parsley-type="alphanum" class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Strength</label>
                                         <input type="text" id="medicationStrength" data-parsley-trigger="focusout" data-parsley-type="alphanum" class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">frequency</label>
                                        <input type="text" id="medicationFrequency"data-parsley-trigger="focusout" data-parsley-type="alphanum"  class="form-control">
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control" id="medicationStatus">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Start Date</label>
                                         <input type="text" id="medicationStartDate"  class="form-control" required>
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">End Date</label>
                                         <input type="text" id="medicationEndDate"  class="form-control" required>
                                        </div></div>
                                        </div>
                                        </form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button" id="medicationSave">Save</button>
                                            <button data-dismiss="modal" class="btn btn-danger delete-event waves-effect waves-light" type="button" style="display: none;">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div><div id="edit-medication" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                            <h4 class="modal-title"><strong>Medication</strong></h4>
                                        </div>
                                        <div class="modal-body">
                                        <form id="editMedicationForm">
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <input type="hidden" id="editMedicationId" class="form-control" disabled>
                                        <label class="control-label">Medication Name</label>
                                        <input type="text" id="editMedicationName" class="form-control" disabled>
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Strength</label>
                                         <input type="text" id="editMedicaionStrength" class="form-control" disabled>
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">frequency</label>
                                        <input type="text" id="editMedicationFrequency" class="form-control" disabled>
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control" id="editMedicationStatus">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label" >Start Date</label>
                                         <input type="text" id="editMedicationStartDate" placeholder="MM/DD/YYYY" class="form-control">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">End Date</label>
                                         <input type="text" id="editMedicationEndDate" placeholder="MM/DD/YYYY" class="form-control">
                                        </div></div>
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button" id="editMedicationSave">Save</button>
                                            <button data-dismiss="modal" class="btn btn-danger delete-event waves-effect waves-light" type="button" style="display: none;">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                               <div id="add-allergy" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                            <h4 class="modal-title"><strong>Allergies </strong></h4>
                                        </div>
                                        <div class="modal-body">
                                        <form id="allergyForm" id="vitalForm" data-parsley-trigger="input" data-parsley-focus="first" data-parsley-validate>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Allergy Name	</label>
                                        <input type="text" id="allergyName" data-parsley-trigger="focusout" data-parsley-type="alphanum" class="form-control">
                                        </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Reaction</label>
                                        <input type="text"  id="reaction" data-parsley-trigger="focusout" data-parsley-type="alphanum" class="form-control">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control" id="status">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div><div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Start Date</label>
                                         <input type="text" id="startDate" placeholder="DD/MM/YYYY"  class="form-control startDate" required>
                                        </div>
                                        </div><div class="col-md-6">
                                        <div class="form-group"><label class="control-label">End Date</label>
                                         <input type="text" id="endDate" placeholder="DD/MM/YYYY"  class="form-control endDate" required>
                                        </div>
                                        </div>
                                        
                                        
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button" id="allergySave">Save</button>
                                            <button data-dismiss="modal" class="btn btn-danger delete-event waves-effect waves-light" type="button" style="display: none;">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="add-vital" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                            <h4 class="modal-title"><strong>Vitals </strong></h4>
                                        </div>
                                        <form id="vitalForm" data-parsley-trigger="input" data-parsley-focus="first" data-parsley-validate>
                                        <div class="modal-body">
                                        <input type = "hidden" id="patientId" value="${user.id}" />
                                         <input type = "hidden" id="patientFirstName" value="${user.firstName}" />
                                         <input type = "hidden" id="patientLastName" value="${user.lastName}" />
                                        <%User phy = (User)session.getAttribute("user"); %>
                                         <input type = "hidden" id="physicianId" value="<%=phy.getId() %>" />
                                         <input type = "hidden" id="physicianFirstName" value="<%=phy.getFirstName()%>" />
                                         <input type = "hidden" id="physicianLastName" value="<%=phy.getLastName() %>" />
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label" >Weight (kg)</label>
                                        <input id="weight" class="form-control" data-parsley-trigger="focusout" data-parsley-type="digits">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label" >Height (cms)</label>
                                         <input type="text" id="height"  class="form-control" data-parsley-trigger="focusout" data-parsley-type="digits">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Body Temperature (deg. F)</label>
                                        <input type="text" id="bodyTemperature"  class="form-control" data-parsley-trigger="focusout" data-parsley-type="digits">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Pulse Rate</label>
                                        <input type="text" id="pulseRate"  class="form-control" data-parsley-trigger="focusout" data-parsley-type="digits">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Blood Group</label>
                                        <input type="text" id="bloodGroup"  class="form-control" data-parsley-pattern="/^[ A-Za-z+-]*$/" data-parsley-error-message="Only alphabets,+ and - are allowed" data-parsley-trigger="focusout">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label"> 	Blood Pressure</label>
                                        <input type="text" id="bloodPressure" class="form-control" data-parsley-pattern="/^[0-9/]*$/" data-parsley-trigger="focusout" >
                                        </div></div>
                                        
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Date</label>
                                         <input  type="text" id="vitalDate" placeholder="MM/DD/YYYY" value="" class="form-control" required readOnly>
                                        </div></div>
                                        </div></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button" id="vitalSave">Save</button>
                                            <button data-dismiss="modal" class="btn btn-danger delete-event waves-effect waves-light" type="button" style="display: none;">Delete</button>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div id="add-chronic" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                            <h4 class="modal-title"><strong>Chronic Illness</strong></h4>
                                        </div>
                                        <div class="modal-body">
                                        
                                        <div class="row">
                                        <form id="chronicForm" name="chronicForm" data-parsley-trigger="input" data-parsley-focus="first" data-parsley-validate>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Illness</label>
                                        <input type="text" id="chronicIllness"  data-parsley-trigger="focusout" data-parsley-type="alphanum"  class="form-control"/>
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Reaction</label>
                                        <input type="text" id="chronicReaction" data-parsley-trigger="focusout" data-parsley-type="alphanum" class="form-control">
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label" >Status</label>
                                        <select class="form-control" id="chronicSatus">
                                        <option>Active</option>
                                        <!-- <option>Inactive</option> -->
                                        </select>
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Start Date</label>
                                         <input type="text" id="chronicStartDate" placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div><div class="col-md-6">
                                        <div class="form-group"><label class="control-label">End Date</label>
                                         <input type="text" id="chronicEndDate"  placeholder="DD/MM/YYYY"  class="form-control">
                                        </div></div>
                                         <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button" id="chronicIllnessSave">Save</button>
                                            <button data-dismiss="modal" class="btn btn-danger delete-event waves-effect waves-light" type="button" style="display: none;">Delete</button>
                                        </div>
                                        </form>
                                        </div>
                                        
                                        </div>
                                       
                                        
                                    </div>
                                </div>
                            </div>
                            <div id="edit-chronic" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                            <h4 class="modal-title"><strong>Chronic Illness</strong></h4>
                                        </div>
                                        <div class="modal-body">
                                        <form id="editChronicForm">
                                        <input type="hidden" id="chronicId" value=""/>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Illness</label>
                                        <input type="text" id="editChronicIllness" class="form-control" disabled>
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Reaction</label>
                                        <input type="text" id="editChronicReaction" class="form-control" disabled>
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control" id="editChronicSatus">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Start Date</label>
                                         <input type="text" id="editChronicStartDate" placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div><div class="col-md-6">
                                        <div class="form-group"><label class="control-label">End Date</label>
                                         <input type="text" id="editChronicEndDate" placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div>
                                        
                                        
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button" id="editChronicSave">Save</button>
                                            <button data-dismiss="modal" class="btn btn-danger delete-event waves-effect waves-light" type="button" style="display: none;">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="edit-illness" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                            <h4 class="modal-title"><strong>Allergies </strong></h4>
                                        </div>
                                        <div class="modal-body">
                                        <form id="editAllergyForm" data-parsley-trigger="input" data-parsley-focus="first" data-parsley-validate>
                                        <input type="hidden" id="editAllergyId" class="form-control" disabled>
                                        <input type="hidden" id="editPatientId" class="form-control" disabled>
                                        <input type="hidden" id="editClinicianId" class="form-control" disabled>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Allergy Name</label>
                                        <input type="text" id="editAllergyName" class="form-control" data-parsley-trigger="focusout" data-parsley-type="alphanum" disabled>
                                        </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Reaction</label>
                                        <input type="text" id="editReaction" class="form-control" data-parsley-trigger="focusout" data-parsley-type="alphanum" disabled>
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control" id="editStatus">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div><div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Start Date</label>
                                         <input type="text" id="editStartDate" placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div><div class="col-md-6">
                                        <div class="form-group"><label class="control-label">End Date</label>
                                         <input type="text" id="editEndDate" placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div>
                                        
                                        
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button" id="editAllergySave">Save</button>
                                            <button data-dismiss="modal" class="btn btn-danger delete-event waves-effect waves-light" type="button" style="display: none;">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                                    <!-- Tab panes --><!--ravi workingplace  -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="one">
                                            <form:form commandName="address" action="phyeditpatient.do" method="GET">
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>User Name</label>
                                                            <form:input path="user.userName" value=""  class="form-control"  disabled="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Email</label>
                                                            <form:input path="user.emailAddress" value=""  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Date of Birth</label>
                                                            <form:input type="text" path="user.dateOfBirth" value=""  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>First Name</label>
                                                            <form:input type="text" path="user.firstName" value=""  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Middle Name</label>
                                                            <form:input type="text" path="user.middleName" value=""  class="form-control" disabled="true"/>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Last Name</label>
                                                            <form:input name="name" path="user.lastName" value=""  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Gender</label>
                                                            <input name="name"  value="${gender}"  class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Marital Status</label>
                                                            <input name="name" path="middleName" value="${maritalStatus}"  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Mobile Phone</label>
                                                            <form:input path="user.mobileNumber" value=""  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Home Phone</label>
                                                            <form:input path="user.homeNumber" value=""  class="form-control" disabled="true"/>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 1</label>
                                                            <form:input name="name" path="addressLineOne" value=""  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 2</label>
                                                            <form:input name="name" path="addressLineTwo" value=""  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>City</label>
                                                            <input name="name" value="${city}"  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Zip Code</label>
                                                            <form:input path="zipcode"  value=""  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>State</label>
                                                            <input name="name"  value="${state}"  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>

                                                </div>

                                                <h3>Employment Details</h3>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Employment Status</label>
                                                            <input type="text" name="name" value="${employementStatus}"  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 1</label>
                                                            <input name="name" value="${address2.getAddressLineOne()}"  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 2</label>
                                                            <input type="text" name="name" value="${address2.getAddressLineOne()}"  class="form-control" disabled="true" />
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>City</label>
                                                            <input type="text" name="name" value="${city2}"  class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>State</label>
                                                            <input type="text" name="name" value="${state2}"  class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Zip Code</label>
                                                            <input type="text" name="name" value="${address2.getZipcode()}"  class="form-control" disabled />
                                                        </div>
                                                    </div>

                                                </div>
                                                <h3>Insurance Details</h3>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Payer Name</label>
                                                            <input type="text" name="name" value="${insuranceDetail.getPayerName()}"  class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Insurance Type</label>
                                                            <input type="text" name="name" value="${insuranceDetail.getInsuranceType()}"  class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                </div>
                                            </form:form>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="two">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Email</label>
                                                        <input type="text" name="name" value="${gurantor.userName}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Date of Birth</label>
                                                        <input type="text" name="name" value="${gurantor.dateOfBirth}" class="form-control" disabled />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>First Name</label>
                                                        <input type="text" name="name" value="${gurantor.firstName}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Middle Name</label>
                                                        <input type="text" name="name" value="${gurantor.middleName}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Last Name</label>
                                                        <input type="text" name="name" value="${gurantor.lastName}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Gender</label>
                                                        <input type="text" name="name" value="${gurantorgender}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Marital Status</label>
                                                        <input type="text" name="name" value="${gurantormaritalStatus}" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Mobile Phone</label>
                                                        <input type="text" name="name" value="${gurantor.mobileNumber}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Home Phone</label>
                                                        <input type="text" name="name" value="${gurantor.homeNumber}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Address Line 1</label>
                                                        <input type="text" name="name" value="${gurantoraddress1.addressLineOne}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Address Line 2</label>
                                                        <input type="text" name="name" value="${gurantoraddress1.addressLineTwo}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>City</label>
                                                        <input type="text" name="name" value="${gurantorcity1}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Zip Code</label>
                                                        <input type="text" name="name" value="${gurantoraddress1.zipcode}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>State</label>
                                                        <input type="text" name="name" value="${gurantorstate1}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                            </div>
                                            <h3>Employment Details</h3>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Employment Status</label>
                                                        <input type="text" name="name" value="${gurantoremployementStatus}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Office Address Line 1</label>
                                                        <input type="text" name="name" value="${gurantoraddress2.addressLineOne}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Office Address Line 2</label>
                                                        <input type="text" name="name" value="${gurantoraddress2.addressLineTwo}"  class="form-control" disabled />
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>City</label>
                                                        <input type="text" name="name" value="${gurantorcity2}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>State</label>
                                                        <input type="text" name="name" value="${gurantorstate2}"  class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Zip Code</label>
                                                        <input type="text" name="name" value="${gurantoraddress2.zipcode}"  class="form-control" disabled />
                                                    </div>
                                                </div>

                                            </div>
                                        </div>


                                        <div role="tabpanel" class="tab-pane" id="seven">
                                   <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active selectedSubTab"><a href="#vitals" aria-controls="vitals" role="tab" data-toggle="tab">Vitals</a></li>                                       
                                        <li role="presentation" class="selectedSubTab"><a href="#allergies" aria-controls="allergies" role="tab" data-toggle="tab">Allergies</a></li>
                                        <li role="presentation" class="selectedSubTab"><a href="#chronic" aria-controls="chronic" role="tab" data-toggle="tab">Chronic Illness</a></li>
                                         </ul>
                                      <div class="tab-content">  <div role="tabpanel" class="tab-pane active" id="vitals">
                                            <h3>Vitals <button class="btn btn-primary pull-right" data-toggle="modal" data-target="#add-vital">Add</button></h3>
                                            
                                        
                                         
                                           <div id="vitalMessage"></div>
                                            <div class="table-responsive">
                                                <table class="table table-bordered" id="vitalTable">
                                                    <thead>
                                                        <tr>
                                                            <th>Weight (kg)</th>
                                                            <th>Height (cms)</th>
                                                            <th>Body Temperature (deg. F)</th>
                                                            <th>Pulse Rate</th>
                                                            <th>Blood Group</th>
                                                            <th>Blood Pressure</th>
                                                            <th>Date</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="vitalList">
                                                
                                                    </tbody>
                                                </table>
                                            </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="allergies">

                                            <h3>Allergies <button class="btn btn-primary pull-right"  data-toggle="modal" data-target="#add-allergy">Add</button></h3>
                                          <div id="allergyMessage"></div>
                                            <div class="table-responsive">
                                                <table class="table table-bordered" id="allergyTable">
                                                    <thead>
                                                        <tr>
                                                            <th>Allergy Name</th>
                                                            <th>Start Date</th>
                                                            <th>End Date</th>
                                                            <th>Reaction</th>
                                                            <th>Status</th>
                                                            <th>Edit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="allergyList">
                                                  
                                                    </tbody>
                                                </table>
                                            </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="chronic">

                                            <h3>Chronic Illness <button class="btn btn-primary pull-right" data-toggle="modal" data-target="#add-chronic">Add</button></h3>
                                        <div id="chronicMessage"></div>
                                            <div class="table-responsive">
                                                <table class="table table-bordered" id="chronicTable">
                                                    <thead>
                                                        <tr>
                                                            <th>Illness</th>
                                                            <th>Start Date</th>
                                                            <th>End Date</th>
                                                            <th>Reaction</th>
                                                            <th>Status</th>
                                                            <th>Edit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="chroniclList">
                                                 
                                                    </tbody>
                                                </table>
                                            </div>
                                            </div>
                                            </div>
                                    </div>
                                        <div role="tabpanel" class="tab-pane" id="three">
                                            <div class="table-responsive">
                                             <div id="encounterMessage"></div>
                                              <div id="intakeMessage"></div>
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
                                                     <c:forEach var="task" items="${openTaskList}" varStatus="theCount">
                                                    <tr>
                                                    	<td>${task.sFromDate} ${task.sFromTime}</td>
                                                    	<td>Create a Intake Note for This appointment</td>
                                                    	 <td>
                                                                <a href="#" data-toggle="modal"  data-target="#treat-advice" onClick="encounterReport('${task.sFromDate}','${task.sFromTime}','${task.duration}','${task.id}')" class="btn btn-primary">Encounter Report</a>
                                                                <a href="#" data-toggle="modal" data-target="#create-note" onClick="createNote('${task.sFromDate}','${task.sFromTime}','${task.duration}')"  class="btn btn-primary">Create Note</a>                                                                
                                                            </td> 
													</tr>
													</c:forEach>
													</c:if>
                                                       
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="four">
                                            <div class="table-responsive">
                                                <table class="table table-bordered" id="intakeNoteData">
                                                    <thead>
                                                        <tr>
                                                            <th>Date</th>
                                                            <th>Patient Name</th>
                                                            <th>Notes</th>                                                            
                                                            <th>Encounter Report</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="intakeNoteDataList">
                                                 
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
                                                            <td>
                                                                <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                                <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Lab</td>
                                                            <td>test.docx</td>
                                                            <td>11/06/2016</td>
                                                            <td>
                                                                <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                                <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Lab</td>
                                                            <td>test.docx</td>
                                                            <td>11/06/2016</td>
                                                            <td>
                                                                <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                                <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Lab</td>
                                                            <td>test.docx</td>
                                                            <td>11/06/2016</td>
                                                            <td>
                                                                <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                                <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="six">
                                            <h3>Assigned Clinicians</h3>
                                          
                                            <p>This patient has been assigned to the following clinicians. Only assigned clinicians can create or view notes for this patient. Only a clinical administrator or clinicians who are already assigned can assign another clinician to this patient. Only a clinical administrator may unassign clinicians from patients</p>
											<div id="referMessage"></div>
                                            <div class="search">
                                                <form >
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <div class="form-group" >
                                                                <label>Assign a Physician</label>
                                                                <select class="form-control" name="clinicianList" id="clinicianList">
                                                                    <option value="" id="">---Select---</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <div class="form-group">
                                                                <label class="blank">&nbsp;</label>
                                                                <a href="javascript:void(0);" class="btn btn-primary" id="AddReferPhysician">Add Physician</a>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </form>
                                            </div>
                                            <table class="table table-bordered" id="referClinicianData">
                                                <thead>
                                                    <tr>
                                                        <th>Physician</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="referClinicianDataList">
                                                   
                                                  
                                                </tbody>
                                            </table>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="eight">
                                        <h3>Medication <button class="btn btn-primary pull-right" data-toggle="modal" data-target="#add-madication">Add</button></h3>
                                             
                                            <div class="table-responsive">
                                             <div id="medicationMessage"></div>
                                                <table class="table table-bordered" id="medicationTable">
                                                    <thead>
                                                        <tr>
                                                            <th>Medication Name</th>
                                                            <th>Strength(units)</th>                                                            
                                                             <th>Frequency</th>
                                                            <th>Status</th>
                                                            <th>Start Date</th>
                                                            <th>End Date</th>
                                                            <th>Edit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="medicationList">
                                                       <!--  <tr>
                                                            <td>Redness</td>
                                                           <td>250 mg</td>
                                                           <td>1 tab daily</td>
                                                            <td>Active</td>
                                                             <td>11/06/2016</td>
                                                            <td>NA</td>
                                                             <td><a data-target="#edit-madication" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>250 mg</td>
                                                           <td>1 tab daily</td>
                                                            <td>Active</td>
                                                             <td>11/06/2016</td>
                                                            <td>NA</td>
                                                             <td><a data-target="#edit-madication" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                           <td>250 mg</td>
                                                           <td>1 tab daily</td>
                                                            <td>Inactive</td>
                                                             <td>11/06/2016</td>
                                                            <td>12/06/2016</td>
                                                             <td><a data-target="#edit-madication" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr> -->
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

        <!-- Modal -->
        <div class="modal fade" id="add-allergies" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Add Allergies</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Allergy Name</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="Enter Allergy Name" />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Reaction</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="Enter Reaction" />
                                    </div>
                                </div>                               
                            </div>
                            <div class="row">                              
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Status</label>
                                        <select class="form-control">
                                            <option>Active</option>
                                            <option>Inactive</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Start Date</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="MM/DD/YYYY" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">                               
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Last Date</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="MM/DD/YYYY" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="add-illness" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Add Chronic Illness</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Illness</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="Enter Allergy Name" />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Reaction</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="Enter Reaction" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Status</label>
                                        <select class="form-control">
                                            <option>Active</option>
                                            <option>Inactive</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Start Date</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="MM/DD/YYYY" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Last Date</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="MM/DD/YYYY" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="create-note" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Note</h4>
                    </div>
                    <div class="modal-body">
                        <form id="noteForm">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Physician Name</label>
                                        <input type="text" name="name" id="notePhysicianName" value="" class="form-control"  disabled />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Patient Name</label>
                                        <input type="text" name="name" id="notePatientName" value="" class="form-control"  disabled />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Date & Time</label>
                                        <input type="text" name="name" id="noteDateTime" value="" class="form-control"disabled />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Duration</label>
                                        <input type="text" name="name" id="noteDuration" value="" class="form-control"  disabled />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Presenting Problem</label>
                                        <textarea class="form-control" rows="2" id="noteProblem"></textarea>
                                    </div>
                                </div>
                            </div>
                          
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" id="noteSave">Save</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="treat-advice" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Encounter Report</h4>
                    </div>
                    <div class="modal-body">
                        <form id="encounterForm" >
                        
                            <ul class="nav nav-tabs">
                                                <li role="presentation" class="active">
                                                    <a href="#report" role="tab" data-toggle="tab">Report</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#medication" role="tab" data-toggle="tab">Add Medication</a>
                                                </li>                                                
                                            </ul>
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane fade in active" id="report">
                                                    
                        	<input type="hidden" name="patientId" value="${user.id}">
                        	 <%-- <%User phy2 = (User)session.getAttribute("user"); %> --%>
                        	<input type="hidden" name="clinicianId" value="<%= phy.getId() %>">
                        	<%-- <input type="hidden" name="createdOn" value="<%= new Date()%>">
                        	<input type="hidden" name="updatedOn" value="<%= new Date() %>"> --%>
                            <div class="row">
                                <div class="col-sm-3">
                                <input type="hidden" name="name" value="" class="form-control" id="encounterAppointmentId" disabled />
                                    <div class="form-group">
                                        <label>Physician Name</label>
                                        <input type="text" name="name" value="" class="form-control" id="encounterPhyName" disabled />
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Patient Name</label>
                                        <input type="text" name="name" value="" class="form-control" id="encounterPatientName" disabled />
                                    </div>
                                </div>
                          
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Date & Time</label>
                                        <input type="text" name="name" value="" class="form-control" id="encounterDateTime" disabled />
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label>Duration</label>
                                        <input type="text" name="name" value="" class="form-control" id="encounterDuration" disabled />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Presenting Problem</label>
                                        <textarea class="form-control" rows="2" id="encounterProblem" name="presentingProblem"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Instructions</label>
                                        <textarea class="form-control" rows="2" id="encounterInstruction" name="instruction"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Recomedations</label>
                                        <textarea class="form-control" rows="2" id="encounterRecomedations" name="recommendation"></textarea>
                                    </div>
                                </div>
                            </div>
                                                </div>
                                                <div role="tabpanel" class="tab-pane fade input_fields_wrap" id="medication">
                                                <section class="row ">
                                        <div class="col-md-2">
                                        <div class="form-group">
                                        <label class="control-label">Medication Name</label>
                                        <input type="text" name="dynamicMedicineName[]" class="form-control dynamicMedicineName" value="">
                                        </div>
                                        </div>
                                        <div class="col-md-2">
                                        <div class="form-group"><label class="control-label">Strength</label>
                                         <input type="text"  name="dynamicMedicineStrength[]" class="form-control dynamicMedicineStrength"  value="">
                                        </div> 
                                        </div>
                                        <div class="col-md-2">
                                        <div class="form-group">
                                        <label class="control-label">frequency</label>
                                        <input type="text"   name="dynamicMedicineFrequency[]" class="form-control dynamicMedicineFrequency"  value="">
                                        </div>
                                        </div>
                                       
                                        <div class="col-md-2">
                                        <div class="form-group">
                                        <label class="control-label">Start Date</label>
                                         <input type="text"  name="dynamicMedicineStartDate[]"  class="form-control dynamicMedicineStartDate startDate" >
                                        </div>
                                        </div>
                                        <div class="col-md-2">
                                        <div class="form-group">
                                        <label class="control-label">End Date</label>
                                         <input type="text"  name="dynamicMedicineEndDate[]"  class="form-control dynamicMedicineEndDate endDate"  >
                                        </div>
                                        </div>
                                       
                                        <div class="col-md-2">
                                        <div class="form-group">
                                        <label class="control-label blank">&nbsp;</label>
                                         <button class="btn btn-primary add_field_button"><i class="fa fa-plus"></i>&nbsp; Add More</button>
                                        </div>                                        
                                        </div> 
                                 
                                        </section>
                                                </div>                                               
                                            </div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" id="encounterSave">Submit</button>
                    </div>
                        </form>
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
		<script src="assets/plugins/parsleyjs/dist/parsley.min.js"></script>
		<!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
		<script src="assets/js/main.js"></script> 

        <!-- Dashboard init -->
        <script src="assets/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        <script src="assets/js/phyeditpatient.js"></script>
         <!--For datepicker  -->
    	<script src="assets/js/jQuery-UI-v1.12.0.js"></script>
    
 		<!-- Datatables-->
		<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>
    	  
 
      <script>
      
      $(function(){  
          $('#add-vital').on('hidden.bs.modal', function (e) {
          	$("#vitalForm")[0].reset();
          	$('#vitalForm').parsley().reset();
        });
    });
      
      $(function(){  
          $('#add-allergy').on('hidden.bs.modal', function (e) {
         	$("#allergyForm")[0].reset();
          	$('#allergyForm').parsley().reset();
        });
    });
      
      $(function(){  
          $('#add-chronic').on('hidden.bs.modal', function (e) {
          	$("#chronicForm")[0].reset();
          	$('#chronicForm').parsley().reset();
        });
    });
      
      $(function(){  
          $('#edit-illness').on('hidden.bs.modal', function (e) {
         	
          	$('#allergyForm').parsley().reset();
        });
    });
      
      $(function(){  
          $('#add-medication').on('hidden.bs.modal', function (e) {
          	$("#medicationForm")[0].reset();
          	$('#medicationForm').parsley().reset();
        });
    });
      
      $(function(){  
          $('#edit-chronic').on('hidden.bs.modal', function (e) {
         	
          	$('#editChronicForm').parsley().reset();
        });
    });
      
      $(function(){  
          $('#create-note').on('hidden.bs.modal', function (e) {
        	  
        	$("#noteForm")[0].reset();
          	$('#noteForm').parsley().reset();
        });
    });
      
      $(function(){  
          $('#treat-advice').on('hidden.bs.modal', function (e) {
        	  
        	$("#encounterForm")[0].reset();
          	$('#encounterForm').parsley().reset();
        });
    });
      
      </script>
      
       <script>
			 $(document).ready(function () {
		         $('#openTaskTable').dataTable({
		        	  "order": [[ 0, "desc" ]]
		         });
		     });
		     TableManageButtons.init();
		     
        </script>
 
      <script>
      $( function() {
    	    var dateFormat = "mm/dd/yy",
    	      from = $( ".startDate" )
    	        .datepicker({
    	           defaultDate: new Date(),
    	          changeMonth: true,
    	          numberOfMonths: 1,
    	          minDate: 0, 
    	          maxDate: "+1M "
    	        })
    	        .on( "change", function() {
    	          to.datepicker( "option", "minDate", getDate( this ) );
    	        }),
    	      to = $( ".endDate" ).datepicker({
    	       defaultDate:  new Date(),
    	       minDate: 0,
    	        changeMonth: true,
    	        numberOfMonths: 1,
    	        maxDate: "+3M "
    	      })
    	      .on( "change", function() {
    	        from.datepicker( "option", "maxDate", getDate( this ) );
    	      });
    	 
    	    function getDate( element ) {
    	      var date;
    	      try {
    	        date = $.datepicker.parseDate( dateFormat, element.value );
    	      } catch( error ) {
    	        date = null;
    	      }
    	 
    	      return date;
    	    }
    	  } );
    </script>
    <script>
          $( function() {
    	    var dateFormat = "mm/dd/yy",
    	      from = $( "#editStartDate" )
    	        .datepicker({
    	           defaultDate: new Date(),
    	          changeMonth: true,
    	          numberOfMonths: 1,
    	          minDate: 0, 
    	          maxDate: "+1M "
    	        })
    	        .on( "change", function() {
    	          to.datepicker( "option", "minDate", getDate( this ) );
    	        }),
    	      to = $( "#editEndDate" ).datepicker({
    	       defaultDate:  new Date(),
    	       minDate: 0,
    	        changeMonth: true,
    	        numberOfMonths: 1,
    	        maxDate: "+3M "
    	      })
    	      .on( "change", function() {
    	        from.datepicker( "option", "maxDate", getDate( this ) );
    	      });
    	 
    	    function getDate( element ) {
    	      var date;
    	      try {
    	        date = $.datepicker.parseDate( dateFormat, element.value );
    	      } catch( error ) {
    	        date = null;
    	      }
    	 
    	      return date;
    	    }
    	  } );
    </script>
     <script>
          $( function() {
    	    var dateFormat = "mm/dd/yy",
    	      from = $( "#chronicStartDate" )
    	        .datepicker({
    	           defaultDate: new Date(),
    	          changeMonth: true,
    	          numberOfMonths: 1,
    	          minDate: 0, 
    	          maxDate: "+1M "
    	        })
    	        .on( "change", function() {
    	          to.datepicker( "option", "minDate", getDate( this ) );
    	        }),
    	      to = $( "#chronicEndDate" ).datepicker({
    	       defaultDate:  new Date(),
    	       minDate: 0,
    	        changeMonth: true,
    	        numberOfMonths: 1,
    	        maxDate: "+3M "
    	      })
    	      .on( "change", function() {
    	        from.datepicker( "option", "maxDate", getDate( this ) );
    	      });
    	 
    	    function getDate( element ) {
    	      var date;
    	      try {
    	        date = $.datepicker.parseDate( dateFormat, element.value );
    	      } catch( error ) {
    	        date = null;
    	      }
    	 
    	      return date;
    	    }
    	  } );
    </script>
     <script>
          $( function() {
    	    var dateFormat = "mm/dd/yy",
    	      from = $( "#editChronicStartDate" )
    	        .datepicker({
    	           defaultDate: new Date(),
    	          changeMonth: true,
    	          numberOfMonths: 1,
    	          minDate: 0, 
    	          maxDate: "+1M "
    	        })
    	        .on( "change", function() {
    	          to.datepicker( "option", "minDate", getDate( this ) );
    	        }),
    	      to = $( "#editChronicEndDate" ).datepicker({
    	       defaultDate:  new Date(),
    	       minDate: 0,
    	        changeMonth: true,
    	        numberOfMonths: 1,
    	        maxDate: "+3M "
    	      })
    	      .on( "change", function() {
    	        from.datepicker( "option", "maxDate", getDate( this ) );
    	      });
    	 
    	    function getDate( element ) {
    	      var date;
    	      try {
    	        date = $.datepicker.parseDate( dateFormat, element.value );
    	      } catch( error ) {
    	        date = null;
    	      }
    	 
    	      return date;
    	    }
    	  } );
    </script>
    
         <script>
          $( function() {
    	    var dateFormat = "mm/dd/yy",
    	      from = $( "#medicationStartDate" )
    	        .datepicker({
    	           defaultDate: new Date(),
    	          changeMonth: true,
    	          numberOfMonths: 1,
    	          minDate: 0, 
    	          maxDate: "+1M "
    	        })
    	        .on( "change", function() {
    	          to.datepicker( "option", "minDate", getDate( this ) );
    	        }),
    			    to = $( "#medicationEndDate" ).datepicker({
    	       defaultDate:  new Date(),
    	       minDate: 0,
    	        changeMonth: true,
    	        numberOfMonths: 1,
    	        maxDate: "+3M "
    	      })
    	      .on( "change", function() {
    	        from.datepicker( "option", "maxDate", getDate( this ) );
    	      });
    	 
    	    function getDate( element ) {
    	      var date;
    	      try {
    	        date = $.datepicker.parseDate( dateFormat, element.value );
    	      } catch( error ) {
    	        date = null;
    	      }
    	 
    	      return date;
    	    }
    	  } );
    </script>
        <script>
          $( function() {
    	    var dateFormat = "mm/dd/yy",
    	      from = $( "#editMedicationStartDate" )
    	        .datepicker({
    	           defaultDate: new Date(),
    	          changeMonth: true,
    	          numberOfMonths: 1,
    	          minDate: 0, 
    	          maxDate: "+1M "
    	        })
    	        .on( "change", function() {
    	          to.datepicker( "option", "minDate", getDate( this ) );
    	        }),
    	      to = $( "#editMedicationEndDate" ).datepicker({
    	       defaultDate:  new Date(),
    	       minDate: 0,
    	        changeMonth: true,
    	        numberOfMonths: 1,
    	        maxDate: "+3M "
    	      })
    	      .on( "change", function() {
    	        from.datepicker( "option", "maxDate", getDate( this ) );
    	      });
    	 
    	    function getDate( element ) {
    	      var date;
    	      try {
    	        date = $.datepicker.parseDate( dateFormat, element.value );
    	      } catch( error ) {
    	        date = null;
    	      }
    	 
    	      return date;
    	    }
    	  } );
       
          $(".selectedTab").click(function() {
        	  $('#medicationMessage').html('<div id="medicationMessage"></div>');
        	  $('#encounterMessage').html('<div id="encounterMessage"></div>');
        	  $('#intakeMessage').html('<div id="intakeMessage"></div>');
        	  $('#referMessage').html('<div id="referMessage"></div>');
  		});
          $(".selectedSubTab").click(function() {
        	  $('#vitalMessage').html('<div id="vitalMessage"></div>');
        	  $('#allergyMessage').html('<div id="allergyMessage"></div>');
        	  $('#chronicMessage').html('<div id="chronicMessage"></div>');
  		});
        
    </script>

    </body>
</html>
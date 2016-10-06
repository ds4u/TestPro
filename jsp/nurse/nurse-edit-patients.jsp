<%@page import="com.dreamsoft4u.queehr.constant.ApplicationVariables"%>
<%@ page import="com.dreamsoft4u.queehr.database.entities.User" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/please-wait-modal.jsp"></jsp:include>
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
 							<%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():"";%>
                            <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                        </div>
                        <h5 class="user-name"> ${ sessionScope.user.firstName} ${ sessionScope.user.lastName}  </h5>
                        <ul class="list-inline">
                           <!--  <li>
                                <a href="change-pw.html" >
                                    <i class="zmdi zmdi-settings"></i>
                                </a>
                            </li> -->

                            <li>
                                <a href="logout.do" class="text-custom">
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
                                <a href="nursedashboard.do" class="waves-effect "><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                            </li>

                            <li>
                                <a href="nurselistpatient.do" class="waves-effect active"><i class="fa fa-wheelchair"></i> <span> Patients </span> </a>
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
                                <h2>Patients Details</h2>
                            </div>
                            <div class="col-sm-12">
                                <div class="bg-picture card-box2">
                                  <div class="edit-patient-tab">  <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#one" aria-controls="one" role="tab" data-toggle="tab">Basic Info</a></li>                                       
                                        <li role="presentation"><a href="#seven" aria-controls="seven" role="tab" data-toggle="tab">Health Details</a></li>
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
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button">Save</button>
                                            <button data-dismiss="modal" class="btn btn-danger delete-event waves-effect waves-light" type="button" style="display: none;">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div><div id="edit-madication" class="modal fade">
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
                                        <label class="control-label">Start Date</label>
                                         <input type="text" id="editMedicationStartDate" placeholder="MM/DD/YYYY" class="form-control">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">End Date</label>
                                         <input type="text" id="editMedicationEndDate" placeholder="MM/DD/YYYY" class="form-control">
                                        </div></div>
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button">Save</button>
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
                                        <label class="control-label">Allergy Name</label>
                                        <input type="text" id="allergyName" data-parsley-trigger="focusout" data-parsley-type="alphanum" class="form-control">
                                        </div>
                                        </div>

                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Reaction</label>
                                        <input type="text"  id="reaction" data-parsley-trigger="focusout" data-parsley-type="alphanum" class="form-control">
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control" id="status">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Start Date</label>
                                         <input type="text" id="startDate" placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div><div class="col-md-6">
                                        <div class="form-group"><label class="control-label">End Date</label>
                                         <input type="text" id="endDate" placeholder="DD/MM/YYYY"  class="form-control">
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
                                        <%User nur = (User)session.getAttribute("user"); %>
                                         <input type = "hidden" id="nurseId" value="<%=nur.getId() %>" />
                                         <input type = "hidden" id="nurseFirstName" value="<%=nur.getFirstName()%>" />
                                         <input type = "hidden" id="nurseLastName" value="<%=nur.getLastName() %>" />
                                        <input type = "hidden" id="clinicianId" value="${clinicianIdNurse}" />
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Weight (kg)</label>
                                        <input id="weight" class="form-control" data-parsley-trigger="focusout" data-parsley-type="digits">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Height (cms)</label>
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
                                        <label class="control-label"> 	Blood Group</label>
                                        <input type="text" id="bloodGroup"  class="form-control" data-parsley-pattern="/^[ A-Za-z+-]*$/" data-parsley-error-message="Only alphabets,+ and - are allowed" data-parsley-trigger="focusout">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label"> 	Blood Pressure</label>
                                        <input type="text" id="bloodPressure" class="form-control" data-parsley-pattern="/^[0-9/]*$/" data-parsley-trigger="focusout" >
                                        </div></div>
                                        
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Date</label>
                                        <input id="pdate" type="text"  data-parsley-trigger="change" placeholder="MM/DD/YYYY" Parsley-Error-Message="Date field cannot be empty" class="form-control" required="required" readOnly="readOnly"/>
                                        </div></div>
                                        </div>
                                        </div>
                                        </form>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button" id="vitalSave">Save</button>
                                            <button data-dismiss="modal" class="btn btn-danger delete-event waves-effect waves-light" type="button" style="display: none;">Delete</button>
                                        </div>
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
                                        <form id="chronicForm" name="chronicForm" data-parsley-trigger="input" data-parsley-focus="first" data-parsley-validate>
                                        <div class="row">
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
                                        <label class="control-label">Status</label>
                                        <select class="form-control" id="chronicSatus">
                                        <option>Active</option>
                                        <option>Inactive</option>
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
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-primary save-event waves-effect waves-light" type="button" id="chronicIllnessSave">Save</button>
                                            <button data-dismiss="modal" class="btn btn-danger delete-event waves-effect waves-light" type="button" style="display: none;">Delete</button>
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
                                        <input type="hidden" id="clinicianid" value="${clinicianIdNurse}"/>
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
                                        <input type="hidden" id="editClinicianId" value="${clinicianIdNurse}" class="form-control" disabled>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Allergy Name	</label>
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
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="one">
                                            <form>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>User Name</label>
                                                            <input type="text" name="name" value="${user.userName}" placeholder="test123" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Email</label>
                                                            <input type="text" name="name" value="${user.emailAddress}" placeholder="abc@gmail.com" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Date of Birth</label>
                                                            <input type="text" name="name" value="${sDob}" placeholder="11/06/1991" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>First Name</label>
                                                            <input type="text" name="name" value="${user.firstName}" placeholder="Que" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Middle Name</label>
                                                            <input type="text" name="name" value="${user.middleName}" placeholder="Test" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Last Name</label>
                                                            <input type="text" name="name" value="${user.lastName}" placeholder="hoffman" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Gender</label>
                                                            <input type="text" name="name" value="${gender}" placeholder="Male" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Marital Status</label>
                                                            <input type="text" name="name" value="${maritalStatus}" placeholder="Single" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Mobile Phone</label>
                                                            <input type="text" name="name" value="${user.mobileNumber}" placeholder="+91-123456789000" class="form-control" disabled />
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Home Phone</label>
                                                            <input type="text" name="name" value="${user.homeNumber}" placeholder="+91-1234567890000" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 1</label>
                                                            <input type="text" name="name" value="${address.addressLineOne}" placeholder="24 Street, Down Town" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 2</label>
                                                            <input type="text" name="name" value="${address.addressLineTwo}" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>City</label>
                                                            <input type="text" name="name" value="${city}" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Zip Code</label>
                                                            <input type="text" name="name" value="${address.zipcode}" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>State</label>
                                                            <input type="text" name="name" value="${state}" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>

                                                </div>

                                                <h3>Employment Details</h3>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Employment Status</label>
                                                            <input type="text" name="name" value="${employementStatus }" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 1</label>
                                                            <input type="text" name="name" value="${address1.addressLineOne }" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 2</label>
                                                            <input type="text" name="name" value="${address1.addressLineTwo }" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>City</label>
                                                            <input type="text" name="name" value="${officecity}" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>State</label>
                                                            <input type="text" name="name" value="${officestate}" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Zip Code</label>
                                                            <input type="text" name="name" value="${address1.zipcode}" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>

                                                </div>
                                                <h3>Insurance Details</h3>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Payer Name</label>
                                                            <input type="text" name="name" value="${insuranceDetail.payerName }" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Insurance Type</label>
                                                            <input type="text" name="name" value="${insuranceDetail.insuranceType }" placeholder="" class="form-control" disabled />
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>                                        
                                        <div role="tabpanel" class="tab-pane" id="seven">
                                   <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#vitals" aria-controls="vitals" role="tab" data-toggle="tab">Vitals</a></li>                                       
                                        <li role="presentation"><a href="#allergies" aria-controls="allergies" role="tab" data-toggle="tab">Allergies</a></li>
                                        <li role="presentation"><a href="#chronic" aria-controls="chronic" role="tab" data-toggle="tab">Chronic Illness</a></li>
                                         </ul>
                                      <div class="tab-content">  <div role="tabpanel" class="tab-pane active" id="vitals">
                                            <h3>Vitals <button class="btn btn-primary pull-right" data-toggle="modal" data-target="#add-vital">Add</button></h3>
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
                                                        
                                                </table>
                                            </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="allergies">

                                            <h3>Allergies <button class="btn btn-primary pull-right"  data-toggle="modal" data-target="#add-allergy">Add</button></h3>
                                            <div class="table-responsive">
                                                <table class="table table-bordered"  id="allergyTable">
                                                    <thead>
                                                        <tr>
                                                            <th>Allergy Name</th>
                                                            <th>Date</th>
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
                                    </div></div>
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
                        <!-- <li class="list-group-item">
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
 -->
                    </ul>
                </div>
            </div>
            <!-- /Right-bar -->

        </div>
        <!-- END wrapper -->

        <!-- Modal -->
        <div class="modal fade" id="vitals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Edit Vitals</h4>
                    </div>
                    <div class="modal-body">
                       <div class="row">
                           <div class="col-sm-6">
                               <div class="form-group">
                                   <label>Weight (kg)</label>
                                   <input type="text" name="name" value="" placeholder="Enter Weight" class="form-control" />
                               </div>
                           </div>
                           <div class="col-sm-6">
                               <div class="form-group">
                                   <label>Height (cms)</label>
                                   <input type="text" name="name" value="" placeholder="Enter height" class="form-control" />
                               </div>
                           </div>
                       </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Body Temprature (deg F)</label>
                                    <input type="text" name="name" value="" placeholder="Enter Body Temprature" class="form-control" />
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Heart Rate</label>
                                    <input type="text" name="name" value="" placeholder="Enter Heart Rate" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Blood Group</label>
                                    <input type="text" name="name" value="" placeholder="Enter Blood Group" class="form-control" />
                                </div>
                            </div>                          
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Submit</button>
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
		<script src="assets/js/main.js"></script> 
<!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
    

        <!-- Dashboard init -->
        <script src="assets/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        <script src="assets/js/nurseeditpatient.js"></script>
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
		     
		     
        </script>
 
      <script>
      $( function() {
    	    var dateFormat = "mm/dd/yy",
    	      from = $( "#startDate" )
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
    	      to = $( "#endDate" ).datepicker({
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
          $( function() {
        		 var dateFormat = "mm/dd/yy",
        	     from = $( "#pdate" )
        	       .datepicker({
        	          defaultDate: '01-01-1985',
        	          changeYear: true,
        	        changeMonth: true ,
        	        maxDate: "+0M +0D"
        	  });
        	});
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
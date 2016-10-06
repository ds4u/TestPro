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
 <%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():"";%>
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
                                <a href="physician-dashboard.html" class="waves-effect"><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                            </li>

                            <li>
                                <a href="physician-todolist.html" class="waves-effect "><i class="fa fa-list"></i> <span> To Do List </span> </a>
                            </li>

                            <li>
                                <a href="physician-scheduling.html" class="waves-effect"><i class="fa fa-calendar-plus-o"></i> <span> Scheduling  </span></a>
                                
                            </li>                         

                            <li>
                                <a href="physician-appointment.html" class="waves-effect"><i class="fa fa-calendar"></i> <span> My Appointments </span></a>                               
                            </li>

                            <li><a href="physician-patient.html" class="waves-effect active"><i class="fa fa-wheelchair"></i><span> Patients </span></a>
                            </li>
                            <li>
                                <a href="physician-messages.html" class="waves-effect"><i class="fa fa-envelope"></i><span> Messages </span></a>
                            </li>
                            <li>
                                <a href="physician-encounter.html" class="waves-effect"><i class="fa fa-file"></i><span> Encounter Report </span></a>
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
                                    <li role="presentation" class="active"><a href="#one" aria-controls="one" role="tab" data-toggle="tab">Basic Info</a></li>
                                    <li role="presentation"><a href="#two" aria-controls="two" role="tab" data-toggle="tab">Guarantor</a></li>
                                    <li role="presentation"><a href="#seven" aria-controls="seven" role="tab" data-toggle="tab">Health Details</a></li>
                                    <li role="presentation"><a href="#three" aria-controls="three" role="tab" data-toggle="tab">Open Task</a></li>
                                    <li role="presentation"><a href="#four" aria-controls="four" role="tab" data-toggle="tab">Notes</a></li>
                                    <li role="presentation"><a href="#five" aria-controls="five" role="tab" data-toggle="tab">Documents</a></li>
                                    <li role="presentation"><a href="#six" aria-controls="six" role="tab" data-toggle="tab">Clinician</a></li>
                                     <li role="presentation"><a href="#eight" aria-controls="six" role="tab" data-toggle="tab">Medication</a></li>
                                </ul>

<div id="add-madication" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                            <h4 class="modal-title"><strong>Medication</strong></h4>
                                        </div>
                                        <div class="modal-body">
                                        <form>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Medication Name</label>
                                        <input type="text" placeholder="Asprin" class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Strength</label>
                                         <input type="text" placeholder="250 mg" class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">frequency</label>
                                        <input type="text" placeholder="1 tab daily" class="form-control">
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Start Date</label>
                                         <input type="text" placeholder="MM/DD/YYYY" class="form-control">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">End Date</label>
                                         <input type="text" placeholder="MM/DD/YYYY" class="form-control">
                                        </div></div>
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-success save-event waves-effect waves-light" type="button">Save</button>
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
                                        <form>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Allergy Name</label>
                                        <input type="text" placeholder="Redness" class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Date</label>
                                         <input type="text" placeholder="dd/mm/yyyy"  class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Reaction</label>
                                        <input type="text" placeholder="lethargic" class="form-control">
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div>
                                        
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-success save-event waves-effect waves-light" type="button">Save</button>
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
                                        <div class="modal-body">
                                        <form>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Weight (kg)</label>
                                        <input type="text" placeholder="80" class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Height (cms)</label>
                                         <input type="text" placeholder=" 175"  class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Body Temperature (deg. F)</label>
                                        <input type="text"  placeholder="99" class="form-control">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Pulse Rate</label>
                                        <input type="text"  placeholder="75" class="form-control">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label"> 	Blood Group</label>
                                        <input type="text"  placeholder="B+" class="form-control">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label"> 	Blood Pressure</label>
                                        <input type="text"  placeholder="80/120" class="form-control">
                                        </div></div>
                                        
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Date</label>
                                         <input  type="text" placeholder="MM/DD/YYYY" class="form-control">
                                        </div></div>
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-success save-event waves-effect waves-light" type="button">Save</button>
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
                                        <form>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Illness</label>
                                        <input type="text" placeholder="Redness"  class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Date</label>
                                         <input type="text" placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Reaction</label>
                                        <input type="text"  placeholder="lethargic" class="form-control">
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div>
                                        
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-success save-event waves-effect waves-light" type="button">Save</button>
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
                                        <form>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Illness1</label>
                                        <input type="text" disabled="" placeholder="Redness"  class="form-control">
                                        </div>
                                        </div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Reaction</label>
                                        <input type="text" disabled=""  placeholder="lethargic" class="form-control">
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div>
                                        <div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Start Date</label>
                                         <input type="text"  placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div><div class="col-md-6">
                                        <div class="form-group"><label class="control-label">End Date</label>
                                         <input type="text"  placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div>
                                        
                                        
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-success save-event waves-effect waves-light" type="button">Save</button>
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
                                        <form>
                                        <div class="row">
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Allergy Name	</label>
                                        <input type="text" disabled="" placeholder="Redness"  class="form-control">
                                        </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Reaction</label>
                                        <input type="text" disabled=""  placeholder="lethargic" class="form-control">
                                        </div></div><div class="col-md-6">
                                        <div class="form-group">
                                        <label class="control-label">Status</label>
                                        <select class="form-control">
                                        <option>Active</option>
                                        <option>Inactive</option>
                                        </select>
                                        </div></div><div class="col-md-6">
                                        <div class="form-group"><label class="control-label">Start Date</label>
                                         <input type="text"  placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div><div class="col-md-6">
                                        <div class="form-group"><label class="control-label">End Date</label>
                                         <input type="text"  placeholder="DD/MM/YYYY"  class="form-control">
                                        </div>
                                        </div>
                                        
                                        
                                        </div></form></div>
                                        <div class="modal-footer">
                                            <button data-dismiss="modal" class="btn btn-danger waves-effect" type="button">Cancel</button>
                                            <button class="btn btn-success save-event waves-effect waves-light" type="button">Save</button>
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
                                                        <input type="text" name="name" value="" placeholder="test123" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Email</label>
                                                        <input type="text" name="name" value="" placeholder="abc@gmail.com" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Date of Birth</label>
                                                        <input type="text" name="name" value="" placeholder="11/06/1991" class="form-control" disabled />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>First Name</label>
                                                        <input type="text" name="name" value="" placeholder="Que" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Middle Name</label>
                                                        <input type="text" name="name" value="" placeholder="Test" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Last Name</label>
                                                        <input type="text" name="name" value="" placeholder="hoffman" class="form-control" disabled />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Gender</label>
                                                        <input type="text" name="name" value="" placeholder="Male" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Marital Status</label>
                                                        <input type="text" name="name" value="" placeholder="Single" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Mobile Phone</label>
                                                        <input type="text" name="name" value="" placeholder="+91-123456789000" class="form-control" disabled />
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Home Phone</label>
                                                        <input type="text" name="name" value="" placeholder="+91-1234567890000" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Address Line 1</label>
                                                        <input type="text" name="name" value="" placeholder="24 Street, Down Town" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Address Line 2</label>
                                                        <input type="text" name="name" value="" placeholder="Test address" class="form-control" disabled />
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>City</label>
                                                        <input type="text" name="name" value="" placeholder="Newyork" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Zip Code</label>
                                                        <input type="text" name="name" value="" placeholder="123456" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>State</label>
                                                        <input type="text" name="name" value="" placeholder="test State" class="form-control" disabled />
                                                    </div>
                                                </div>

                                            </div>

                                            <h3>Employment Details</h3>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Employment Status</label>
                                                        <input type="text" name="name" value="" placeholder="Salaried" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Address Line 1</label>
                                                        <input type="text" name="name" value="" placeholder="test street" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Address Line 2</label>
                                                        <input type="text" name="name" value="" placeholder="demo town" class="form-control" disabled />
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>City</label>
                                                        <input type="text" name="name" value="" placeholder="test City" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>State</label>
                                                        <input type="text" name="name" value="" placeholder="test State" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Zip Code</label>
                                                        <input type="text" name="name" value="" placeholder="123456" class="form-control" disabled />
                                                    </div>
                                                </div>

                                            </div>
                                            <h3>Insurance Details</h3>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Payer Name</label>
                                                        <input type="text" name="name" value="" placeholder="test Company" class="form-control" disabled />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Insurance Type</label>
                                                        <input type="text" name="name" value="" placeholder="Primary" class="form-control" disabled />
                                                    </div>
                                                </div>   
                                            </div>
                                        </form>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="two">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="text" name="name" value="" placeholder="abc@gmail.com" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Date of Birth</label>
                                                    <input type="text" name="name" value="" placeholder="11/06/1991" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>First Name</label>
                                                    <input type="text" name="name" value="" placeholder="Que" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Middle Name</label>
                                                    <input type="text" name="name" value="" placeholder="Test" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Last Name</label>
                                                    <input type="text" name="name" value="" placeholder="hoffman" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Gender</label>
                                                    <input type="text" name="name" value="" placeholder="Male" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Marital Status</label>
                                                    <input type="text" name="name" value="" placeholder="Single" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Mobile Phone</label>
                                                    <input type="text" name="name" value="" placeholder="+91-123456789000" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Home Phone</label>
                                                    <input type="text" name="name" value="" placeholder="+91-1234567890000" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Address Line 1</label>
                                                    <input type="text" name="name" value="" placeholder="24 Street, Down Town" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Address Line 2</label>
                                                    <input type="text" name="name" value="" placeholder="Test address" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <input type="text" name="name" value="" placeholder="Newyork" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Zip Code</label>
                                                    <input type="text" name="name" value="" placeholder="123456" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>State</label>
                                                    <input type="text" name="name" value="" placeholder="test State" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                        <h3>Employment Details</h3>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Employment Status</label>
                                                    <input type="text" name="name" value="" placeholder="Salaried" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Office Address Line 1</label>
                                                    <input type="text" name="name" value="" placeholder="test street" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Office Address Line 2</label>
                                                    <input type="text" name="name" value="" placeholder="demo town" class="form-control" disabled />
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <input type="text" name="name" value="" placeholder="test City" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>State</label>
                                                    <input type="text" name="name" value="" placeholder="test State" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Zip Code</label>
                                                    <input type="text" name="name" value="" placeholder="123456" class="form-control" disabled />
                                                </div>
                                            </div>

                                        </div>
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
                                                <table class="table table-bordered">
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
                                                    <tbody>
                                                        <tr>
                                                            <td>80</td>
                                                            <td>175</td>
                                                            <td>99 </td>
                                                            <td>75</td>
                                                            <td>B+</td>
                                                            <td>80/120</td>
                                                            <td>12/12/2016</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="allergies">

                                            <h3>Allergies <button class="btn btn-primary pull-right"  data-toggle="modal" data-target="#add-allergy">Add</button></h3>
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Allergy Name</th>
                                                            <th>Date</th>
                                                            <th>Reaction</th>
                                                            <th>Status</th>
                                                            <th>Edit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                             <td><a data-target="#edit-illness" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                             <td><a data-target="#edit-illness" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                             <td><a data-target="#edit-illness" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="chronic">

                                            <h3>Chronic Illness <button class="btn btn-primary pull-right" data-toggle="modal" data-target="#add-chronic">Add</button></h3>
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
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
                                                    <tbody>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>NA</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                             <td><a data-target="#edit-chronic" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>NA</td>
                                                            <td>lethargic</td>
                                                            <td>Active</td>
                                                             <td><a data-target="#edit-chronic" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>11/06/2016</td>
                                                            <td>12/06/2016</td>
                                                            <td>lethargic</td>
                                                            <td>Inactive</td>
                                                             <td><a data-target="#edit-chronic" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            </div>
                                            </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="three">                                            
                                           <div class="row">
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Date of Birth</label>
                                                       <input type="text" name="name" value="" placeholder="11/06/1991" class="form-control" disabled />
                                                   </div>
                                               </div>
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Marital Status</label>
                                                       <input type="text" name="name" value="" placeholder="Single" class="form-control" disabled />
                                                   </div>
                                               </div>
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Mobile Phone</label>
                                                       <input type="text" name="name" value="" placeholder="+91-123456789000" class="form-control" disabled />
                                                   </div>
                                               </div>

                                           </div>
                                           <div class="row">
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Home Phone</label>
                                                       <input type="text" name="name" value="" placeholder="+91-1234567890000" class="form-control" disabled />
                                                   </div>
                                               </div>
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Address Line 1</label>
                                                       <input type="text" name="name" value="" placeholder="24 Street, Down Town" class="form-control" disabled />
                                                   </div>
                                               </div>
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Address Line 2</label>
                                                       <input type="text" name="name" value="" placeholder="Test address" class="form-control" disabled />
                                                   </div>
                                               </div>

                                           </div>
                                           <div class="row">
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>City</label>
                                                       <input type="text" name="name" value="" placeholder="Newyork" class="form-control" disabled />
                                                   </div>
                                               </div>
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Zip Code</label>
                                                       <input type="text" name="name" value="" placeholder="123456" class="form-control" disabled />
                                                   </div>
                                               </div>
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>State</label>
                                                       <input type="text" name="name" value="" placeholder="test State" class="form-control" disabled />
                                                   </div>
                                               </div>

                                           </div>
                                        <div class="row">
                                            <div class="col-sm-12 text-right">
                                                <a href="#" class="btn btn-primary">Approve</a>
                                                <a href="#" class="btn btn-danger">Decline</a>
                                            </div>
                                        </div>
                                           <h3>Employment Details</h3>
                                           <div class="row">
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Employment Status</label>
                                                       <input type="text" name="name" value="" placeholder="Salaried" class="form-control" disabled />
                                                   </div>
                                               </div>
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Office Address Line 1</label>
                                                       <input type="text" name="name" value="" placeholder="test street" class="form-control" disabled />
                                                   </div>
                                               </div>
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Office Address Line 2</label>
                                                       <input type="text" name="name" value="" placeholder="demo town" class="form-control" disabled />
                                                   </div>
                                               </div>

                                           </div>

                                           <div class="row">
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>City</label>
                                                       <input type="text" name="name" value="" placeholder="test City" class="form-control" disabled />
                                                   </div>
                                               </div>
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>State</label>
                                                       <input type="text" name="name" value="" placeholder="test State" class="form-control" disabled />
                                                   </div>
                                               </div>
                                               <div class="col-sm-4">
                                                   <div class="form-group">
                                                       <label>Zip Code</label>
                                                       <input type="text" name="name" value="" placeholder="123456" class="form-control" disabled />
                                                   </div>
                                               </div>

                                           </div>
                                        <div class="row">
                                            <div class="col-sm-12 text-right">
                                                <a href="#" class="btn btn-primary">Approve</a>
                                                <a href="#" class="btn btn-danger">Decline</a>
                                            </div>
                                        </div>

                                        <h3>Insurance Details</h3>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Payer Name</label>
                                                    <input type="text" name="name" value="" placeholder="test Company" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Insurance Type</label>
                                                    <input type="text" name="name" value="" placeholder="Primary" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 text-right">
                                                <a href="#" class="btn btn-primary">Approve</a>
                                                <a href="#" class="btn btn-danger">Decline</a>
                                            </div>
                                        </div>
                                        <hr />
                                       <h3>Guarantor</h3>

                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="text" name="name" value="" placeholder="abc@gmail.com" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Date of Birth</label>
                                                    <input type="text" name="name" value="" placeholder="11/06/1991" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>First Name</label>
                                                    <input type="text" name="name" value="" placeholder="Que" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Middle Name</label>
                                                    <input type="text" name="name" value="" placeholder="Test" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Last Name</label>
                                                    <input type="text" name="name" value="" placeholder="hoffman" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Gender</label>
                                                    <input type="text" name="name" value="" placeholder="Male" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Marital Status</label>
                                                    <input type="text" name="name" value="" placeholder="Single" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Mobile Phone</label>
                                                    <input type="text" name="name" value="" placeholder="+91-123456789000" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Home Phone</label>
                                                    <input type="text" name="name" value="" placeholder="+91-1234567890000" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Address Line 1</label>
                                                    <input type="text" name="name" value="" placeholder="24 Street, Down Town" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Address Line 2</label>
                                                    <input type="text" name="name" value="" placeholder="Test address" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <input type="text" name="name" value="" placeholder="Newyork" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Zip Code</label>
                                                    <input type="text" name="name" value="" placeholder="123456" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>State</label>
                                                    <input type="text" name="name" value="" placeholder="test State" class="form-control" disabled />
                                                </div>
                                            </div>
                                        </div>
                                       
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Employment Status</label>
                                                    <input type="text" name="name" value="" placeholder="Salaried" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Office Address Line 1</label>
                                                    <input type="text" name="name" value="" placeholder="test street" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Office Address Line 2</label>
                                                    <input type="text" name="name" value="" placeholder="demo town" class="form-control" disabled />
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <input type="text" name="name" value="" placeholder="test City" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>State</label>
                                                    <input type="text" name="name" value="" placeholder="test State" class="form-control" disabled />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label>Zip Code</label>
                                                    <input type="text" name="name" value="" placeholder="123456" class="form-control" disabled />
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 text-right">
                                                <a href="#" class="btn btn-primary">Approve</a>
                                                <a href="#" class="btn btn-danger">Decline</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="four">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Physician Name</th>
                                                        <th>Document Name</th>
                                                        <th>Date</th>                                                        
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>John Doe</td>
                                                        <td>test.docx</td>                                                        
                                                        <td>11/06/2016</td>                                                       
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>     
                                                    <tr>
                                                        <td>John Doe</td>
                                                        <td>test.docx</td>
                                                        <td>11/06/2016</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>   
                                                    <tr>
                                                        <td>John Doe</td>
                                                        <td>test.docx</td>
                                                        <td>11/06/2016</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>   
                                                    <tr>
                                                        <td>John Doe</td>
                                                        <td>test.docx</td>
                                                        <td>11/06/2016</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                        </td>
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
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Lab</td>
                                                        <td>test.docx</td>
                                                        <td>11/06/2016</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Lab</td>
                                                        <td>test.docx</td>
                                                        <td>11/06/2016</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Lab</td>
                                                        <td>test.docx</td>
                                                        <td>11/06/2016</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="six">
                                        <h3>Assigned Clinicians</h3>
                                        <p>This patient has been assigned to the following clinicians. Only assigned clinicians can create or view notes for this patient. Only a clinical administrator or clinicians who are already assigned can assign another clinician to this patient. Only a clinical administrator may unassign clinicians from patients</p>
                                       
                                         <div class="search">
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
                                        </div>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Physician</th>                                                   
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>John Doe</td>                                                    
                                                    <td>
                                                        <a href="#"><i class="fa fa-times" aria-hidden="true"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Sara Williams</td>
                                                    <td>
                                                        <a href="#"><i class="fa fa-times" aria-hidden="true"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Test Doe</td>
                                                    <td>
                                                        <a href="#"><i class="fa fa-times" aria-hidden="true"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>John Doe</td>
                                                    <td>
                                                        <a href="#"><i class="fa fa-times" aria-hidden="true"></i></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="eight">
                                        <h3>Medication <button class="btn btn-primary pull-right" data-toggle="modal" data-target="#add-madication">Add</button></h3>
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
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
                                                    <tbody>
                                                        <tr>
                                                            <td>Redness</td>
                                                           <td>250 mg</td>
                                                           <td>1 tab daily</td>
                                                            <td>Active</td>
                                                             <td>11/06/2016</td>
                                                            <td>NA</td>
                                                             <td><a data-target="#vitals" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                            <td>250 mg</td>
                                                           <td>1 tab daily</td>
                                                            <td>Active</td>
                                                             <td>11/06/2016</td>
                                                            <td>NA</td>
                                                             <td><a data-target="#vitals" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Redness</td>
                                                           <td>250 mg</td>
                                                           <td>1 tab daily</td>
                                                            <td>Inactive</td>
                                                             <td>11/06/2016</td>
                                                            <td>12/06/2016</td>
                                                             <td><a data-target="#vitals" data-toggle="modal" href="#"><i aria-hidden="true" class="fa fa-pencil"></i></a></td>
                                                        </tr>
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
                        <form>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Physician Name</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="Dr. John Doe" disabled />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Patient Name</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="Sara Williams" disabled />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Date & Time</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="11/06/2016 11:20 AM" disabled />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Duration</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="30 Minutes" disabled />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Presenting Problem</label>
                                        <textarea class="form-control" rows="2"></textarea>
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
        <div class="modal fade" id="treat-advice" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Treatment Advice</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Physician Name</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="Dr. John Doe" disabled />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Patient Name</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="Sara Williams" disabled />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Date & Time</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="11/06/2016 11:20 AM" disabled />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Duration</label>
                                        <input type="text" name="name" value="" class="form-control" placeholder="30 Minutes" disabled />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Presenting Problem</label>
                                        <textarea class="form-control" rows="2"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Instructions</label>
                                        <textarea class="form-control" rows="2"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Recomedations</label>
                                        <textarea class="form-control" rows="2"></textarea>
                                    </div>
                                </div>
                            </div>
                        </form>
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
		<script src="assets/js/main.js"></script> 

        <!-- Dashboard init -->
        <script src="assets/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>
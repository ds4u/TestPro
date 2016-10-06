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

        <title>Add Patient</title>

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
 							<%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():""; %>
                            <img src="<%=image%>" alt="user-img"  class="img-circle img-thumbnail img-responsive">
                            <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                        </div>
                        	<h5 class="user-name"><%=((User)session.getAttribute("user")).getFirstName()+" "+ ((User)session.getAttribute("user")).getLastName() %> </h5>
                       <ul class="list-inline">
                            
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
                                <a href="recdashboard.do" class="waves-effect "><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                            </li>

                            <li>
                                <a href="recplistpatient.do" class="waves-effect active"><i class="fa fa-wheelchair"></i> <span> Patients </span> </a>
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
                                <h2>Patient Details</h2>
                            </div>
                             <c:if test="${not empty errorusername}">
						<div class="col-sm-12">
						<div class="alert alert-danger" id="patientaddmessage">
                                                       ${errorusername}
                                                </div>
                                                </div>
                          </c:if>
                          <c:if test="${not empty errorpatient}">
						<div class="col-sm-12">
						<div class="alert alert-danger" id="patientaddmessage">
                                                       ${errorpatient}
                                                </div>
                                                </div>
                          </c:if>       
                              <c:if test="${not empty errorguarantor}">
                        <div class="col-sm-12">
						<div class="alert alert-danger" id="patientaddmessage">
                                                       ${errorguarantor}
                                                </div>
                                                </div>
                          </c:if>     
                            <div class="col-sm-12">
                                <div class="bg-picture card-box2">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active tab1"><a href="#one" aria-controls="one" role="tab" data-toggle="tab">Basic Info</a></li>
                                        <li role="presentation" class="tab2"><a href="#two" aria-controls="two" role="tab" data-toggle="tab">Guarantor</a></li>
                                        <li role="presentation"><a href="#four" aria-controls="four" role="tab" data-toggle="tab">Notes</a></li>
                                        <li role="presentation"><a href="#five" aria-controls="five" role="tab" data-toggle="tab">Documents</a></li>
                                        <li role="presentation"><a href="#six" aria-controls="six" role="tab" data-toggle="tab">Clinician</a></li>
                                    <!-- <li role="presentation"><a href="#eight" aria-controls="eight" role="tab" data-toggle="tab">Billing</a></li> -->    
                                    </ul>
									<form:form data-parsley-trigger="input" data-parsley-focus="first" ata-parsley-validate=""  method="POST" action="recpsavepatient.do" commandName="patientDTO" id="patientForm">
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                      
                                        <div role="tabpanel" class="tab-pane active" id="one">                                            
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>User Name</label>
                                                             <form:input  type="text" path="userName" id="username" data-parsley-trigger="focusout" data-parsley-length="[2, 20]" data-parsley-type="alphanum"  placeholder="Enter Username" class="form-control"  />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Email</label>
                                                            <form:input data-parsley-pattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$" path="emailAddress" value="" data-parsley-length="[2, 45]"  placeholder="Enter Email" id="email" class="form-control" data-parsley-trigger="focusout" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group" >
                                                            <label>Date of Birth</label>
                                                            <form:input path="dateOfBirth" id="pdateofbirth" type="text" name="name" value="${pdob }" data-parsley-trigger="change" placeholder="MM/DD/YYYY" Parsley-Error-Message="You Must Input A Birth Date" class="form-control" required="required" readOnly="readOnly"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>First Name</label>
                                                            <form:input   data-parsley-pattern="^[a-zA-Z]+$" data-parsley-length="[2, 20]"  path="firstName" id="firstName" data-parsley-trigger="focusout"  value="" placeholder="Enter First Name" class="form-control" required="required" data-parsley-group="block1"/>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Middle Name</label>
                                                            <form:input path="middleName" type="text" name="name" value="" placeholder="Enter Middle Name" class="form-control" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Last Name</label>
                                                            <form:input  data-parsley-pattern="^[a-zA-Z]+$" data-parsley-message="Enter valid Lastname" path="lastName" id="lastName" value="" data-parsley-length="[2, 20]" data-parsley-trigger="focusout" placeholder="Enter Last Name" class="form-control" required="required" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Gender</label>
                                                             <form:select class="form-control" path="gender" placeholder="Select Gender" data-parsley-trigger="focusout" data-parsley-error-message="Select Gender" required="required">
				                                             <form:option value="">-Select Gender-</form:option>
				                                             <form:option value="1" label="Male"/>
				                                             <form:option value="2" label="Female"/>
				                                             </form:select>  
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Marital Status</label>
		                                                    <form:select class="form-control" path="maritalStatus" data-parsley-trigger="focusout" data-parsley-error-message="Select Marital Status" required="required">
					                                        <form:option value="">-Select Marital Status-</form:option>
					                                        <form:option value="1" label="Single"/>
					                                        <form:option value="2" label="Married"/>
					                                        <form:option value="3" label="Divorced"/>
					                                        <form:option value="4" label="Widow"/>
					                                        </form:select>      
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Mobile Phone</label>
                                                            <form:input type="text" path="mobileNumber" id="mobileNumber" value="" placeholder="Enter Mobile Phone" data-parsley-length="[10, 14]" data-parsley-type="digits" class="form-control" required="required" data-parsley-trigger="focusout" />
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Home Phone</label>
                                                            <form:input type="text" path="homeNumber" data-parsley-trigger="focusout" value="" data-parsley-length="[10, 14]" data-parsley-type="digits" placeholder="Enter Home Phone" class="form-control"/>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 1</label>
                                                            <form:input  type="text" path="homeAddressLineOne" id="addressLineOne" value="" data-parsley-length="[2, 45]" data-parsley-trigger="focusout"  placeholder="Enter Address 1" class="form-control" required="required" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 2</label>
                                                            <form:input  maxlength="45"  type="text" path="homeAddressLineTwo" value="" placeholder="Enter Address 2" class="form-control" />
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>State</label>
                                                             <form:select type="text" path="homeStateID" value="" placeholder="Enter State" class="form-control" id="statelist" parsley-trigger="focusout" data-parsley-error-message="Select State" required="required">
		                                                     <form:option value="">-Select-</form:option>
		                                                     <form:options itemLabel="name" itemValue="id" items="${statelist}"/>
		                                                     </form:select>    
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group" id="cityDiv">
                                                             <label>City</label>
                                                            <%--   <form:select  path='homeCityID' class='form-control' id="city" parsley-trigger="change" data-parsley-error-message="Select City" required="required">
			                                                   <form:option value="" >-Select-</form:option>
			                                                   <form:options itemLabel="name" itemValue="id" items="${citylist}"/>
			    											   </form:select> --%>
			    									<select type="text" path='homeCityID' id="cityList" value="" placeholder="Enter City" class="form-control" data-parsley-trigger="focusout" data-parsley-error-message="Enter City" required="required">
                                                   <c:choose>
                                                   	<c:when test="${city != null }">
                                                   		<option>${city.name }</option>
                                                   	</c:when>
                                                   	<c:otherwise>
                                                   		<option>-Select City-</option>
                                                   	</c:otherwise>
			                                       		
			                                       	</c:choose>
			                                       </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Zip Code</label>
                                                             <form:input  path="homeZipcode" id="zipcode"  value="" data-parsley-type="alphanum" data-parsley-length="[6, 8]" placeholder="Enter ZipCode" class="form-control" required="required" data-parsley-trigger="focusout" />
                                                        </div>
                                                    </div>
                                                    
                                                </div>

                                                <h3>Employment Details</h3>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Employment Status</label>
                                                            <form:select type="text" path="EmployementStatus" value="" placeholder="Enter Employment Status" class="form-control" id="employmentstatus" parsley-trigger="change" data-parsley-error-message="Select Employment Status">
		                                                     <form:option value="">-Select Employment Status-</form:option>
		                                                     <form:option value="1" label="Salaried"/>
					                                         <form:option value="2" label="Bussiness"/>
		                                                     </form:select>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 1</label>
                                                            <form:input  type="text" path="officeAddressLineOne" id="patientaddressLineOne" value="" data-parsley-length="[2, 45]" data-parsley-trigger="focusout"  placeholder="Enter Address 1" class="form-control"/>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Address Line 2</label>
                                                            <form:input  maxlength="45"  type="text" path="officeAddressLineTwo" value="" placeholder="Enter Address 2" class="form-control" />
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="row">
                                                        <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>State</label>
                                                             <form:select type="text" path="officeStateID" value="" placeholder="Enter State" class="form-control" id="pofficestatelist" parsley-trigger="change" data-parsley-error-message="Select State" >
		                                                     <form:option value="">-Select-</form:option>
		                                                     <form:options itemLabel="name" itemValue="id" items="${statelist}"/>
		                                                     </form:select>    
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group" id="pofficecityDiv">
                                                            <label>City</label>
                                                               <%-- <form:select  path='officeCityID' class='form-control' id="city" parsley-trigger="change" data-parsley-error-message="Select City" >
			                                                   <form:option value="" >-Select-</form:option>
			                                                   <form:options itemLabel="name" itemValue="id" items="${citylist}"/>
			    											   </form:select> --%>
			    											   <select type="text" value="" path='officeCityID' placeholder="Enter City" class="form-control" data-parsley-trigger="focusout" data-parsley-error-message="Enter City" required="required">
                                                   <c:choose>
                                                   	<c:when test="${city != null }">
                                                   		<option>${city.name }</option>
                                                   	</c:when>
                                                   	<c:otherwise>
                                                   		<option>-Select City-</option>
                                                   	</c:otherwise>
			                                       		
			                                       	</c:choose>
			                                       </select>
                                                        </div>
                                                    </div>                                                   
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Zip Code</label>
                                                            <form:input  path="officeZipcode" id="pofficezipcode"  value="" data-parsley-type="alphanum" data-parsley-length="[6, 8]" placeholder="Enter ZipCode" class="form-control" data-parsley-trigger="focusout" />
                                                        </div>
                                                    </div>

                                                </div>
                                                <h3>Insurance Details</h3>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Payer Name</label>
                                                            <form:input  data-parsley-pattern="^[a-zA-Z ]+$" data-parsley-message="Enter valid Payer Name"  path="payerName" id="payerName" value="" data-parsley-length="[2, 20]" data-parsley-trigger="focusout" placeholder="Enter Payer Name" class="form-control" />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>Insurance Type</label>
                                                            <form:input  data-parsley-pattern="^[a-zA-Z ]+$" data-parsley-message="Enter valid Insurance Type"  path="insuranceType" id="insuranceType" value="" data-parsley-length="[2, 20]" data-parsley-trigger="focusout" placeholder="Enter Insurance Type" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>

                                               <div class="row">
                                                    <div class="col-sm-12 text-right">
                                                        <button type="button" class="btn btn-primary"  id="nextbutton">Next</button>
                                                        <a id="hiddenbutton" role="tab" href="#two" aria-controls="two" data-toggle="tab"></a>
                                                        	
                                                    </div>
                                                </div> 
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="two">
                                            <div class="row">
                                            <div style="display :none;" class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>User Name</label>
                                                             <form:input  type="text" path="guarantorDTO.userName" id="username" data-parsley-length="[2, 20]" data-parsley-type="alphanum" data-parsley-trigger="focusout" placeholder="Enter Username" class="form-control"   />
                                                        </div>
                                                    </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Email</label>
                                                        <form:input data-parsley-pattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$" path="guarantorDTO.emailAddress" value="" data-parsley-length="[2, 45]"  placeholder="Enter Email" id="email" class="form-control" data-parsley-trigger="focusout" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Date of Birth</label>
                                                        <form:input path="guarantorDTO.dateOfBirth" id="guarantorDateofbirth" type="text" name="name" value="${gdob }" placeholder="MM/DD/YYYY" data-parsley-trigger="change" class="form-control" required="required" readOnly = "readOnly" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>First Name</label>
                                                        <form:input   data-parsley-pattern="^[a-zA-Z]+$" data-parsley-length="[2, 20]" data-parsley-message="Enter valid Firstname" path="guarantorDTO.firstName" id="firstName" data-parsley-trigger="focusout"  value="" placeholder="Enter First Name" class="form-control" required="required" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Middle Name</label>
                                                        <form:input path="guarantorDTO.middleName" type="text" name="name" value="" placeholder="Enter Middle Name" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Last Name</label>
                                                        <form:input  data-parsley-pattern="^[a-zA-Z]+$" data-parsley-message="Enter valid Lastname" data-parsley-type="alphanum" path="guarantorDTO.lastName" id="lastName" value="" data-parsley-length="[2, 20]" data-parsley-trigger="focusout" placeholder="Enter Last Name" class="form-control" required="required" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Gender</label>
                                                        <form:select class="form-control" path="guarantorDTO.gender" data-parsley-trigger="focusout" data-parsley-error-message="Select Gender" required="required">
                                            <form:option value="">-Select Gender-</form:option>
                                            <form:option value="1" label="Male"/>
                                            <form:option value="2" label="Female"/>
                                          
                                        </form:select>  
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Marital Status</label>
                                                        <form:select class="form-control" path="guarantorDTO.maritalStatus" data-parsley-trigger="focusout" data-parsley-error-message="Select Marital Status" required="required">
			                                            <form:option value="">-Select Marital Status-</form:option>
			                                            <form:option value="1" label="Single"/>
			                                            <form:option value="2" label="Married"/>
			                                            <form:option value="3" label="Divorced"/>
			                                            <form:option value="4" label="Widow"/>
			                                            </form:select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Mobile Phone</label>
                                                        <form:input type="text" path="guarantorDTO.mobileNumber" id="mobileNumber" value="" placeholder="Enter Mobile Phone" data-parsley-length="[10, 14]" data-parsley-type="digits" class="form-control" required="required" data-parsley-trigger="focusout" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Home Phone</label>
                                                        <form:input type="text" path="guarantorDTO.homeNumber" data-parsley-trigger="focusout" value="" data-parsley-length="[10, 14]" data-parsley-type="digits" placeholder="Enter Home Phone" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Address Line 1</label>
                                                        <form:input  type="text" path="guarantorDTO.homeAddressLineOne" id="addressLineOne" value="" data-parsley-length="[2, 45]" data-parsley-trigger="focusout"  placeholder="Enter Address 1" class="form-control" required="required" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Address Line 2</label>
                                                        <form:input  maxlength="45"  type="text" path="guarantorDTO.homeAddressLineTwo" value="" placeholder="Enter Address 2" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                            <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>State</label>
                                                             <form:select type="text" path="guarantorDTO.homeStateID" value="" placeholder="Enter State" class="form-control" id="guarantorstatelist" parsley-trigger="change" data-parsley-error-message="Select State" required="required">
		                                                     <form:option value="">-Select-</form:option>
		                                                     <form:options itemLabel="name" itemValue="id" items="${statelist}"/>
		                                                     </form:select>    
                                                        </div>
                                                    </div>
                                                <div class="col-sm-4">
                                                        <div class="form-group" id="guarantorcityDiv">
                                                            <label>City</label>
                                                               <form:select  path="guarantorDTO.homeCityID" class="form-control" id="city" parsley-trigger="change" data-parsley-error-message="Select City" >
			                                                   <form:option value="" >-Select-</form:option>
			                                                   <form:options itemLabel="name" itemValue="id" items="${citylist}"/>
			    											   </form:select>
                                                        </div>
                                                    </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Zip Code</label>
                                                        <form:input  path="guarantorDTO.homeZipcode" id="zipcode"  value="" data-parsley-type="alphanum" data-parsley-length="[6, 8]" placeholder="Enter ZipCode" class="form-control" required="required" data-parsley-trigger="focusout" />
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <h3>Employment Details</h3>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Employment Status</label>
                                                            <form:select type="text" path="guarantorDTO.EmployementStatus" value="" placeholder="Enter Employment Status" class="form-control" id="employmentstatus" parsley-trigger="change" data-parsley-error-message="Select Employment Status">
                                                            <form:option value="">-Select Employment Status-</form:option>
		                                                    <form:option value="1" label="Salaried"/>
					                                        <form:option value="2" label="Bussiness"/>
		                                                    </form:select>  
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Address Line 1</label>
                                                        <form:input  type="text" path="guarantorDTO.officeAddressLineOne" id="addressLineOne" value="" data-parsley-length="[2, 45]" data-parsley-trigger="focusout"  placeholder="Enter Address 1" class="form-control"  />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Address Line 2</label>
                                                        <form:input  maxlength="45"  type="text" path="guarantorDTO.officeAddressLineTwo" value="" placeholder="Enter Address 2" class="form-control" />
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="row">
                                             <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>State</label>
                                                             <form:select type="text" path="guarantorDTO.officeStateID" value="" placeholder="Enter State" class="form-control" id="gofficestatelist" parsley-trigger="change" data-parsley-error-message="Select State" >
		                                                     <form:option value="">-Select-</form:option>
		                                                     <form:options itemLabel="name" itemValue="id" items="${statelist}"/>
		                                                     </form:select>    
                                                        </div>
                                                    </div>
                                                <div class="col-sm-4">
                                                        <div class="form-group" id="gofficecityDiv">
                                                            <label>City</label>
                                                               <form:select  path='guarantorDTO.officeCityID' class='form-control' id="city" parsley-trigger="change" data-parsley-error-message="Select City" >
			                                                   <form:option value="" >-Select-</form:option>
			                                                   <form:options itemLabel="name" itemValue="id" items="${citylist}"/>
			    											   </form:select>
                                                        </div>
                                                    </div>
                                               
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label>Zip Code</label>
                                                        <form:input  path="guarantorDTO.officeZipcode" id="zipcode"  value="" data-parsley-type="alphanum" data-parsley-length="[6, 8]" placeholder="Enter ZipCode" class="form-control" data-parsley-trigger="focusout" />
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12 text-right">
                                                <button type="submit" class="btn btn-primary">Save</button>
                                                    <a href="recdashboard.do" class="btn btn-danger">Cancel</a>
                                                </div>
                                            </div>

                                        </div>
                                                                       
                                        
                                        <div role="tabpanel" class="tab-pane" id="four">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                   <tr>
                                                        <td>Currently Patient do not have any Notes.</td>
                                                       
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="five">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                   <tr>
                                                        <td>Currently Patient is do not have any documents.</td>
                                                       
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="six">
                                           

                                            
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Physician</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Currently Patient is not referred to any Physician.</td>
                                                       
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                              <!--           <div role="tabpanel" class="tab-pane" id="eight">
                                               
                                             <div class="row">
                                                <div class="col-sm-10">
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label>Clinician Name</label>
                                                                <input type="text" placeholder="Enter Clinician Name" class="form-control" value="">
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label>From Date</label>
                                                                <input type="text" placeholder="MM/DD/YYYY" class="form-control" value="">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label>To Date</label>
                                                                <input type="text" placeholder="MM/DD/YYYY" class="form-control" value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2 ">
                                                    <div class="form-group">
                                                        <label class="blank">&nbsp;</label>
                                                        <button class="btn btn-danger"><i class="fa fa-search"></i></button>
                                                         <a href="recp-charge-entry.html" class="btn btn-primary pull-right">Add Bill</a>
                                                    </div>
                                                </div>
                                            </div> 
                                                                                   
                                            <table class="table table-bordered">
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
                                                <tbody>
                                                    <tr>
                                                        <td>111</td>
                                                        <td>patient 1</td>
                                                        <td>Dr. Sara Williams</td>
                                                        <td>Lab</td>
                                                        <td>11/06/2016</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                            <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>114</td>
                                                        <td>patient 1</td>
                                                        <td>Dr. John</td>
                                                        <td>Radiology</td>
                                                        <td>11/06/2016</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                            <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>116</td>
                                                        <td>patient 1</td>
                                                        <td>Dr. Sara Williams</td>
                                                        <td>Lab</td>
                                                        <td>11/06/2016</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                            <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>117</td>
                                                        <td>patient 1</td>
                                                        <td>Dr. Sara Williams</td>
                                                        <td>Lab</td>
                                                        <td>11/06/2016</td>
                                                        <td>
                                                            <a href="#"><i class="fa fa-download" aria-hidden="true"></i></a>
                                                            <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <div class="row">
                                                <div class="col-sm-12 text-right form-group">
                                                    <a href="recp-charge-entry.html" class="btn btn-danger">Download All</a> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                -->
                                </form:form>
                                
                                
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
        <script src="assets/js/jQuery-UI-v1.12.0.js"></script>

	      <!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
        <script src="assets/js/main.js"></script>  
        <!-- Dashboard init -->
        <script src="assets/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
         <script src="assets/plugins/parsleyjs/dist/parsley.min.js"></script> 
<script>
$(document).ready(function () {
	$("#patientForm").parsley();
});
jQuery("document").ready(function($){
    
	jQuery("#statelist").change(function(){
		var stateId=jQuery('#statelist :selected').val();
		if(stateId==''){
			blankcity('patienthomecity');
			return;
		}
    	getCityList(stateId, 'patienthomecity');
		
	}); 
	jQuery("#pofficestatelist").change(function(){

		var stateId=jQuery('#pofficestatelist :selected').val();
		if(stateId==''){
			blankcity('patientofficecity');
			return;
		}
    	getCityList(stateId,'patientofficecity');
		
	});
	jQuery("#guarantorstatelist").change(function(){

		var stateId=jQuery('#guarantorstatelist :selected').val();
		if(stateId==''){
			blankcity('guarantorhomecity');
			return;
		}
        getCityList(stateId, 'guarantorhomecity');
		
	}); 
	jQuery("#gofficestatelist").change(function(){

		var stateId=jQuery('#gofficestatelist :selected').val();
		if(stateId==''){
			blankcity('guarantorofficecity');
			return;
		}
    	getCityList(stateId, 'guarantorofficecity');
		
	}); 
	/* jQuery("#staffForm").submit(function(e){
		e.preventDefault();
		var city=jQuery("#city").value();
		validateUser();
		console.info("city: "+city);
	});  */
	
});
function blankcity(value){
	if(value=='patienthomecity'){
		var html="<label>City</label><select placeholder='Enter City' name='homeCityID' path='homeCityID' parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
	    html+="<option value='' >-Select-</option>"; 
		html+="</select>";
		jQuery("#cityDiv").html(html);
		
	}
	else if(value=='patientofficecity'){
		var html="<label>City</label><select placeholder='Enter City' path='officeCityID'  name='officeCityID' parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
	    html+="<option value='' >-Select-</option>"; 
		html+="</select>";
		jQuery("#pofficecityDiv").html(html);
	}
	else if(value== 'guarantorhomecity'){
		var html="<label>City</label><select placeholder='Enter City' name='guarantorDTO.homeCityID' path='guarantorDTO.homeCityID'  parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
	    html+="<option value='' >-Select-</option>"; 
		html+="</select>";
		jQuery("#guarantorcityDiv").html(html);
	}
	else if(value=='guarantorofficecity'){
		var html="<label>City</label><select placeholder='Enter City' name='guarantorDTO.officeCityID' path='guarantorDTO.officeCityID'  parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
	    html+="<option value='' >-Select-</option>"; 
		html+="</select>";
		jQuery("#gofficecityDiv").html(html);

	}
}

function getCityList(id, value){
	var baseurl="${pageContext.request.contextPath}";
	jQuery.ajax({
		url:baseurl+"/getCityList.do",
		method:"POST",
		data:{"id":id},
		success:function(data){
			var parseData=JSON.parse(data);
			if(value=='patienthomecity'){
				cityList(parseData, value);
			}else if(value=='patientofficecity'){
				cityList(parseData, value);
			}else if(value=='guarantorhomecity'){
				cityList(parseData, value);
			}
			else if(value=='guarantorofficecity'){
				cityList(parseData, value);
			}
			
		},
		fails:function(error){
			console.info("server error.....");
		}
	});
}
function cityList(data, value){
	if(value=='patienthomecity'){
		var html="<label>City</label><select placeholder='Enter City' id='cityList' name='homeCityID' path='homeCityID' parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
	    html+="<option value='' >Select</option>"; 
		jQuery.each(data,function(index,value){

			html+="<option value='"+value.id+"' >"+value.name+"</option>"; 

		});
		html+="</select>";
		jQuery("#cityDiv").html(html);
	}
	else if(value=='patientofficecity'){
		var html="<label>City</label><select placeholder='Enter City' path='officeCityID'  name='officeCityID' parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
	    html+="<option value='' >Select</option>"; 
		jQuery.each(data,function(index,value){

			html+="<option value='"+value.id+"' >"+value.name+"</option>"; 

		});
		html+="</select>";
		jQuery("#pofficecityDiv").html(html);
	}
	else if(value== 'guarantorhomecity'){
		var html="<label>City</label><select placeholder='Enter City' name='guarantorDTO.homeCityID' path='guarantorDTO.homeCityID'  parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
	    html+="<option value='' >Select</option>"; 
		jQuery.each(data,function(index,value){

			html+="<option value='"+value.id+"' >"+value.name+"</option>"; 

		});
		html+="</select>";
		jQuery("#guarantorcityDiv").html(html);
	}
	else if(value=='guarantorofficecity'){
		var html="<label>City</label><select placeholder='Enter City' name='guarantorDTO.officeCityID' path='guarantorDTO.officeCityID'  parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
	    html+="<option value='' >Select</option>"; 
		jQuery.each(data,function(index,value){

			html+="<option value='"+value.id+"' >"+value.name+"</option>"; 

		});
		html+="</select>";
		jQuery("#gofficecityDiv").html(html);

	}
}


jQuery("document").ready(function($){
	
	jQuery("#payerName").focusout(function(){

		var payerName =$('#payerName').val();
		var insuranceType = $('#insuranceType').val();
		if(payerName != '')
    	{
			
			document.getElementById("insuranceType").setAttribute("required","required");
    	}
		if(payerName== '' && insuranceType ==''){
			$('#insuranceType').parsley().reset();
			$('#payerName').parsley().reset();
		}
	}); 
	
 
});	
function highlight(){
	$( ".tab1" ).removeClass( "active" );
	$( ".tab2" ).addClass( "active" );
	
	
}
$( function() {
	 var dateFormat = "mm/dd/yy",
     from = $( "#pdateofbirth" )
       .datepicker({
    	   yearRange: '1901:new Date()',
    	   minDate: new Date(1901, 10 - 1, 1),
           changeYear: true,
         changeMonth: true ,
         maxDate: new Date()
  });
});
$( function() {
	 var dateFormat = "mm/dd/yy",
    from = $( "#guarantorDateofbirth" )
      .datepicker({
    	  yearRange: '1901:new Date()',
   	   minDate: new Date(1901, 10 - 1, 1),
          changeYear: true,
        changeMonth: true ,
        maxDate: '-18Y',
 });
});

</script>

<script type="text/javascript">
jQuery(document).ready(function(){
jQuery("#nextbutton").click(function(){
	
	$("#pdateofbirth").parsley().validate();
	$("#firstName").parsley().validate();
	$("#lastName").parsley().validate();
	$("#gender").parsley().validate();
	$("#maritalStatus").parsley().validate();
	$("#mobileNumber").parsley().validate();
	$("#addressLineOne").parsley().validate();
	$("#statelist").parsley().validate();
	$("#zipcode").parsley().validate();
	$("#cityList").parsley().validate();
	
	var pdateofbirth = $("#pdateofbirth").parsley().isValid();
	var firstName = $("#firstName").parsley().isValid();
	var lastName = $("#lastName").parsley().isValid();
	var gender = $("#gender").parsley().isValid();
	var maritalStatus = $("#maritalStatus").parsley().isValid();
	var mobileNumber = $("#mobileNumber").parsley().isValid();
	var addressLineOne = $("#addressLineOne").parsley().isValid();
	var statelist = $("#statelist").parsley().isValid();
	var zipcode = $("#zipcode").parsley().isValid();
	var cityList = $("#cityList").parsley().isValid();
	
	if(cityList && pdateofbirth && firstName && lastName && gender && maritalStatus && mobileNumber && addressLineOne && statelist && zipcode){
		highlight();
		$('#hiddenbutton')[0].click();
		//$("a").trigger("click");
		
	/* 	role="tab" href="#two" aria-controls="two" data-toggle="tab" */
	}

});	
});

</script>

    </body>
</html>
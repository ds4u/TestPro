
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
    <meta http-equiv="X-UA-Compatible" content="IE=9;IE=10;IE=Edge,chrome=1" />
    <meta name="description" content="#">
    <meta name="author" content="#">
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <title>Dashboard</title>
  
    <!-- App css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
   
    <!--Custom css by Developer side  -->
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
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
                        <%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():"";
                                              %>
                            <img src="<%=image%>" alt="user-img"  class="img-circle img-thumbnail img-responsive">
                        <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                    </div>
                    <h5 class="user-name"> ${ sessionScope.user.firstName} ${ sessionScope.user.lastName}  </h5>
                    <ul class="list-inline">
                        <li>
                            <a href="#">
                                &nbsp;
                            </a>
                        </li>
                        <li>
                            <a href="logout.do" class="text-custom" title="Logout">
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
                            <a href="admindashboard.do" class="waves-effect"><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                        </li>
                        <li>
                            <a href="liststaff.do" class="waves-effect active"><i class="fa fa-user-md"></i> <span> Staff </span> </a>
                        </li>
                        <li>
                            <a href="listpatient.do" class="waves-effect"><i class="fa fa-wheelchair"></i> <span> Patients </span></a>

                        </li>
                        <li class="has_sub">
                            <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-file-pdf-o"></i> <span> Reports </span> <span class="menu-arrow"></span></a>
                            <ul class="list-unstyled">
                                <li><a href="appointment.do">Appointment</a></li>
                                <li><a href="revenue.do">Revenue</a></li>
                            </ul>
                        </li>
                        <li class="has_sub">
                            <a href="javascript:void(0);" class="waves-effect"><i class="zmdi zmdi-chart"></i><span> CMS </span> <span class="menu-arrow"></span></a>
                            <ul class="list-unstyled">
                                <li><a href="faqlist.do">Information</a></li>
                                    <li><a href="cmscontactus.do">Facility data </a></li>
                            </ul>
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
                        	<c:if test="${update == 'y'}">
                        	<h2>Edit Staff</h2>
                        	</c:if>
                        	<c:if test="${update != 'y'}">
                        	<h2>Add Staff</h2>
                        	</c:if>
                        	
                        </div>
                        <div class="col-sm-12">
                            <div class="bg-picture card-box2">                               
                                <div class="row"> 
                                <form:form data-parsley-trigger="input" data-parsley-focus="first"  method="POST" action="addstaff.do" commandName="address" id="staffForm">
                                
                                <c:if test="${update=='y'}">
                                <form:hidden path="id"/>
                                <form:hidden path="user.id"/>
                                <input type="hidden" id="update" name="update" value="y"/>
                                
                                </c:if>
                                    <div class="col-sm-4" style="border: 1px solid #E3E3E3; padding: 0px 20px; margin-top:25px; ">
                                       <div class="form-group">
                                           <h3>Select Your Practice</h3>
                                       </div>
                                      <div class="form-group">
                                          <div class="radio radio-primary">
                                              <form:radiobutton type="radio" path="user.department.id" id="radio1"  value="1" checked="checked"/>
                                               <label for="radio1">
                                                  Receptionist
                                              </label>
                                          </div>     
                                      </div>
                                        <div class="form-group">
                                            <div class="radio radio-primary">
                                                <form:radiobutton type="radio" id="radio2" value="2" path="user.department.id"/>
                                                <label for="radio2">
                                                    Nurse
                                                </label>
                                            </div>                                            
                                        </div>
                                        <div class="form-group">
                                            <div class="radio radio-primary sub-main">
                                                <form:radiobutton type="radio" class="sub" id="radio3" value="3" path="user.department.id"/>
                                                <label for="radio3">
                                                    Physician
                                                </label>	
                                            <!--     <div class="checkbox checkbox-primary sub1">
				                                        <input  id="checkbox1"  type="checkbox" value="1" name="user.isAdmin"/>
				                                        <label for="checkbox1">
		                                            		isAdmin
		                                        </label>
		                                    </div>	 -->                                        
                                            </div>  
                                                                                                                     
                                        </div>
                                         
                                        <div class="form-group">
                                            <div class="radio radio-primary">
                                                <form:radiobutton type="radio" id="radio4" value="4" path="user.department.id"/>
                                                <label for="radio4">
                                                    Laboratory
                                                </label>
                                            </div>                                           
                                        </div>
                                        <div class="form-group">
                                            <div class="radio radio-primary">
                                                <form:radiobutton type="radio" value="5" id="radio5" path="user.department.id"/>
                                                <label for="radio5">
                                                    Radiology
                                                </label>
                                            </div>                                           
                                        </div>
                                    </div>
                                   
                                        
                                        <div class="col-sm-8">
                                          <div class="row">
                                          <div class="col-sm-12">
                                         <div class="form-group">
                                         <c:if test="${not empty error}">
											<div class="alert alert-danger">
														<strong>Error!</strong> ${error}
												</div>
												</c:if>
                                           <c:if test="${not empty message}">
											<div class="alert alert-success">
														<strong>Success!</strong> ${message}
												</div>
												</c:if>
                                         </div>
                                          </div>
                                          
                                            <div class="col-sm-6">
                                                <div class="form-group">                                               
                                                    <label>User Name</label>
                                                    <form:input  required="required" type="text" path="user.userName" id="username" data-parsley-length="[2, 20]" data-parsley-type="alphanum" data-parsley-trigger="focusout" placeholder="Enter Username" class="form-control"   />
                                                     
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Email Address</label>
                                                   
                                                    <form:input data-parsley-pattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$" path="user.emailAddress" value="" data-parsley-length="[2, 45]"  placeholder="Enter Email" id="email" class="form-control" data-parsley-trigger="focusout" required="required" />
                                              		
                                                </div>
                                            </div>
                                          
                                          </div>
                                          <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>First Name</label>
                                                    <form:input   data-parsley-pattern="^[a-zA-Z]+$" data-parsley-length="[2, 20]" data-parsley-message="Enter valid Firstname" path="user.firstName" id="firstName" data-parsley-trigger="focusout"  value="" placeholder="Enter First Name" class="form-control" required="required" />
                                               		
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Last Name</label>
                                                    <form:input  data-parsley-pattern="^[a-zA-Z]+$" data-parsley-message="Enter valid Lastname" data-parsley-type="alphanum" path="user.lastName" id="lastName" value="" data-parsley-length="[2, 20]" data-parsley-trigger="focusout" placeholder="Enter Last Name" class="form-control" required="required" />
                                                	
                                                </div>
                                            </div>
                                            </div>
                                          
                                          <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Address 1</label>
                                                    <form:input  type="text" path="addressLineOne" id="addressLineOne" value="" data-parsley-length="[2, 45]" data-parsley-trigger="focusout"  placeholder="Enter Address 1" class="form-control" required="required" />
                                                	
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Address 2</label>
                                                    <form:input  maxlength="45"  type="text" path="addressLineTwo" value="" placeholder="Enter Address 2" class="form-control" />
                                                </div>
                                            </div>
                                          </div>
                                            <div class="row">
                                             <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>State</label> 
                                                   <form:select type="text" path="stateID" value="" placeholder="Enter ZipCode" class="form-control" id="statelist" parsley-trigger="change" data-parsley-error-message="Select State" required="required">
                                                    <form:option value="">-Select-</form:option>
                                                    <form:options itemLabel="name" itemValue="id" items="${statelist}"/>
                                                    
                                                    </form:select>    
                                                    
                                                     </div>
                                            </div>
                                             <div class="col-sm-6">
                                                <div class="form-group" id="cityDiv">
                                                <!-- <label>City</label>
 -->                                                   <!--  <input type="text" name="name" value="${city.name}" placeholder="Enter City" class="form-control" /> -->
                                                   <label>City</label>
                                                   <select type="text" value="" name='cityID' placeholder="Enter City" class="form-control" data-parsley-trigger="focusout" data-parsley-error-message="Enter City" required="required">
                                                   <c:choose>
                                                   	<c:when test="${city != null }">
                                                   		<option value="${city.id }">${city.name }</option>
                                                   	</c:when>
                                                   	<c:otherwise>
                                                   		<option>-Select City-</option>
                                                   	</c:otherwise>
			                                       		
			                                       	</c:choose>
			                                       </select>
                                                     
                                                </div>
                                            </div>
                                            </div>
                                          
                                           
                                          <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>ZipCode</label>
                                                    <form:input  path="zipcode" id="zipcode"  value="" data-parsley-type="alphanum" data-parsley-length="[6, 8]" placeholder="Enter ZipCode" class="form-control" required="required" data-parsley-trigger="focusout" />
                                                   
                                                </div>
                                            </div>
                                         <form:hidden path="user.isEnabled"/>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Mobile Phone</label>
                                                     <form:input type="text" path="user.mobileNumber" id="mobileNumber" value="" placeholder="Enter Mobile Phone" data-parsley-length="[10, 14]" data-parsley-type="digits" class="form-control" required="required" data-parsley-trigger="focusout" />
                                                	
                                                </div>
                                            </div>
                                          </div>
                                          <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Home Phone</label>
                                                  <form:input type="text" path="user.homeNumber" data-parsley-trigger="focusout" value="" data-parsley-length="[10, 14]" data-parsley-type="digits" placeholder="Enter Home Phone" class="form-control"/>
                                                </div>
                                            </div>
                                          </div>
                                            
                                            <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-group text-right">
                                                    <input type="submit" class="btn btn-primary" value="Save">
                                                    <a href="liststaff.do" class="btn btn-danger">Cancel</a>
                                                </div>
                                            </div>
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
    <script src="assets/plugins/parsleyjs/dist/parsley.min.js"></script>
     
    <!-- KNOB JS -->

    <!-- Dashboard init -->

    <!-- App js -->
          <!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
        <script src="assets/js/main.js"></script>  
    <script src="assets/js/jquery.core.js"></script>
    <script src="assets/js/jquery.app.js"></script>
     <script type="text/javascript">
		    jQuery("document").ready(function($){
               
		    	jQuery("#statelist").change(function(){
		    		var stateId=jQuery('#statelist :selected').val();
		    		
			    	getCityList(stateId);
		    	}); 
		    	
		    	/* jQuery("#staffForm").submit(function(e){
		    		e.preventDefault();
		    		var city=jQuery("#city").value();
		    		validateUser();
		    		console.info("city: "+city);
		    	});  */
		    	
		    });
		    
		    function getCityList(id){
		    	var baseurl="${pageContext.request.contextPath}";
		    	jQuery.ajax({
		    		url:baseurl+"/getCityList.do",
		    		method:"POST",
		    		data:{"id":id},
		    		success:function(data){
		    			var parseData=JSON.parse(data);
		    			cityList(parseData);
		    		},
		    		fails:function(error){
		    			console.info("server error.....");
		    		}
		    	});
		    }
		    
		    function cityList(data){
		    	
		    	var html="<label>City</label><select placeholder='Enter City' name='cityID' parsley-trigger='change' data-parsley-error-message='Select City'  class='form-control' required='required' >";
                html+="<option value='' >Select</option>"; 
		    	jQuery.each(data,function(index,value){

		    		html+="<option value='"+value.id+"' >"+value.name+"</option>"; 

		    	});
		    	html+="</select>";
		    	jQuery("#cityDiv").html(html);
		    }
		
		    
		    
		    //Ravi
		    
		   /*  $("#staffForm").submit(function(){
		        var isFormValid = true;

		        $(".required input").each(function(){
		            if ($.trim($(this).val()).length == 0){
		                $(this).addClass("highlight");
		                isFormValid = false;
		            }
		            else{
		                $(this).removeClass("highlight");
		            }
		        });

		        if (!isFormValid) alert("Please fill in all the required fields (indicated by *)");

		        return isFormValid;
		    }); */
    	
    </script>
    
    <script type="text/javascript">
            $(document).ready(function () {
            	
            	jQuery('#radio1 , #radio2,  #radio3, #radio4').click(function(){      
		    		 jQuery('#checkbox1').attr('checked', false);  
		    		 }); 
                $('#staffForm').parsley();
                
                 if($('#update').val()=='y')
                	{
                	 $('#username').attr('disabled', 'disabled');
                	 $('#email').attr('disabled', 'disabled');
                	} 
                
            });
            
            
        </script>
</body>
</html>
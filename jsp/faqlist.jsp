<%@page import="com.dreamsoft4u.queehr.constant.ApplicationVariables"%>
<%@page import="com.dreamsoft4u.queehr.shared.dto.GenderType"%>
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
    <!-- DataTables -->
    <link href="assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />

    <!-- Plugins css-->
    <link href="assets/plugins/switchery/switchery.min.css" rel="stylesheet" />

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
                     <%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():"";
                                              %>
                            <img src="<%=image%>" alt="user-img"  class="img-circle img-thumbnail img-responsive">
                        <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                    </div>
                    <h5 class="user-name"> ${ sessionScope.user.firstName} ${ sessionScope.user.lastName}  </h5>
                    <ul class="list-inline">
                        <!-- <li>
                            <a href="change-pw.html">
                                <i class="zmdi zmdi-settings"></i>
                            </a>
                        </li> -->
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
                            <a href="liststaff.do" class="waves-effect"><i class="fa fa-user-md"></i> <span> Staff </span> </a>
                        </li>
                        <li>
                            <a href="listpatient.do" class="waves-effect"><i class="fa fa-wheelchair"></i> <span> Patients </span></a>

                        </li>
                        <li class="has_sub">
                            <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-file-pdf-o"></i> <span> Reports </span> <span class="menu-arrow"></span></a>
                            <ul class="list-unstyled">
                                <li><a href="#">Appointment</a></li>
                                <li><a href="revenue.html">Revenue</a></li>
                            </ul>
                        </li>
                        <li class="has_sub">
                            <a href="javascript:void(0);" class="waves-effect active"><i class="zmdi zmdi-chart"></i><span> CMS </span> <span class="menu-arrow"></span></a>
                            <ul class="list-unstyled">
                                 <li class="active"><a href="faqlist.do">Information</a></li>
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
                    <div class="row" id="mainContent">
                        <div class="col-sm-12">
                            <h2>FAQ List</h2>
                        </div>
                        <div class="col-sm-12">                           
                            <div class="bg-picture table-responsive card-box2">

                             
                                    <div class="search">
                                        <form:form  method="POST" action="cmshelp.do" commandName="cmshelp" >
                                           <div class="row">
                                           <div class="col-sm-12">
                                          <%
                                              String message=session.getAttribute("message")!=null?session.getAttribute("message").toString():"";
                                              if(!message.equals(""))
                                              {
                                           %>
                                                <div class="alert alert-success">
														<strong>Success!</strong> ${message}
												</div>
												<%
												session.setAttribute("message", null);
                                              }
                                              %>
                                                
                                               
                                           </div>
                                           </div>
                                            <div class="row">
                                                 <div class="col-sm-12 form-group">                                                   
                                                         <button type="submit" class="btn btn-primary pull-right">Add FAQ </button>
                                                    
                                                </div>
                                               
                                               <!--  <div class="col-sm-8 col-xs-3">
                                                    <div class="form-group">
                                                        <label class="blank">&nbsp;</label>
                                                        <button class="btn btn-primary"><i class="fa fa-search"></i></button>
                                                    </div>
                                                </div>  -->
                                            </div>

                                        </form:form>
                                    </div>
                                   
                                <div class="for-level ">
                               
                                    <table id="datatable" class="table table-striped table-bordered ">
                                        <thead>
                                            <tr>
                                                <th class="hidden">Id</th>
                                                <th>Question</th>
                                                <th>Answer</th>
                                                <th>Documents</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test="${not empty faqlist}">


												<c:forEach var="faq" items="${faqlist}">
													<tr>
													<form id="faq" name="abc${faq.id}" action="editcmshelp.do?id=${faq.id}" method="GET">
													<%-- <form id="faq" name="abc${faq.id}" action="editcmshelp.do" method="POST"> --%>
													<input type="hidden" value="${faq.id}" name="id"/>
														 <td class="hidden">${faq.id}</td>
														<td>${faq.question}</td>
														<td>${faq.answer}</td>
														<td><c:if test="${not empty faq.filename}">
														<a href="<c:url value="download.do?filename=${faq.filename}"/>" >${faq.filename}</a>
														</c:if>
														</td>
                                   
                                  
														<td><a href="#"><i id="editfaq" onclick="window.document.abc${faq.id}.submit()"
																class="fa fa-pencil" aria-hidden="true"></i>
																</a></td>
													</form>
													</tr>
												</c:forEach>


											</c:if>                                                                       </tbody>
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
    
    <!-- Plugins Js -->
    <script src="assets/plugins/switchery/switchery.min.js"></script>  

      <!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
        <script src="assets/js/main.js"></script>  
    <!-- Dashboard init -->
    <script src="assets/pages/jquery.dashboard.js"></script>
    <!-- App js -->
    <script src="assets/js/jquery.core.js"></script>
    <script src="assets/js/jquery.app.js"></script>

    <!-- Datatables-->
    <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>
<input type="hidden" name="getpage" id="getpage"
		value="${getpagenumber}" />
    <script type="text/javascript">
     $(document).ready(function () {
          /*   $('#datatable').dataTable({
            	"order": [[ 0, "desc" ]]
            }); */
        });   
       //  TableManageButtons.init(); 
       /* jQuery("#editfaq").click(function(){
    	 alert("a");    		
	    	
    	});  */

    	$(document).ready(function () {
       	 var pageNumServer=$('#getpage').val();
    		 var table = $('#datatable').DataTable({
    			 
    				"columns": [
    				            null,
    				            null,
    				            null,
    				           null,
    				           null
    				        
    				          
    				        ],
    		
    		 "order": [[ 0, "desc" ]],
    		 "bSort":false
    		 });
            var info = table.page.info();
            //var table = $('#datatable').dataTable();
            table.fnPageChange(pageNumServer*1,true);
       
           
       });
       
       $('#datatable').on('page.dt', function() {
       	 var pageNumServer=$('#getpage').val();
    		 var table = $('#datatable').DataTable();
            var info = table.page.info();
       	 $('#getpage').val(info.page*1+1);
       	
       	
       	
       });
    </script>
    
    
</body>
</html>
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
    <meta name="description" content="#">
    <meta name="author" content="#">

    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <title>Scheduling</title>
    <!--calendar css-->
    <link href="assets/plugins/fullcalendar/dist/fullcalendar.css" rel="stylesheet" />

    <!-- App css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
       <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <!--For datepicker  -->
     <link href="assets/css/jquery-ui-v1.12.0.css" rel="stylesheet" type="text/css" />
     <!--For time picker  -->
    <link href="assets/css/jquery.timepicker.css" rel="stylesheet" type="text/css" />

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
                        <%String image=session.getAttribute("imagepath")!=null?session.getAttribute("imagepath").toString():"";
                                              %>
                            <img src="<%=image%>" alt="user-img"  class="img-circle img-thumbnail img-responsive">
                            <!--<div class="user-status offline"><i class="zmdi zmdi-dot-circle"></i></div>-->
                        </div>
                        <h5 class="user-name"> ${ sessionScope.user.firstName} ${ sessionScope.user.lastName} </h5>
                        <ul class="list-inline">
                            <!-- <li>
                                <a href="phy-reset-password.do class="text-custom" data-toggle="modal" data-target="#change-pwd" title="Reset password">
                                
                                    <i class="zmdi zmdi-settings"></i>
                                    
                                </a>
                            </li>
 -->
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
                                <a href="phydashboard.do" class="waves-effect"><i class="zmdi zmdi-view-dashboard"></i> <span> Dashboard </span> </a>
                            </li>

                            <li>
                                <a href="phytodolist.do" class="waves-effect"><i class="fa fa-list"></i> <span> To Do List </span> </a>
                            </li>

                            <li>
                                <a href="physchedule.do" class="waves-effect active"><i class="fa fa-calendar-plus-o"></i> <span> Scheduling Tab </span></a>
                                
                            </li>                         

                            <li>
                                <a href="phyappointment.do" class="waves-effect"><i class="fa fa-calendar"></i> <span> My Appointments </span></a>                               
                            </li>

                            <li><a href="phylistpatient.do" class="waves-effect"><i class="fa fa-wheelchair"></i><span> Patients </span></a>
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
                            <h2>Scheduling</h2>
                        </div>
                                 
                                 <div class="col-sm-12">
                                   <% String msg=session.getAttribute("availbilitymessage")!=null?session.getAttribute("availbilitymessage").toString():"";
                                             
                                              if(!msg.equals(""))
                                              {
                                           %>
                                                <div class="alert alert-success">
                                                        <strong>Success!</strong> <%= msg %>
                                                </div>
                                                <%
                                              
                                                session.setAttribute("availbilitymessage", null);
                                              }
                                              %>
                   <% String msg1=session.getAttribute("checkMessage")!=null?session.getAttribute("checkMessage").toString():"";
                                             
                                              if(!msg1.equals(""))
                                              {
                                           %>
                                                <div class="alert alert-danger">
                                                        <strong>Failed!</strong> <%= msg1 %>
                                                </div>
                                                <%
                                              
                                                session.setAttribute("checkMessage", null);
                                              }
                                              %>
                                    </div>
                                                </div>
                                            
                       
                        <div class="col-lg-12">
                            <div class="card-box2">
                                
                                    <div class="row">                                        
                                            <form:form  name="phyavailability"  data-parsley-focus="none" method="post" modelAttribute="availability" action="phyavailability.do" id="phyavailability">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>From Date</label>
                                                    <form:input class="form-control" data-parsley-trigger="change"  required="required" placeholder="MM/DD/YYYY" type="text" path="fromDate" id="fromDate" name="from"/>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>To Date</label>
                                                    <form:input class="form-control" data-parsley-trigger="change" required="required" placeholder="MM/DD/YYYY" type="text" path="toDate" id="toDate" name="to"/>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>From Time</label>
                                                    <form:input class="form-control" data-parsley-trigger="focusout" required="required" placeholder="00:00 AM" type="text" path="fromTime" id="fromTime"/>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>To Time</label>
                                                    <form:input class="form-control" data-parsley-trigger="focusout" required="required" placeholder="00:00 AM" type="text" path="toTime" id="toTime"/>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label class="blank">&nbsp;</label>
                                                    <input type="submit" class="btn btn-primary" value="Save">
                                                </div>
                                            </div>    
                                        </form:form>                                   
                                    </div>
                                
                                <div id="calendar" class="form-group">
                                
                                
                                
                                </div>
                              <!--   <div class="row">
                                    <div class="col-sm-12">
                                        <div class="status">
                                            <ul>
                                                <li>
                                                    <span class="orange circle"></span>
                                                    In Progress
                                                </li>
                                                <li>
                                                    <span class="red circle"></span>
                                                    InComplete
                                                </li>
                                                <li>
                                                    <span class="green circle"></span>
                                                    Available
                                                </li>
                                                <li>
                                                    <span class="purple circle"></span>
                                                    Complete
                                                </li>
                                            </ul>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                          <!--   
                            <div class="modal fade none-border" id="event-modal">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title"><strong>Schedule Appointment</strong></h4>
                                        </div>
                                        <div class="modal-body">

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger waves-effect" data-dismiss="modal">Cancel</button>
                                            <button type="button" class="btn btn-success save-event waves-effect waves-light">Create Appointment</button>
                                            <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div> -->
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
   


   
    <!-- App js -->
    <script src="assets/js/jquery.core.js"></script>
    <script src="assets/js/jquery.app.js"></script>
 
   <!-- Dashboard init -->
    <script src="assets/pages/jquery.dashboard.js"></script>
 <!--For datepicker  -->
    <script src="assets/js/jQuery-UI-v1.12.0.js"></script>
    <!--For time picker  -->
    <script src="assets/js/jquery.timepicker.min.js"></script>
    <!-- BEGIN PAGE SCRIPTS -->
    <script src="assets/plugins/moment/moment.js"></script>
    <script src='assets/plugins/fullcalendar/dist/fullcalendar.min.js'></script>
    <!-- <script src="assets/pages/jquery.fullcalendar.js"></script> --> 
    
    <!--script for datepicker  -->
     <script src="assets/plugins/parsleyjs/dist/parsley.min.js"></script>

    
      <script>
      $( function() {
    	    var dateFormat = "mm/dd/yy",
    	      from = $( "#fromDate" )
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
    	      to = $( "#toDate" ).datepicker({
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
    <!--For time picker  -->
    <script>
  
    $( function() {
    	var time;
    $('#fromTime').timepicker({
    	 timeFormat: 'g:i A',
        minTime: '12:00:00AM',
        maxTime: '11:30:00PM',
        maxHour: 12,
        maxMinutes: 30,
        //defaultTime: '11', 
     // startTime: new Date(0,0,0,0,0,0),
        dynamic: false,
        dropdown: true,
        scrollbar: true, 
    })
     .on( "change", function(data) {
    	 
    	 $('#toTime').timepicker('option', 'minTime', $(this).val());
    	 
  	});
  
    $('#toTime').timepicker({
    	 timeFormat: 'g:i A',
    	 minTime: '12:00:00AM',
    	 maxTime: '11:30:00PM',
          maxHour: 12,
          maxMinutes: 30,
         // defaultTime: '11', 
          //startTime: '',
          dynamic: false,
          dropdown: true,
          scrollbar: true,
         
    }).on( "change", function(data) {
    	 $('#fromTime').timepicker('option', 'maxTime', $(this).val()); 
  	});
    
    });
    

    </script>
    <script>
    
    </script>
  <script type="text/javascript">
            $(document).ready(function () {
            	 document.getElementById("phyavailability").reset();
            	 
            	 $("#fromDate").val("");
                 $("#toDate").val("");
                 $("#fromTime").val("");
                 $("#toTime").val("");
                 $('#phyavailability').parsley().reset();
            	 $('#phyavailability').parsley();
            });
  </script>
  <script type="text/javascript">
  $(document).ready(function(){



 
 $.ajax({
     url: "physcheduleGson.do",
     data: "",
     type:"GET",
     contentType: "application/json",
     dataType: "json",
     success: function (doc) {
    	 console.log(doc.data)
    	 var events = [];
         $(doc.data).each(function(index,item) {
        	
        	 events.push({
                 title: item.Title,
                 start: item.start,
                 end:item.end
             });
         });
    	 console.log(events)
    	
    	  var calendar = $('#calendar').fullCalendar({
    		     header: {
    		         left: 'prev,next,today',
    		         center: 'title',
    		         right: 'month,agendaWeek,agendaDay'
    		     },
    		  
    		     slotLabelFormat:"HH:mm",
    		    /*  timeFormat: {
    		         
    		         agenda: 'H:mm'
    		     }, */
    		     defaultView: 'agendaWeek',
    		     editable: false,
    		     disableResizing: true,
    		     selectable: false,
    		     selectHelper: true,
    		     multiSelectable: true,
    		     eventLimit: true,
    		     events:events
    		 }); 
    	
     }
 });
 
  });

  
 </script>



</body>
</html>
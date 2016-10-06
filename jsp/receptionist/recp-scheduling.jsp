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
    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <script src="assets/js/modernizr.min.js"></script>
    
    <script >
    	var appointment={};
    </script>
</head>

<body class="fixed-left">
<jsp:include page="/jsp/includes/please-wait-modal.jsp"></jsp:include>
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
                            <a href="recplistpatient.do" class="waves-effect"><i class="fa fa-wheelchair"></i> <span> Patients </span> </a>
                        </li>
                        <li>
                            <a href="recscheduling.do" class="waves-effect active"><i class="fa fa-calendar"></i> <span> Scheduling  </span></a>

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
                            <h2>Scheduling</h2>
                        </div>
                        <div class="col-lg-12">

                            <div class="card-box2">
                                <form>
                                   <div class="row">
                                       <div class="col-sm-4">
                                           <div class="form-group">
                                               <label for="inputEmail3" class="control-label">Select Department</label>
                                               <select class="form-control" id="department">
                                                   <option>Select Department</option>
                                                   <option value="0">Physician</option>
                                                   <option value="1">Lab</option>
                                                   <option value="2">Radiology</option>
                                               </select>
                                           </div>                                           
                                       </div>
                                       <div class="col-sm-4">
                                           <div class="form-group">
                                               <label for="inputEmail3" class="control-label" >Clinician</label>
                                               <select class="form-control" id="clinicianDetail">
                                                   <option>Select Clinician</option>
                                               </select>
                                           </div>
                                       </div>
                                   </div>
                                </form>
                                
                                <!-- Calendar -->
                                <div id="calendar" class="form-group"></div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="status">
                                            <ul>
                                                <li>
                                                    <span class="orange circle"></span>
                                                   Upcoming
                                                </li>
                                              <!--   <li>
                                                    <span class="red circle"></span>
                                                    InComplete
                                                </li> -->
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
                                    </div>
                                </div>
                            </div>
                            <!-- BEGIN MODAL -->
                            <div class="modal fade none-border" id="event-modal">
                                <div class="modal-dialog">
                                    <div id="bookingForm" class="modal-content" >
                                        <div class="modal-header" >
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title"><strong>Schedule Appointment</strong></h4>
                                        </div>
                                        <div class="modal-body">

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" id="cancel" class="btn btn-danger waves-effect" data-dismiss="modal">Cancel</button>
                                            <a href="javascript: createAppointment()"  class="btn btn-success save-event waves-effect waves-light" >Book Appointment</a> 
                                            <!-- <button type="button" onclick="return createAppointment();" data-dismiss="modal" class="btn btn-success save-event waves-effect waves-light" >Book Appointment</button> -->
                                            <button type="button" id="deletebutton" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

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
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/jquery.blockUI.js"></script>
    <script src="assets/js/waves.js"></script>
    <script src="assets/js/jquery.nicescroll.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
      <!-- Set Cookies -->
	<script src="assets/js/jquery.cookie.js"></script>
        <script src="assets/js/main.js"></script>  
    <!-- App js -->
    <script src="assets/js/jquery.core.js"></script>
    <script src="assets/js/jquery.app.js"></script>

    <!-- Jquery-Ui -->
    <script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- BEGIN PAGE SCRIPTS -->
    <script src="assets/plugins/moment/moment.js"></script>
    <script src='assets/plugins/fullcalendar/dist/fullcalendar.min.js'></script>
    <script src="assets/pages/jquery.fullcalendar.js"></script>
    
     
    
    <script type="text/javascript">
	$(document).ready(function(){
		
		$('#department').change(function(){
			var department = $('#department :selected').val();
			var baseurl="${pageContext.request.contextPath}";
			$.ajax({
					url:baseurl+"/getClinician.do",
                    method:"POST",
                    data:{"id":department},
                    success:function(data){
                       		clinicianDetail(data);
                    },
                    fails:function(error){
                        console.info("server error.....");
                    }
			});
			
		});		
	});
    
	$(document).ready(function(){
	   $('#clinicianDetail').change(function(){
			var selectedClinician = $('#clinicianDetail :selected').val();	
			getValuesInCalendar(selectedClinician);
		});	
	});
	
	function getTime(appdate,from,end,title,int){
		var sd = appdate.split('/'); 
		var fT = am_pm_to_hours(from);
		var eT = am_pm_to_hours(end);
		var startTime = new Date(sd[2]+'/'+sd[0]+'/'+sd[1]+' '+fT); 
		var endTime = new Date(sd[2]+'/'+sd[0]+'/'+sd[1]+' '+eT);
		var difference = endTime.getTime() - startTime.getTime(); // This will give difference in milliseconds
		var resultInMinutes = Math.round(difference / 60000);
		
		var select = '<select id="selectedtime" class="form-control" name="time">';
			for(i = 0; i<resultInMinutes;i++){
				
				startTime.setMinutes(startTime.getMinutes() + 1);
				
				var hrs = startTime.getHours()+"";
				var mins = startTime.getMinutes()+"";
				
				
				if(hrs.length==1)
        		{
					hrs="0"+hrs;
        		}
        		
        		if(mins.length==1)
        		{
        			mins="0"+mins;
        		}
				
        		var time = hrs+mins;
        		
				var t = hours_am_pm(time);
				
				
				select += '<option values = "'+t+'">' +t+ '</option>';
				
			}
		select+='</select>';
		return select;
	}
	
	 function am_pm_to_hours(time) {
	        console.log(time);
	        var a= time.split(':');
	        var hours = Number(a[0]);
	        var b = a[1].split(' ');
	        var minutes = Number(b[0]);
	        /*var AMPM = time.match(/\s(.*)$/)[1]; */
	        var a = time.split(' ');
	        var AMPM = a[1];
	        
	        if (AMPM == "PM" && hours < 12) hours = hours + 12;
	        if (AMPM == "AM" && hours == 12) hours = hours - 12;
	        var sHours = hours.toString();
	        var sMinutes = minutes.toString();
	        if (hours < 10) sHours = "0" + sHours;
	        if (minutes < 10) sMinutes = "0" + sMinutes;
	        return (sHours +':'+sMinutes);
	        
	    }
	 
	 function hours_am_pm(time) {
	        var hours = time[0] + time[1];
	        var min = time[2] + time[3];
	        if (hours < 12) {
	            return hours + ':' + min + ' AM';
	        } else {
	        	if(hours == 12){
	        		return hours+ ':' + min + ' PM';
	        	}
	            hours=hours - 12;
	            hours=(hours.toString().length == 1) ? '0'+hours:hours;
	            return hours+ ':' + min + ' PM';
	        }
	    }
	
 /* function getTime1(appdate,from,end,title,int) {
	 		
	 		var key=appdate+"#"+from+"#"+end;
	 		if(title!=" Available")
	 		{
		 		var time={};
		 		time.start=appdate+" "+from;
		 		time.end=appdate+" "+end;
		 		
		 		appointment[key]=time;
		 		
		 		console.info(appointment);
	 		}
	 		console.info("From-end Time Slot:- "+key+"/"+title);
        	var select = '<select id="selectedtime" class="form-control" name="time">';
        	
        	var bits = from.split(':');
        	var minutes = bits[1].split(' ');
        	var minutesstart = minutes[0];
        	
        	var st = from.split(' ')[0];
        	var en=end.split(' ')[0];
        	
        	var date=appdate.split("/");

        	var finaldate=date[0]+"/"+date[1]+"/"+date[2];
        	
        	//console.info("slot"+st+"==="+en+"=="+finaldate+"===="+new Date(finaldate+' '+en)+"===="+new Date(finaldate+' '+st));

        	var diff = Math.abs(new Date(finaldate+' '+en) - new Date(finaldate+' '+st));

        	var finalMin=(parseInt(diff)/1000)/60;
        	
        	
        	var tominutes =finalMin;// parseInt(endmin);//+10;
        	
        	//console.info("time slot"+minutesstart+"==="+tominutes+"==="+diff);
        	
        	
        	var d=new Date(appdate+" "+from).getTime();
        	 // console.info(d);
        	var i=0;

        	for(i;i<=tominutes;i++){
        		
        		var newDateObj = new Date( d+ i*60000);
        		
        		var hours=new String(parseInt(newDateObj.getHours())%12);
        		
        		var minD=new String(newDateObj.getMinutes());
        		
        	//	console.info(hours.length+"==="+minD.length);
        		
        		if(hours.length==1)
        		{
        			hours="0"+hours;
        		}
        		
        		if(minD.length==1)
        		{
        			minD="0"+minD;
        		}
        		
        	//	console.info(hours+"==="+minD);
        		
        		select += '<option>' + hours + ':'+ minD + ' ' + minutes[1] + '</option>';
        		
        		//var min=(parseInt(minutesstart)+i);
        		
        		
        		
        		//select += '<option>' + bits[0] + ':'+ min + ' ' + minutes[1] + '</option>';
        		
        		/*	if(minutesstart == '00'){
        				select += '<option>' + bits[0] + ':'+ (parseInt(minutesstart)+i) + ' ' + minutes[1] + '</option>';
        			}if(minutesstart.length>1)
        				{
        					select += '<option>' + bits[0] + ':'+ (parseInt(minutesstart)+i) + ' ' + minutes[1] + '</option>';
        				}else{
        				select += '<option>' + bits[0] + ':' + '0'+(parseInt(minutesstart)+i) + ' ' + minutes[1] + '</option>';
        			}
        	
        	}
        	select += '</select>';
        	 return select;
    	} */

	function clinicianDetail(data){
		var html = "<option value= '' >Select Clinician</option>"; 
        jQuery.each(data,function(index,value){

            html+="<option value='"+value.id+"' >"+value.firstName+" "+value.lastName+"</option>"; 

        });
        jQuery("#clinicianDetail").html(html);
 	}
	   function createAppointment(){
		   
		  
		   var e = document.getElementById("patientlist");
			var strUser = e.options[e.selectedIndex].text;
			if(strUser=='-Select Patient-'){
				alert("please select the patient name");
				return;
			}

			var bits = strUser.split('(');
			var mobileno = bits[2].replace("mobileno:","").replace(")","");
		   var patientId= $('#patientlist').val();
		   if(patientId==''){
			   return;
		   }
		   
	   var nurseId=$("#nurselist").val();
	   var availabilityid = $('#availabilityid').val();
	   var appointmentdate=$('#appointmentdate').val();
	   var comment=$('#comment').val();
	   var duration=$('#duration').val();
	   var entryType=$('#entryType').val();
	   var physicianId=$('#physician').val();	
	   var appointmenttime=$('#selectedtime').val();
	   var schedule= appointmentdate+' '+appointmenttime;
	   var baseurl="${pageContext.request.contextPath}";
	    
	  //  var times=$('#selectedtime').first().text().split("M");
	 //   var d1=new Date(appointmentdate+" "+new String(times[0]).trim()+"M");
	 //   var d2=new Date(appointmentdate+" "+new String(appointmenttime));
	 
	 var key=appointmentdate+"#"+appointmenttime;
	 console.info(key);
	 console.info("appointment:- "+appointment);
	  var appointmentTitle="";
	    for(key in appointment)
	    {
	    	var time=appointment[key];
	    	var slot=key.split("#");
	    	 alert(time);
	    	 alert(slot);
	    	 if(slot[0]==appointmentdate)
	    	{
	    		var d1=new Date(slot[0]+" "+slot[1]);//.getTime();

	    		var d2=new Date(slot[0]+" "+slot[2]);//.getTime();

	    		var d3=new Date(appointmentdate+" "+appointmenttime);//.getTime();
	    		
	    		if(d1.getHours()==d3.getHours() || d2.getHours()==d3.getHours())
	    		{
	    			console.info("Time Slot Dates:- "+d1+"=="+d2+"==Selected Appointment:- "+d3);
	    			var from=(d1-d3);
		    		var end=(d2-d3);
		    		
		    		if(from<0 && end<0)
		    		{
		    			appointmentTitle="Not Booked";
		    		  console.info("Not Already booked");
		    		}
		    		else{
		    			appointmentTitle="Booked";
		    		  console.info("already booked");
		    		}
		    		
	    		}
	    		
	    		
	    	}
	    	
	    }	
	    

	 //   var diff = (Math.abs(d1 - d2)/1000)/60;
	    
	 //   console.info(times+"==="+appointmenttime+"/"+diff+"/"+duration);
	    if(appointmentTitle=="Booked")
	    {
	    	alert("This time slot is already booked.");
	    }
	    else{
	    	 $('.modal-backdrop').hide();
				$('#event-modal').hide();
				$('#please-wait').modal('show');
		   $.ajax({
		    		url:baseurl+"/createappointment.do",
		    		method:"POST",
		    		data:{"patientId":patientId,"schedule":schedule,"comment":comment, "duration":duration,"entryType":entryType, "availabilityId":availabilityid, "mobileno":mobileno,"nurseId":nurseId},
		    		success:function(data){
		    			
		    			//alert("session values:- "+<%= session.getAttribute("clinicianId") %>);
		    			if(data=='appointment created successfully'){
		    				
		    				alert("appointment created successfully");
	    					
		    			}else{
		    				alert("appointment not created");
		    			}
		    			
		    			
		    			//$('#please-wait').modal('hide');

		    			deleteValuesInCalendar();
		    			
		    					    			
		    			
		    			
		    		},
		    		fails:function(error){
		    			console.info("server error.....");
		    		}
		    	});
	    }
	    
    	
   }
   
	   function getValuesInCalendar(selectedClinician){
		   $('#please-wait').modal('show');
		   $('#calendar').fullCalendar('removeEvents');
		   var e = document.getElementById("clinicianDetail");
			var strUser = e.options[e.selectedIndex].text;
			if(strUser=='Select Clinician')
				{
				$('#please-wait').modal('hide');
				}
			console.info(strUser);
			var baseurl="${pageContext.request.contextPath}"; $.ajax({
				  type:'POST',
				  url:'recpschedulepatientlist.do',
				  success: function(response){
					  $.ajax({
							 type: "POST",
							    url: 'recpschedulenurselist.do',
							    dataType: "json",
							    success: function(res)
							    {
					 				 $.ajax({
									 type: "POST",
							  		 url: baseurl+"/recpavailability.do",
							   		data: {"id":selectedClinician},
							    	dataType: "json",
							    	success: function(data) {
							    		$('#please-wait').modal('hide');
							    		$.each(data.data, function(index,data) {
							    			
							    			$('#calendar').fullCalendar('renderEvent', {
							    		  appointmentid:data.id,
						                  title: data.title,
						                  start:data.start,
						                  editable: false,
						                  end: data.end,
						                  allDay: false,
						                  appointmentdate:data.appointmentdate,
						                  appointmenttime:data.appointmenttime,
						                  appointmenttimeend:data.appointmentend,
						                  patientname:getPatientList(response),
						                  nursename:getNurseList(res),
						                  appointmentend:getTime(data.appointmentdate,data.appointmenttime,data.appointmentend,data.title,1),
						                  physicianname:strUser,
						                  className: data.className
						              }, true);
							    			$('#calendar').fullCalendar('unselect');
							    			 $('#calendar').fullCalendar('refetchEvents');
							   
							   return;
							    	});
							    	
						          }
					 		});
					 				$('#please-wait').modal('hide');
							    }
					  });  
						
				  },
				  failure: function(data){
					  $('#please-wait').modal('hide');
				  }
			  });
				
	   }
	  
	  function clinicianDetail(data){
			var html = "<option value= '' >Select Clinician</option>"; 
	        jQuery.each(data,function(index,value){

	            html+="<option value='"+value.id+"' >"+value.firstName+" "+value.lastName+"</option>"; 

	        });
	        jQuery("#clinicianDetail").html(html);
	 	}
	  
	  
	  function getPatientList(data){
		  var select = '<select id="patientlist" class="form-control " >';
		  select+="<option value=''>-Select Patient-</option>";
	        jQuery.each(data,function(index,value){

	        	select+="<option value='"+value.id+"' >"+value.firstName+" "+value.lastName+"("+value.sDob+")"+"(+234"+value.mobileNumber+")"+"</option>"; 

	        });
	        select+='</select>';
	        return select;
	 	}
	  function getNurseList(data){
		  var select = '<select id="nurselist" class="form-control">';
		  select+="<option value=''>-Select Nurse-</option>";
	        jQuery.each(data,function(index,value){

	        	select+="<option value='"+value.id+"' >"+value.firstName+" "+value.lastName+"</option>"; 

	        });
	        select+='</select>';
	        return select;
	 	}
	  function deleteValuesInCalendar(){
		  $('#calendar').fullCalendar('removeEvents');
		 <%--  getValuesInCalendar('<%= session.getAttribute("clinicianId") %>'); --%> 
		   getValuesInCalendar($("#clinicianDetail").val()); 
		  
	  }
	  
 </script>
</body>
</html>
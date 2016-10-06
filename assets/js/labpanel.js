//Lab Dashboard For Total Count

/**
 * Lab Dashboard For Total Count
 * 
 */
$(document).ready(function(){
	if($.cookie("labSuccessMessage")=="true"){
		$("#successmessage").css("display", "block");
		$.cookie("labSuccessMessage","");
	}
	if($.cookie("radioSuccessMessage")=="true"){
		$("#successmessage").css("display", "block");
		$.cookie("radioSuccessMessage","");
	}
	if($.cookie("radioErrorMessage")=="true"){
		$("#errormessage").css("display", "block");
		$.cookie("radioErrorMessage","");
	}
	if($.cookie("radioErrorMessage")=="true"){
		$("#errormessage").css("display", "block");
		$.cookie("radioErrorMessage","");
	}
	
});

var setDashBoardCount = function(type) {
	console.info("dashboard count:- " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabDashboardCount();
	} else {
		setRadioDashboardCount();
	}
};

var setLabDashboardCount = function() {
	console.info("set Lab Dashboard count" + "--------"
			+ hostUrlList.dashboardcount);

	var method = "POST";
	var hostUrl = hostUrlList.dashboardcount;
	var data = "userid="+$.cookie("userid");

	callAjax(labDashboardCountHandler, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var labDashboardCountHandler = function(msg) {

	jQuery.each(msg.object, function(key, value) {
		$("#totalappointment").html(value.totalappointment);
		$("#upcomingappointment").html(value.upcomingappointment);
		$("#totalpatient").html(value.totalpatient);
	});

};

var setRadioDashboardCount = function() {
	console.info("set Radio Dashboard count" + "--------"
			+ hostUrlList.dashboardcount);

	var method = "POST";
	var hostUrl = hostUrlList.dashboardcount;
	var data = "userid="+$.cookie("userid");

	callAjax(labDashboardCountHandler, function() {
		console.info("error");
	}, method, hostUrl, data);
	
};

// End

// Lab Dashboard Panel for User Details

/**
 * Lab Dashboard For Users Details
 */
var setUserDetails = function(type) {
	console.info("user details " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabDashboard();
	} else {
		setRadioDashboard();
	}

};

var setLabDashboard = function() {
	console.info("set Lab User Details" + "--------"
			+ hostUrlList.dashboarduserdetails);

	var method = "POST";
	var hostUrl = hostUrlList.dashboarduserdetails;
	var data = "userid="+$.cookie("userid")+"&addressType=";

	callAjax(labDashboardHandler, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var labDashboardHandler = function(msg) {

	jQuery.each(msg.object, function(key, value) {
		$("#emailuser").html(value.email);
		$("#address").html(
				value.address + ", " + value.city + ", " + value.state);

		$("#homenumber").html(value.homenumber);

		$("#mobileno").html(value.mobilenumber);

		$("#name").html(value.name);
		
		$("#imgPath").attr('src', value.imagePath);
		
		$("#imgPath1").attr('src', value.imagePath);
		
		$.cookie("imagePath", value.imagePath);
	});

};

var setRadioDashboard = function() {
	console.info("set radio User Details" + "--------"
			+ hostUrlList.dashboarduserdetails);

	var method = "POST";
	var hostUrl = hostUrlList.dashboarduserdetails;
	var data = "userid="+$.cookie("userid")+"&addressType=";

	callAjax(labDashboardHandler, function() {
		console.info("error");
	}, method, hostUrl, data);
};

// End

// Lab Dashboard Panel for Upcoming Appointment

/**
 * Lab Dashboard For Users Details
 */
var setUpcomingAppointment = function(type) {
	console.info("user details " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabDashboardUpcomingAppointment();
	} else {
		setRadioDashboardUpcomingAppointment();
	}

};

var setLabDashboardUpcomingAppointment = function() {
	console.info("set Lab Upcoming Appointment" + "--------"
			+ hostUrlList.upcomingappointmentlist);

	var method = "POST";
	var hostUrl = hostUrlList.upcomingappointmentlist;
	var data = "userid="+$.cookie("userid");

	callAjax(labDashboardUpcomingAppointmentHandler, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var labDashboardUpcomingAppointmentHandler = function(msg) {
	var list = "";

	jQuery.each(msg.object, function(key, value) {
		list += "<li class='list-group-item'>";
		list += "<a href='#' class='user-list-item'>";
		list += "<div class='avatar text-center'>";
		list += "<i class='zmdi zmdi-circle text-primary'></i>";
		list += "</div>";
		list += "<div class='user-desc'>";
		list += "<span class='name'>" + value.referby + "</span>";
		list += "<span class='desc'>" + value.fromdate + " - " + value.fromtime
				+ " to " + value.totime + "</span>";
		list += "</div>";
		list += "</a>";
		list += "</li>";
	});

	$("#upcomingappointmentlist").html(list);
};

var setRadioDashboardUpcomingAppointment = function() {
	console.info("set radio Upcoming Appointment" + "--------"
			+ hostUrlList.upcomingappointmentlist);

	var method = "POST";
	var hostUrl = hostUrlList.upcomingappointmentlist;
	var data = "userid="+$.cookie("userid");

	callAjax(labDashboardUpcomingAppointmentHandler, function() {
		console.info("error");
	}, method, hostUrl, data);
};

// End Dashboard Panel for Upcoming Appointment

// Show Patient Details

var setPatientList = function(type, limit, offset) {
	console.info("Patient List:- " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabPatientList(limit, offset);
	} else {
		setRadioPatientList(limit, offset);
	}
};

var setLabPatientList = function(limit, offset) {
	console.info("set Patient List" + "--------"
			+ hostUrlList.dashboarduserdetails);

	var method = "POST";
	var hostUrl = hostUrlList.patientlist;
	var data = "userid="+$.cookie("userid")+"&limit=&offset=";

	callAjax(labPatientListHandler, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var labPatientListHandler = function(msg) {
	var list = "";
	if (msg.object.length <= 0) {
		list += "No Data Found";
	}

	jQuery.each(msg.object, function(key, value) {
		list += "<tr>";
		list += "<td><a href='labeditpatient.do?id=" + value.patientid + "'>"
				+ value.name + "</a></td>";
		list += "<td>" + value.gender + "</td>";
		list += "<td>" + value.dob + "</td>";
		list += "<td>" + value.mobilenumber + "</td>";
		list += "<td>" + value.email + "</td>";
		list += "<td><a href='labeditpatient.do?id=" + value.patientid
				+ "'><i class='fa fa-pencil' aria-hidden='true'></i></a></td>";
		list += "</tr>";
	});

	$("#showlist").html(list);
	$('#table-1').dataTable({
	   	 "order": [[ 0, "desc" ]],
	   	 "columnDefs": [
	   	                { "orderable": true, "targets": 0 },
	   	                { "orderable": true, "targets": 1 },
	   	                { "orderable": true, "targets": 2 }]
	   	              
	    });
};

var setRadioPatientList = function(limit, offset) {
	console.info("set RADIO Patient List" + "--------"
			+ hostUrlList.dashboarduserdetails);

	var method = "POST";
	var hostUrl = hostUrlList.patientlist;
	var data = "userid="+$.cookie("userid")+"&limit=&offset=";

	callAjax(function(msg){
		var list = "";
		if (msg.object.length <= 0) {
			list += "No Data Found";
		}

		jQuery.each(msg.object, function(key, value) {
			list += "<tr>";
			list += "<td><a href='radiologyeditpatient.do?id=" + value.patientid + "'>"
					+ value.name + "</a></td>";
			list += "<td>" + value.gender + "</td>";
			list += "<td>" + value.dob + "</td>";
			list += "<td>" + value.mobilenumber + "</td>";
			list += "<td>" + value.email + "</td>";
			list += "<td><a href='radiologyeditpatient.do?id=" + value.patientid
					+ "'><i class='fa fa-pencil' aria-hidden='true'></i></a></td>";
			list += "</tr>";
		});

		$("#showlist").html(list);
		$('#table-1').dataTable({
		   	 "order": [[ 0, "desc" ]],
		   	 "columnDefs": [
		   	                { "orderable": true, "targets": 0 },
		   	                { "orderable": true, "targets": 1 },
		   	                { "orderable": true, "targets": 2 }]
		   	              
		    });
	}, function() {
		console.info("error");
	}, method, hostUrl, data);
};

// End

// Search Patient
var setPatientListSearch = function(type, patientname, limit, offset) {
	console.info("Patient List Search:- " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabPatientListSearch(patientname, limit, offset);
	} else {
		setRadioPatientListSearch(patientname, limit, offset);
	}
};

var setLabPatientListSearch = function(patientname, limit, offset) {
	console.info("set Patient List Search " + "--------"
			+ hostUrlList.patientlistsearch);

	var method = "POST";
	var hostUrl = hostUrlList.patientlistsearch;
	var data = "userid="+$.cookie("userid")+"&patientname=" + patientname + "&limit=&offset=";

	// Call Same Method From Above
	callAjax(labPatientListHandler, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var setRadioPatientListSearch = function(patientname, limit, offset) {
	console.info("set Radio Patient List Search " + "--------"
			+ hostUrlList.patientlistsearch);

	var method = "POST";
	var hostUrl = hostUrlList.patientlistsearch;
	var data = "userid="+$.cookie("userid")+"&patientname=" + patientname + "&limit=&offset=";

	// Call Same Method From Above
	callAjax(labPatientListHandler, function() {
		console.info("error");
	}, method, hostUrl, data);
};
// End Search Patient

// Show Appointment List Details

var setAppointmentList = function(type, limit, offset) {
	console.info("Appointment List:- " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabAppointmentList(limit, offset);
	} else {
		setRadioAppointmentList(limit, offset);
	}
};

var setLabAppointmentList = function(limit, offset) {
	console.info("set Appointment List" + "--------"
			+ hostUrlList.appointmentlist);

	var method = "POST";
	var hostUrl = hostUrlList.appointmentlist;
	var data = "userid="+$.cookie("userid")+"&limit=&offset=";

	callAjax(labAppointmentListHandler, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var labAppointmentListHandler = function(msg) {
	
	$('#table-1').DataTable().destroy();
	
	var list = "";
	if (msg.object.length <= 0) {
		//list += "No Data Found";
	}

	jQuery.each(msg.object, function(key, value) {
		list += "<tr>";
		list += "<td class='hidden'>"+key+"</td>";
		list += "<td>" + value.referby + "</td>";
		list += "<td>" + value.patientname + "</td>";
		list += "<td>" + value.fromdate + "</td>";
		list += "<td>" + value.fromtime + "</td>";
		list += "</tr>";
	});

	$("#showlist").html(list);
	
	var table = $('#table-1').DataTable({
		"columns": [null,null,null,null,null]
		}).order( [ 0, 'asc' ] );

};

var setRadioAppointmentList = function(limit, offset) {
	console.info("set radio Appointment List" + "--------"
			+ hostUrlList.appointmentlist);

	var method = "POST";
	var hostUrl = hostUrlList.appointmentlist;
	var data = "userid="+$.cookie("userid")+"&limit=&offset=";

	callAjax(labAppointmentListHandler, function() {
		console.info("error");
	}, method, hostUrl, data);
};

// End

// Search Appointment List Details
var setAppointmentListSearch = function(type, phyname, patientname, fromdate,
		todate, limit, offset) {
	console.info("Appointment List Search:- " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabAppointmentListSearch(phyname, patientname, fromdate, todate,
				limit, offset);
	} else {
		setRadioAppointmentListSearch(phyname, patientname, fromdate, todate,
				limit, offset);
	}
};

var setLabAppointmentListSearch = function(phyname, patientname, fromdate,
		todate, limit, offset) {
	console.info("set Appointment List Search " + "--------"
			+ hostUrlList.appointmentlistsearch);

	var method = "POST";
	var hostUrl = hostUrlList.appointmentlistsearch;
	var data = "userid="+$.cookie("userid")+"&phyname=" + phyname + "&patientname=" + patientname
			+ "&fromdate=" + fromdate + "&todate=" + todate + "&limit=&offset=";

	// Call Same Method From Above
	callAjax(labAppointmentListHandler, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var setRadioAppointmentListSearch = function(phyname, patientname, fromdate,
		todate, limit, offset) {
	console.info("set Radio Appointment List Search " + "--------"
			+ hostUrlList.appointmentlistsearch);

	var method = "POST";
	var hostUrl = hostUrlList.appointmentlistsearch;
	var data = "userid="+$.cookie("userid")+"&phyname=" + phyname + "&patientname=" + patientname
			+ "&fromdate=" + fromdate + "&todate=" + todate + "&limit=&offset=";

	// Call Same Method From Above
	callAjax(labAppointmentListHandler, function() {
		console.info("error");
	}, method, hostUrl, data);
};
// End Search Patient

// Scheduling Avalablity Insert
var setSchedulingAvailblityInsert = function(type, fromdate, todate, fromtime,
		totime) {
	console.info("Scheduling Avalablity Insert:- " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabSchedulingAvailblityInsert(fromdate, todate, fromtime, totime);
	} else {
		setRadioSchedulingAvailblityInsert(fromdate, todate, fromtime, totime);
	}
};

var setLabSchedulingAvailblityInsert = function(fromdate, todate, fromtime,
		totime) {
	console.info("LAB Scheduling Avalablity Insert " + "--------"
			+ hostUrlList.scheduleavaliblityinsert);

	var method = "POST";
	var hostUrl = hostUrlList.scheduleavaliblityinsert;
	var data = "userid="+$.cookie("userid")+"&fromdate=" + fromdate + "&todate=" + todate
			+ "&fromtime=" + fromtime + "&totime=" + totime;

	// Call Same Method From Above
	callAjax(function(msg) {

		if (msg.valid) {
			$.cookie("labSuccessMessage","true");
			location.reload();
		} else {
			$.cookie("labErrorMessage","true");
		}

		$("#phyname").val('');
		$("#patientname").val('');
		$("#fromdate").val('');
		$("#todate").val('');

	}, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var setRadioSchedulingAvailblityInsert = function(fromdate, todate, fromtime,
		totime) {

	console.info("Radio Scheduling Avalablity Insert " + "--------"
			+ hostUrlList.scheduleavaliblityinsert);

	var method = "POST";
	var hostUrl = hostUrlList.scheduleavaliblityinsert;
	var data = "userid="+$.cookie("userid")+"&fromdate=" + fromdate + "&todate=" + todate
			+ "&fromtime=" + fromtime + "&totime=" + totime;

	// Call Same Method From Above
	callAjax(function(msg) {

		if (msg.valid) {
			$.cookie("radioSuccessMessage","true");
			location.reload();
		} else {
			$.cookie("radioErrorMessage","true");
		}

		$("#phyname").val('');
		$("#patientname").val('');
		$("#fromdate").val('');
		$("#todate").val('');

	}, function() {
		console.info("error");
	}, method, hostUrl, data);
};
// End Scheduling Avalablity Insert

// Scheduling Avalablity Get
var setSchedulingAvailblityGet = function(type, schedulingdate, schedulingtype) {
	console.info("Scheduling Avalablity Get:- " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabSchedulingAvailblityGet(schedulingdate, schedulingtype);
	} else {
		setRadioSchedulingAvailblityGet(schedulingdate, schedulingtype);
	}
};

var setLabSchedulingAvailblityGet = function(schedulingdate, schedulingtype) {

	console.info("LAB Scheduling Avalablity Get " + "--------"
			+ hostUrlList.scheduleavaliblity);

	var method = "POST";
	var hostUrl = hostUrlList.scheduleavaliblity;
	var data = "userid="+$.cookie("userid")+"&schedulingdate=" + schedulingdate
			+ "&schedulingtype=" + schedulingtype;

	// Call Same Method From Above
	callAjax(function(msg) {

		 console.log(msg.object);
    	 var events = [];
         $(msg.object).each(function(index,item) {
        	
        	 events.push({
                 title: item.Title,
                 start: item.start,
                 end:item.end
             });
         });
    	 console.log(events);
    	
    	   $('#calendar').fullCalendar({
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

	}, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var setRadioSchedulingAvailblityGet = function(schedulingdate, schedulingtype) {
	console.info("Radio Scheduling Avalablity Get " + "--------"
			+ hostUrlList.scheduleavaliblity);

	var method = "POST";
	var hostUrl = hostUrlList.scheduleavaliblity;
	var data = "userid="+$.cookie("userid")+"&schedulingdate=" + schedulingdate
			+ "&schedulingtype=" + schedulingtype;

	// Call Same Method From Above
	callAjax(function(msg) {

		 console.log(msg.object);
    	 var events = [];
         $(msg.object).each(function(index,item) {
        	
        	 events.push({
                 title: item.Title,
                 start: item.start,
                 end:item.end
             });
         });
    	 console.log(events);
    	
    	   $('#calendar').fullCalendar({
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

	}, function() {
		console.info("error");
	}, method, hostUrl, data);
};
// End Scheduling Avalablity Get

// Upcoming Appointment For TO Do list

/**
 * Lab Dashboard For Users Details
 */
var setUpcomingAppointmentTODO = function(type) {
	console.info("user details " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabDashboardUpcomingAppointmentTODO();
	} else {
		setRadioDashboardUpcomingAppointmentTODO();
	}

};

var setLabDashboardUpcomingAppointmentTODO = function() {
	console.info("set Lab Upcoming Appointment" + "--------"
			+ hostUrlList.upcomingappointmentlist);

	var method = "POST";
	var hostUrl = hostUrlList.upcomingappointmentlist;
	var data = "userid="+$.cookie("userid");

	callAjax(labDashboardUpcomingAppointmentTODOHandler, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var labDashboardUpcomingAppointmentTODOHandler = function(msg) {
	var list = "";

	jQuery
			.each(
					msg.object,
					function(key, value) {
						list += "<tr>";
						list += "<td>" + value.fromdate + "</td>";
						list += "<td><a href='labeditpatient.do?id="+value.PatientId+"'>" + value.patientname
								+ "</a></td>";
						list += "<td>Perform a <a  href='labeditpatient.do?id="+value.PatientId+"' >Laboratory test</a> for your<a href='labappointment.do'> Appointment on "
								+ value.fromdate
								+ " "
								+ value.fromtime
								+ "</a></td>";
						list += "</tr>";
					});

	$("#showlist").html(list);
	$('#table-1').dataTable({
   	 "order": [[ 0, "desc" ]],
   	 "columnDefs": [
   	                { "orderable": true, "targets": 0 },
   	                { "orderable": true, "targets": 1 },
   	                { "orderable": true, "targets": 2 }]
   	              
    });
};

var setRadioDashboardUpcomingAppointmentTODO = function() {
	console.info("set radio Upcoming Appointment" + "--------"
			+ hostUrlList.upcomingappointmentlist);

	var method = "POST";
	var hostUrl = hostUrlList.upcomingappointmentlist;
	var data = "userid="+$.cookie("userid");

	callAjax(radioDashboardUpcomingAppointmentTODOHandler, function() {
		console.info("error");
	}, method, hostUrl, data);
};

var radioDashboardUpcomingAppointmentTODOHandler = function(msg) {
	var list = "";

	jQuery
			.each(
					msg.object,
					function(key, value) {
						list += "<tr>";
						list += "<td>" + value.fromdate + "</td>";
						list += "<td><a href='radioeditpatient.do?id="+value.PatientId+"'>" + value.patientname
								+ "</a></td>";
						list += "<td>Perform a <a  href='radioeditpatient.do?id="+value.PatientId+"' >Laboratory test</a> for your<a href='radiologyappointment.do'> Appointment on "
								+ value.fromdate
								+ " "
								+ value.fromtime
								+ "</a></td>";
						list += "</tr>";
					});

	$("#showlist").html(list);
	$('#table-1').dataTable({
   	 "order": [[ 0, "desc" ]],
   	 "columnDefs": [
   	                { "orderable": true, "targets": 0 },
   	                { "orderable": true, "targets": 1 },
   	                { "orderable": true, "targets": 2 }]
   	              
    });
};

// End Upcoming Appointment For TO Do list

//Start Lab And Radio Download File
var setDownloadFile = function(type) {
	console.info("user details " + type + "/" + userType.lab);
	if (type == userType.lab) {
		setLabDownloadFile();
	} else {
		setRadioDownloadFile();
	}

};

var setLabDownloadFile = function() {
	console.info("set Lab Download" + "--------"
			+ hostUrlList.labradiodownloaduploadedfile);

	var method = "POST";
	var hostUrl = hostUrlList.labradiodownloaduploadedfile;
	var data = "userid="+$.cookie("userid");

	callAjax(labDownloadFile, function() {
		console.info("error");
	}, method, hostUrl, data);

};

var labDownloadFile = function(msg) {
	
	$('#table-1').DataTable().destroy();
	
	var list = "";

	jQuery.each(msg.object, function(key, value) {
		list+="<tr>";
		list+="<td class='hidden'>"+key+"</td>";
		list+="<td>"+value.Name+"</td>";
		list+="<td>"+value.filename+"</td>";
		list+="<td>"+value.date+"</td>";
		list+="<td>";
		list+="<a class='downloaduploadedfile' data-path='"+value.filepath+"' href='#'><i class='fa fa-download' aria-hidden='true'></i></a>";
		list+="</td>";
		list+="</tr>";
	});

	$("#showlist").html(list);
	
	$('#table-1').dataTable({
	   	 "order": [[ 0, "desc" ]],
	   	 "columnDefs": [
	   	                { "orderable": true, "targets": 0 },
	   	                { "orderable": true, "targets": 1 },
	   	                { "orderable": true, "targets": 2 },
	   	             { "orderable": true, "targets": 3 },
	   	          { "orderable": false, "targets": 4 }]
	   	              
	    });
	
	$(".downloaduploadedfile").click(function(){
		var path=$(this).data('path');
		
		window.open(basicHostUrl+""+path);
	});
};

var setRadioDownloadFile = function() {
	console.info("set radio Upcoming Appointment" + "--------"
			+ hostUrlList.labradiodownloaduploadedfile);

	var method = "POST";
	var hostUrl = hostUrlList.labradiodownloaduploadedfile;
	var data = "userid="+$.cookie("userid");

	callAjax(labDownloadFile, function() {
		console.info("error");
	}, method, hostUrl, data);
};
// END  Lab And Radio Download File

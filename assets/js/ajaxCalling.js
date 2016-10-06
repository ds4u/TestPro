var basicHostUrl = window.location.protocol + "//" + window.location.host + "/";

var mainHostUrl = window.location.protocol + "//" + window.location.host
		+ "/queehr/";

var callAjax = function(handleData, errorHandleData, method, hostUrl, data) {
	jQuery(document).ready(function($) {
		$.ajax({
			type : method,
			url : hostUrl,
			data : data
		}).done(function(msg) {

			handleData(msg);
		}).fail(function(data) {
			errorHandleData(data);
		});

	});
};

var userType = {};
userType.lab = "lab";
userType.radiologst = "radiologst";

var hostUrlList = {};
hostUrlList.dashboardcount = "labradiodashboardcount.do";
hostUrlList.dashboarduserdetails = "labradiodashboarduserdetails.do";
hostUrlList.patientlist = "labradiopatientlist.do";
hostUrlList.patientlistsearch = "labradiopatientlistsearch.do";
hostUrlList.scheduleavaliblity = "labradioschedulingavailability.do";
hostUrlList.scheduleavaliblityinsert = "labradioschedulingavailabilityinsert.do";
hostUrlList.appointmentlist = "labradioappointmentlist.do";
hostUrlList.appointmentlistsearch = "labradioappointmentlistsearch.do";
hostUrlList.upcomingappointmentlist = "labradioupcomingappointmentlist.do";

hostUrlList.labradiouploadfile = "labradiouploadfile.do";
hostUrlList.uploadFile = "uploadFile.do";
hostUrlList.labradiodownloaduploadedfile = "labradiodownloaduploadedfile.do";

var convertDate = function(date) {
	var d = new Date(date);

	console.info(d.getTime());

	return (d.getTime() / 1000);
};
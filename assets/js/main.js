
jQuery(document).ready(function() {

	if ($.cookie("userid") == null || $.cookie("userid")=="") {
		window.location.href="login.do";
	}

	getPhyDashboardNotification();
	getNurseNotification();
	getLabRadiologyDashboardNotification();
	/* setInterval(function(){ getPhyDashboardCounter(); }, 15000); */

});
function getPhyDashboardNotification() {

	jQuery.ajax({
		method : "GET",
		url : 'getPhyNotification.do',

		data : {},
		success : function(d) {
			notificationList(d);
		},
		fails : function(error) {
			alert("its not working");
		}
	});
}
function getNurseNotification() {

	
	jQuery.ajax({
		method : "GET",
		url : 'getNurseNotification.do',

		data : {},
		success : function(d) {
			notificationList(d);
		},
		fails : function(error) {
			alert("its not working");
		}
	});
}
function getLabRadiologyDashboardNotification() {

	jQuery.ajax({
		method : "GET",
		url : 'getLabRadioNotification.do',

		data : {},
		success : function(d) {
			notificationList(d);
		},
		fails : function(error) {
			alert("its not working");
		}
	});
}

function notificationList(d) {
	var list = "";
	if (d.length > 0) {
		$("#notd").css("display", "block");
	} else {
		$("#notd").css("display", "none");

		list += "<li class='list-group-item' >";
		list += "<a href='#'  class='user-list-item ' >";
		list += "<div class='icon bg-pink'>";
		list += "<i class='zmdi zmdi-comment' id='comment'></i></div>";
		list += "<div class='user-desc'>";
		list += "<span class='comment' id='comment'>no record found</span>";

		list += "</div></a></li>";

	}

	jQuery.each(d, function(key, d) {

		list += "<li class='list-group-item' >";
		list += "<a href='#'  class='user-list-item ' onclick='readNot(" + d.id
				+ ")'>";
		list += "<div class='icon bg-pink'>";
		list += "<i class='zmdi zmdi-comment' id='comment'></i></div>";
		list += "<div class='user-desc'>";
		list += "<span class='comment' id='comment'>" + d.message + "</span>";
		/*
		 * list += "<span class='name' id='userName'>" + d.firstName + "</span>";
		 * list += "<span class='desc' id='fromDate'>" + d.sFromDate + "</span>";
		 * list += "<span class='time' id='fromTime'>" + d.sFromTime + "</span>";
		 */
		list += "</div></a></li>";
	});
	
	//console.info("created List:- "+list);

	/*
	 * list += "<li class='list-group-item' >"; list += "<span
	 * id='morenotification'>'+more</span></li>";
	 */

	$("#NotificationList").html(list);

}

function readNot(_id) {
	$.ajax({
		method : "POST",
		url : "readnote.do",
		data : {
			id : _id
		}
	}).done(function(msg) {
		getPhyDashboardNotification();
	});
}

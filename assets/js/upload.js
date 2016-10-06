var uploadDoc = function(type) {

	$("#" + type + "uploadImageModel").remove();

	var list = "";
	list += "<div class='modal fade'  id='"
			+ type
			+ "uploadImageModel' style='margin-top:10%;'  role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>";
	list += "<div class='modal-dialog'>";
	list += "<div class='modal-content'>";
	list += "<div class='modal-header'>";
	list += "<button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>";
	list += "<h4 class='modal-title'>Upload File</h4>";
	list += "</div>";
	list += "<form method='POST'  id='"
			+ type
			+ "FormUpload'  enctype='multipart/form-data' action=javascript:void(0);>";
	list += "<div class='modal-body'>";
	list += "<div class='form form-horizontal'>";
	list += "<input type='hidden' id='patient_id' class='form-control'>";
	list += "<div class='form-group'>";
	list += "<label class='col-md-12'>File Upload only in pdf format.</label>";
	list += "<div class='col-md-12'>";
	list += "<div></br></div>";
	list += "<input type='file' name='file' id='" + type
			+ "file' /></div></div></div></div>";
	list += "<div class='modal-footer'>";
	list += "<button type='button' id='cancel_assign' class='btn btn-default uprCase'><span class='fa fa-chevron-left'></span> <strong>Cancel</strong></button>";
	list += "<button type='submit' class='btn btn-success uprCase'><span class='fa fa-save'></span> <strong>Upload Image</strong></button>";
	list += "</div>";
	list += "</form>";
	list += "<script>";
	list += "jQuery( '#" + type + "FormUpload' ).submit(function( event ) {";
	list += "var form = document.getElementById('" + type + "FormUpload');";
	list += "var formURL = '" + mainHostUrl + hostUrlList.uploadFile + "';";
	list += "var jForm = new FormData(form);";
	list += "console.info(jForm);";
	list += "var name=jQuery('#" + type + "file').val();";
	list += "var finalName=name.substr(name.indexOf('.'), name.length);";
	list += "var variable = ['.pdf','.PDF'];";
	list += "if(variable.indexOf(finalName) != -1){";
	list += "jQuery.ajax({";
	list += "url: formURL,";
	list += "type: 'POST',";
	list += "data: jForm,";
	list += "mimeType: 'multipart/form-data',";
	list += "contentType: false,";
	list += "cache: false,";
	list += "processData: false,";
	list += "success: function (data, textStatus, jqXHR) {";
	list += "console.info('upload Image Done');},";
	list += "error: function (jqXHR, textStatus, errorThrown) {";
	list += "alert('File Upload only in pdf format');";
	list += "$('#" + type + "file').val('');}";
	list += "}).done(function( msg ) {";

	list += "var imgData=$.parseJSON(msg);";
	list += "console.info(imgData.description);";
	list += "var imgValue=imgData.object;";
	list += "console.info(imgValue);";
	list += "var path=imgValue.substring(imgValue.indexOf('tmpfile'));";
	list += "var filename=imgValue.substring(imgValue.indexOf('tmpfile')+8);";
	list += "console.info(path);";
	list += "$.cookie('imgValue',path);";
	list += "callAjax(function(msg){";
	list += "if(msg.valid){alert('File Uploaded Successfully'); $('#" + type+ "uploadImageModel').modal('hide'); location.reload();}";
	list += "else{alert('File Not Uploaded Successfully');$('#" + type+ "uploadImageModel').modal('hide');}";
	list += "}, function(error){alert('File Upload only in pdf format.');$('#" + type+ "uploadImageModel').modal('hide');}, 'POST', '"+hostUrlList.labradiouploadfile+"', " +
			"'userid="+$.cookie('userid')+"&appintmentid="+$.cookie('appid')+"&filename='+filename+'&filepath='+path+'');";

	list += "});";
	list += "}else{";
	list += "alert('File Upload only in pdf format.');";
	list += "$('#" + type + "file').val('');}});";
	list += "$('#cancel_assign').click(function(){";
	list += "$('#" + type + "uploadImageModel').modal('hide');});";
	list += "</script>";
	list += "</div></div></div>";

	$("body").append(list);

	$("#" + type + "uploadImageModel").modal('show');

	$(document).on('keyup', function(evt) {
		if (evt.keyCode == 27) {
			$("#" + type + "uploadImageModel").modal('hide');
			$("#" + type + "file").modal('hide');
			$("#" + type + "upload").modal('hide');
			// jQuery(this).parent().modal('show');
			/* jQuery(".modal").show(); */

			evt.stopPropagation();
		}

	});
};

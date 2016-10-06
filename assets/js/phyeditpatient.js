jQuery('document').ready(function($){
	
	$("#vitalDate" ).datepicker({ 
		defaultDate: new Date(),
		minDate: 0, 
		maxDate: "+1M +0D" 
			});
	
	getVitalInformation();
	getAllergyInformation();
	getChronicinformation();
	getReferClinicianList();
	getReferClinicianData();
	getIntakeNotesPatient();
	getMedicationformation();
	getMedicationformation();
	currentDate();

	
	$('#vitalForm').parsley();
	$('#allergyForm').parsley();
	$('#chronicForm').parsley();
	$('#editAllergyForm').parsley();
	$('#editChronicForm').parsley();
	$('#medicationForm').parsley();
	
	jQuery("#vitalSave").click(function(){
		var $form = $('#vitalForm');
        var a = $form.parsley().validate();
        if(a) {
		saveVitalInformation();
        }
	});
	
	jQuery("#allergySave").click(function(){
		var $form = $('#allergyForm');
        var a = $form.parsley().validate();
        if(a) {
		saveAllergyInformation();
        }
	});
	
	jQuery("#editAllergySave").click(function(){
		var $form = $('#editAllergyForm');
        var a = $form.parsley().validate();
        if(a) {
		updateAllergyInformation();
        }
		});
	
	jQuery("#chronicIllnessSave").click(function(){
		var $form = $('#chronicForm');
        var a = $form.parsley().validate();
        if(a) {
		saveChronicInformation();
        }
	});

	jQuery("#editChronicSave").click(function(){
		var $form = $('#editChronicForm');
        var a = $form.parsley().validate();
        if(a) {
		updateChronicInformation();
        }
	});
	
	jQuery("#AddReferPhysician").click(function(){
		
		addReferPhysician();
	});
	
	/*jQuery('a[href = "#updateRefer"]').click(function()
			{
		alert("update");
		updateRefer();
	});*/
	
	$('#updateRefer').on('click',function(){
		
	});
	
	
	jQuery("#medicationSave").click(function(){
		var $form = $('#medicationForm');
        var a = $form.parsley().validate();
        if(a) {
		saveMedicationInformation();
        }
	});
	jQuery("#editMedicationSave").click(function(){
		
		updateMedicationInformation();
        
	});
	
	jQuery("#noteSave").click(function(){
		
		saveNoteInformation();
        
	});
	
	jQuery("#encounterSave").click(function(){
		
	saveEncounterInformation();
        
	});
	
	
});
	
	
/*****************************************************VITAL****************************************************************************/
	function saveVitalInformation(){
		//jQuery(".modal-dialog").modal("hide");
		//$('#add-vital').modal.close();
		jQuery('#add-vital').modal('hide');
		
		var patientId = jQuery("#patientId").val();
		var phyId = jQuery("#physicianId").val();
		var weight = jQuery("#weight").val();
		var height = jQuery("#height").val();
		var bodyTemp = jQuery("#bodyTemperature").val();
		var pulseRate = jQuery("#pulseRate").val();
		var bloodGroup = jQuery("#bloodGroup").val();
		var bloodPressure = jQuery("#bloodPressure").val();
		var vitalDate = jQuery("#vitalDate").val();
		
		jQuery.ajax({
			method : 'post',
			url:'phyvitalinformation.do',
			data : {"bloodGroup":bloodGroup,"bloodPressure":bloodPressure,"bodyTemp":bodyTemp,"clinicianId":phyId,"date":vitalDate,"height":height,"patientId":patientId,"pulseRate":pulseRate,"weight":weight},
			success:function(){
			    $('#vitalMessage').html('<div id="vitalMessage" class="alert alert-success" >Vital Information Saved Successfully!</div>');
				getVitalInformation();
				$("#vitalForm")[0].reset();
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
	
	function getVitalInformation(){
		var patientId = jQuery("#patientId").val();
		jQuery.ajax({
			method : 'GET',
			url:'phyvitalinformation.do',
			data :{"patientId":patientId},
			success:function(data){
				
				fillVitalList(data);
					
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
	
	function fillVitalList(data){
		
		jQuery('#vitalTable').dataTable().fnDestroy();
		var list="";
		jQuery.each(data, function(index, item) {
			if(item.weight===null){
				item.weight='';
			}
			if(item.height===null){
				item.height='';
			}
			if(item.bodyTemp===null){
				item.bodyTemp='';
			}
			if(item.pulseRate===null){
				item.pulseRate='';
			}
			list+= "<tr>";
			list+= "<td>"+item.weight+"</td>";
			list+= "<td>"+item.height+"</td>";
			list+= "<td>"+item.bodyTemp+"</td>";
			list+= "<td>"+item.pulseRate+"</td>";
			list+= "<td>"+item.bloodGroup+"</td>";
			list+= "<td>"+item.bloodPressure+"</td>";
			list+= "<td>"+item.sDate+"</td>";
			list+= "</tr>";
		});
		jQuery("#vitalList").html(list);
		  $('#vitalTable').dataTable({
		    	 "order": [[ 0, "desc" ]],
		    	 "columnDefs": [
		    	                { "orderable": true, "targets": 0 },
		    	                { "orderable": true, "targets": 1 },
		    	                { "orderable": true, "targets": 2 },
		    	                { "orderable": true, "targets": 3 }]
		    	              
	         });
	}
	
	//set current date in date field by default
	function currentDate(){
		var today = new Date();
		var tomorrow = new Date(new Date().getTime() + 24 * 60 * 60 * 1000);
		var dd = today.getDate();
		var mm = today.getMonth()+1; //January is 0!
		var yyyy = today.getFullYear();
		var tomday = tomorrow.getDate();
		var tommonth = tomorrow.getMonth() + 1;
		var tomyear = tomorrow.getFullYear();
		if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm} today = mm+'/'+dd+'/'+yyyy;
		if(tomday<10){tomday='0'+tomday} if(tommonth<10){tommonth='0'+tommonth} tomorrow = tommonth+'/'+tomday+'/'+tomyear;
		$('#vitalDate').attr('value', today);
		
	}
/*****************************************************ALLERGY****************************************************************************/
	function saveAllergyInformation(){
		//jQuery(".modal-dialog").modal("hide");
		//$('#add-vital').modal.close();
		jQuery('#add-allergy').modal('hide');
		
		var patientId = jQuery("#patientId").val();
		var phyId = jQuery("#physicianId").val();
		var allergyName = jQuery("#allergyName").val();
		var reaction = jQuery("#reaction").val();
		var status = jQuery("#status").val();
		var startDate = jQuery("#startDate").val();
		var endDate = jQuery("#endDate").val();
		
		jQuery.ajax({
			method : 'post',
			url:'phyallergyinformation.do',
			data : {"allergyName":allergyName,"clinicianId":phyId,"endDate":endDate,"patientId":patientId,"reaction":reaction,"startDate":startDate,"status":status},
			success:function(){
				$("#allergyForm")[0].reset();
			    $('#allergyMessage').html('<div id="allergyMessage" class="alert alert-success" >Allergy Information Saved Successfully!</div>');
			
				getAllergyInformation();
				
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
	
	function getAllergyInformation(){
		var patientId = jQuery("#patientId").val();
		jQuery.ajax({
			method : 'GET',
			url:'phyallergyinformation.do',
			data :{"patientId":patientId},
			success:function(data){
				
				fillAllergyList(data);
					
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
	
	function fillAllergyList(data){
		jQuery('#allergyTable').dataTable().fnDestroy();
		var list="";
		jQuery.each(data,function(index,allergy){
			 list+="<tr>";
			 list+="<td>"+allergy.allergyName+"</td>";
			 list+="<td>"+allergy.stringStartDate+"</td>";
			 list+="<td>"+allergy.stringEndDate+"</td>";
			 list+="<td>"+allergy.reaction+"</td>";
			 list+="<td>"+allergy.status+"</td>";
			 list+="<td><a data-target='#edit-illness' id='editAllergy' onClick='editAllergy("+JSON.stringify(allergy)+")' data-toggle='modal' value='' href='#'><i aria-hidden='true' class='fa fa-pencil'></i></a></td>";
			 list+="</tr>";
			 
		});
		
		jQuery("#allergyList").html(list);
		  $('#allergyTable').dataTable({
		    	 "order": [[ 0, "desc" ]],
		    	 "columnDefs": [
		    	                { "orderable": true, "targets": 0 },
		    	                { "orderable": true, "targets": 1 },
		    	                { "orderable": true, "targets": 2 },
		    	                { "orderable": true, "targets": 3 }]
		    	              
	         });
	}
	
	function editAllergy(allergy){
			jQuery("#editAllergyName").val(allergy.allergyName);
			jQuery("#editReaction").val(allergy.reaction);
			jQuery("#editStatus").val(allergy.status);
			jQuery("#editStartDate").val(allergy.stringStartDate);
			jQuery("#editEndDate").val(allergy.stringEndDate);
			jQuery("#editAllergyId").val(allergy.id);
			jQuery("#editPatientId").val(allergy.patientId);
			jQuery("#editClinicianId").val(allergy.clinicianId);
			
	}
	function updateAllergyInformation(){
		var allergyId = jQuery("#editAllergyId").val();
		var allergyName = jQuery("#editAllergyName").val();
		var reaction = jQuery("#editReaction").val();
		var status = jQuery("#editStatus").val();
		var startDate = jQuery("#editStartDate").val();
		var endDate = jQuery("#editEndDate").val();
		var patientId = jQuery("#editPatientId").val();
		var clinicianId = jQuery("#editClinicianId").val();
		jQuery.ajax({
			method : 'POST',
			url:'updateallergyinformation.do',
			data :{"id":allergyId,"allergyName":allergyName,"clinicianId":clinicianId,"endDate":endDate,"patientId":patientId,"reaction":reaction,"startDate":startDate,"status":status},
			success:function(data){
				 $('#allergyMessage').html('<div id="allergyMessage" class="alert alert-success" >Allergy Information Updated Successfully!</div>');
				getAllergyInformation();
				jQuery('#edit-illness').modal('hide');
					
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
/*****************************************************CHRONIC****************************************************************************/
	
	function saveChronicInformation(){
		//jQuery(".modal-dialog").modal("hide");
		//$('#add-vital').modal.close();
		jQuery('#add-chronic').modal('hide');
		var patientId = jQuery("#patientId").val();
		var phyId = jQuery("#physicianId").val();
		var illness = jQuery("#chronicIllness").val();
		var reaction = jQuery("#chronicReaction").val();
		var status = jQuery("#chronicSatus").val();
		var startDate = jQuery("#chronicStartDate").val();
		var endDate = jQuery("#chronicEndDate").val();
		
		
		jQuery.ajax({
			method : 'post',
			url:'addchronicillness.do',
			data : {"clinicianId":phyId,"endDate":endDate,"illness":illness,"patientId":patientId,"reaction":reaction,"startDate":startDate,"status":status},
			success:function(){
				 $('#chronicMessage').html('<div id="chronicMessage" class="alert alert-success" >Chronic Information Saved Successfully!</div>');
				getChronicinformation();
				$("#chronicForm")[0].reset();
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
	
	function getChronicinformation(){
		var patientId = jQuery("#patientId").val();
		jQuery.ajax({
			method : 'GET',
			url:'getchronicinformation.do',
			data :{"patientId":patientId},
			success:function(data){
				
				fillChronicList(data);
					
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
	
	function fillChronicList(data){
		jQuery('#chronicTable').dataTable().fnDestroy();
		var list="";
		jQuery.each(data, function(index, chronic) {
		
			list+= "<tr>";
			list+= "<td>"+chronic.illness+"</td>";
			list+= "<td>"+chronic.stringStartDate+"</td>";
			list+= "<td>"+chronic.stringEndDate+"</td>";
			list+= "<td>"+chronic.reaction+"</td>";
			list+= "<td>"+chronic.status+"</td>";
			list+= "<td><a data-target='#edit-chronic' onClick='editChronic("+JSON.stringify(chronic)+")' data-toggle='modal' href='#'><i aria-hidden='true' class='fa fa-pencil'></i></a></td>";
			list+= "</tr>";
		});
		jQuery("#chroniclList").html(list);
		  $('#chronicTable').dataTable({
		    	 "order": [[ 0, "desc" ]],
		    	 "columnDefs": [
		    	                { "orderable": true, "targets": 0 },
		    	                { "orderable": true, "targets": 1 },
		    	                { "orderable": true, "targets": 2 },
		    	                { "orderable": true, "targets": 3 }]
		    	              
	         });
	}
	
	function editChronic(chronic){
		jQuery("#editPatientId").val(chronic.id);
		jQuery("#editPhysicianId").val(chronic.clinicianId);
		jQuery("#editChronicIllness").val(chronic.illness);
		jQuery("#editChronicReaction").val(chronic.reaction);
		jQuery("#editChronicSatus").val(chronic.status);
		jQuery("#editChronicStartDate").val(chronic.stringStartDate);
		jQuery("#editChronicEndDate").val(chronic.stringEndDate);
		jQuery("#chronicId").val(chronic.id);
	
		
	}
	
	function updateChronicInformation(){
		var chronicId = jQuery("#chronicId").val();
		var illness = jQuery("#editChronicIllness").val();
		var reaction = jQuery("#editChronicReaction").val();
		var status = jQuery("#editChronicSatus").val();
		var startDate = jQuery("#editChronicStartDate").val();
		var endDate = jQuery("#editChronicEndDate").val();
		var patientId = jQuery("#patientId").val();
		var clinicianId = jQuery("#physicianId").val();
		jQuery.ajax({
			method : 'POST',
			url:'updatechronicinformation.do',
			data :{"id":chronicId,"clinicianId":clinicianId,"endDate":endDate,"illness":illness,"patientId":patientId,"reaction":reaction,"startDate":startDate,"status":status},
			success:function(data){
				 $('#chronicMessage').html('<div id="chronicMessage" class="alert alert-success" >Chronic Information updated Successfully!</div>');
				getChronicinformation();
				jQuery('#edit-madication').modal('hide');
					
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
/*****************************************************Refer clinician****************************************************************************/
	function getReferClinicianList()
	{
	
		var patientId = jQuery("#patientId").val();
		jQuery.ajax({
			method:'GET',
			url:'phyreferlist.do',
			data:{"patientId":patientId},
			success:function(data)
			{
				getReferListData(data[1]);
				getReferList(data[0]);
			
			},
			error:function(){
				console.info("Server-Error..");
			}
		});
	}
	
	function getReferList(data)
	{
		
		var list="<option value=''>Select Clinician</option>";
	    
	     jQuery.each( data, function( key, value ) {
	    	 
	    	
	          list+="<option value='"+value.id+"' +id='"+value.id+"'>"+value.firstName+" "+value.lastName+"</option>";
	     });

	     jQuery("#clinicianList").html(list);
		 

	
	}
	
	function addReferPhysician()
	{
		
		var _referClinicianId = $("#clinicianList").find('option:selected').attr('value');
		var _patientId = jQuery("#patientId").val();
		
		jQuery.ajax({
		
			method:'POST',
			url:'phyreferclinician.do',
			data:{"patientId":_patientId,"referClinicianId":_referClinicianId},
			success:function(data)
			{
				 $('#referMessage').html('<div id="referMessage" class="alert alert-success" >Patient is Successfully Referred!</div>');
				getReferClinicianData(data);
			},
			error:function(){
				console.info("Server-Error..");
			}
		});
	}
	
	function getReferClinicianData()
	{
	
		var patientId = jQuery("#patientId").val();
		jQuery.ajax({
			method:'GET',
			url:'phyreferClinicianData.do',
			data:{"patientId":patientId},
			success:function(data)
			{
				getReferListData(data[1]);
				getReferList(data[0]);
			},
			error:function(){
				console.info("Server-Error..");
			}
		});
	}
	function getReferListData(data)
	{
		jQuery('#referClinicianData').dataTable().fnDestroy();
		var list="";
	    
	     jQuery.each( data, function( key, _v ) {
	    	 list+="<tr>";
	    	 list+="<td>"+_v.firstName+" "+_v.lastName+"</td>";
	    	 list+="<td value='"+_v.id+"'><a onclick='updateRefer("+_v.id+")' href='javascript:void(0)' > <i aria-hidden='true' class='fa fa-pencil'></i></a></td>";
	    	 list+="</tr>";
	     });

	     jQuery("#referClinicianDataList").html(list);
	     
	     $('#referClinicianData').dataTable({
	    	 "order": [[ 0, "desc" ]],             
         });

	
	}
	function updateRefer(_id)
	{
		var referClinicianId=_id;
	
		var patientId = jQuery("#patientId").val();
		jQuery.ajax({
			method:'POST',
			url:'phyUpdateRefer.do',
			data:{"patientId":patientId,"referClinicianId":referClinicianId},
			success:function(data)
			{
				 $('#referMessage').html('<div id="referMessage" class="alert alert-success" >Referred Clinician Removed Successfully!</div>');
				getReferListData(data[1]);
				getReferList(data[0]);
			},
			error:function(){
				console.info("Server-Error..");
			}
		});
	}
	
	
	
	/*****************************************************Medication****************************************************************************/
	function saveMedicationInformation(){
		var date = new Date();
		var patientId = jQuery("#patientId").val();
		var phyId = jQuery("#physicianId").val();
		var medicationName = jQuery("#medicationName").val();
		var strength = jQuery("#medicationStrength").val();
		var frequency = jQuery("#medicationFrequency").val();
		var status = jQuery("#medicationStatus").val();
		if(status==null || status == ''){
			status = "Inactive";
		}
		var startDate = jQuery("#medicationStartDate").val();
		if(startDate == null || startDate ==''){
			startDate = date;
		}
		var endDate = jQuery("#medicationEndDate").val();
		if(endDate == null || endDate ==''){
			endDate = date;
		}
		
		
		jQuery.ajax({
			method : 'post',
			url:'addmedication.do',
			data : {"clinicianId":phyId,"endDate":endDate,"frequency":frequency,"medicationName":medicationName,"patientId":patientId,"startDate":startDate,"status":status,"strength":strength},
			success:function(){
				 $('#medicationMessage').html('<div id="medicationMessage" class="alert alert-success" >Chronic Information Saved Successfully!</div>');
				getMedicationformation();
				jQuery('#add-madication').modal('hide');
				$("#chronicForm")[0].reset();
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
	
	function getMedicationformation(){
		var patientId = jQuery("#patientId").val();
		jQuery.ajax({
			method : 'GET',
			url:'getmedicationformation.do',
			data :{"patientId":patientId},
			success:function(data){
				
				fillMedicationList(data);
					
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
	
	function fillMedicationList(data){
		jQuery('#medicationTable').dataTable().fnDestroy();
		var list="";
		
		jQuery.each(data, function(index, medication) {
			if(medication.medicationName==null){
				medication.medicationName='';
			}
			if(medication.strength==null){
				medication.strength='';
			}
			if(medication.frequency==null){
				medication.frequency='';
			}
			if(medication.status==null){
				medication.status='';
			}
			if(medication.stringStartDateh==null){
				medication.stringStartDate='';
			}
			if(medication.stringEndDate==null){
				medication.stringEndDate='';
			}
			list+= "<tr>";
			list+= "<td>"+medication.medicationName+"</td>";
			list+= "<td>"+medication.strength+"</td>";
			list+= "<td>"+medication.frequency+"</td>";
			list+= "<td>"+medication.status+"</td>";
			list+= "<td>"+medication.stringStartDate+"</td>";
			list+= "<td>"+medication.stringEndDate+"</td>";
			list+= "<td><a data-target='#edit-medication' onClick='editMedication("+JSON.stringify(medication)+")' data-toggle='modal' href='#'><i aria-hidden='true' class='fa fa-pencil'></i></a></td>";
			list+= "</tr>";
		});
		jQuery("#medicationList").html(list);
		  $('#medicationTable').dataTable({
		    	 "order": [[ 0, "desc" ]],
		    	 "columnDefs": [
		    	                { "orderable": true, "targets": 0 },
		    	                { "orderable": true, "targets": 1 },
		    	                { "orderable": true, "targets": 2 },
		    	                { "orderable": true, "targets": 3 }]
		    	              
	         });
	}
	
	function editMedication(medication){
	
		jQuery("#editMedicationId"). val(medication.id);
		jQuery("#editMedicationName").val(medication.medicationName);
		jQuery("#editMedicaionStrength").val(medication.strength);
		jQuery("#editMedicationFrequency").val(medication.frequency);
		jQuery("#editMedicationStatus").val(medication.status);
		jQuery("#editMedicationStartDate").val(medication.stringStartDate);
		jQuery("#editMedicationEndDate").val(medication.stringEndDate);
	
		
	}
	
	function updateMedicationInformation(){
		var id=jQuery("#editMedicationId").val();
		var patientId = jQuery("#patientId").val();
		var phyId = jQuery("#physicianId").val();
		var medicationName = jQuery("#editMedicationName").val();
		var strength = jQuery("#editMedicationStrength").val();
		var frequency = jQuery("#editMedicationFrequency").val();
		var status = jQuery("#editMedicationStatus").val();
		var startDate = jQuery("#editMedicationStartDate").val();
		var endDate = jQuery("#editMedicationEndDate").val();
		
		jQuery.ajax({
			method : 'POST',
			url:'updatmedicationinformation.do',
			data : {"id":id,"clinicianId":phyId,"endDate":endDate,"frequency":frequency,"medicationName":medicationName,"patientId":patientId,"startDate":startDate,"status":status,"strength":strength},
			success:function(data){
				 $('#medicationMessage').html('<div id="medicationMessage" class="alert alert-success" >Medication Information Updated Successfully!</div>');
				getMedicationformation();
				jQuery('#edit-medication').modal('hide');
					
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
	
	/*****************************************************Open Task****************************************************************************/
	
	function createNote(date,time,duration){
	
		var phyFirstName = jQuery("#physicianFirstName").val();
		var phyLastName = jQuery("#physicianLastName").val();
		var patientFirstName = jQuery("#patientFirstName").val();
		var patientLastName = jQuery("#patientLastName").val();
		jQuery("#notePhysicianName").val(phyFirstName+" "+phyLastName);
		jQuery("#notePatientName").val(patientFirstName+" "+patientLastName);
		jQuery("#noteDateTime").val(date+" "+time);
		jQuery("#noteDuration").val(duration);
	}
	
	function encounterReport(date,time,duration,appointmentId){
		
		var phyFirstName = jQuery("#physicianFirstName").val();
		var phyLastName = jQuery("#physicianLastName").val();
		var patientFirstName = jQuery("#patientFirstName").val();
		var patientLastName = jQuery("#patientLastName").val();
		jQuery("#encounterPhyName").val(phyFirstName+" "+phyLastName);
		jQuery("#encounterPatientName").val(patientFirstName+" "+patientLastName);
		jQuery("#encounterDateTime").val(date+" "+time);
		jQuery("#encounterDuration").val(duration);
		jQuery("#encounterAppointmentId").val(appointmentId);
	}
	
	function saveNoteInformation(){
		
		var date = new Date();
		var patientId = jQuery("#patientId").val();
		var phyId = jQuery("#physicianId").val();
		var createdOn = date;
		var updatedOn = date;
		var duration = jQuery("#noteDuration").val();
		var presentingProblem = jQuery("#noteProblem").val();
	
		jQuery.ajax({
			method : 'post',
			url:'addnote.do',
			data : {"clinicianId":phyId,"createdOn":createdOn,"duration":duration,"patientId":patientId,"presentingProblems":presentingProblem,"updatedOn":updatedOn},
			success:function(){
				 $('#intakeMessage').html('<div id="intakeMessage" class="alert alert-success" >Intake Notes Saved Successfully!</div>');
				jQuery('#create-note').modal('hide');
				$("#noteForm")[0].reset();
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
	
function saveEncounterInformation(){
	var inputs = document.getElementsByClassName( 'dynamicMedicineName' ),
    mNames  = [].map.call(inputs, function( input ) {
        return input.value;
    }).join(':');
	
	var inputs = document.getElementsByClassName( 'dynamicMedicineStrength' ),
    mStrengths  = [].map.call(inputs, function( input ) {
        return input.value;
    }).join( ':' );
	
	var inputs = document.getElementsByClassName( 'dynamicMedicineFrequency' ),
    mFrequencys  = [].map.call(inputs, function( input ) {
        return input.value;
    }).join( ':' );
	
	var inputs = document.getElementsByClassName( 'dynamicMedicineStartDate' ),
    mStartDates  = [].map.call(inputs, function( input ) {
        return input.value;
    }).join( ':' );
	
	var inputs = document.getElementsByClassName( 'dynamicMedicineEndDate' ),
    mEndDates  = [].map.call(inputs, function( input ) {
        return input.value;
    }).join( ':' );
	
		var date = new Date();
		var patientId = jQuery("#patientId").val();
		var phyId = jQuery("#physicianId").val();
		var createdOn = date;
		var updatedOn = date;
		var duration = jQuery("#encounterDuration").val();
		var presentingProblem = jQuery("#encounterProblem").val();
		var instruction = jQuery("#encounterInstruction").val();
		var recommendation = jQuery("#encounterRecomedations").val();
		var appointmentId = jQuery("#encounterAppointmentId").val();
		/*saveMedicationInformation();*/
		jQuery.ajax({
			method : 'post',
			url:'addEncounter.do',
			data : {"clinicianId":phyId,"createdOn":createdOn,"duration":duration,"patientId":patientId,
				"presentingProblem":presentingProblem,"updatedOn":updatedOn,
				"instruction":instruction,"recommendation":recommendation,
				"medications.medicationName":"got it","mName":mNames,
				"mStrength":mStrengths,"mFrequency":mFrequencys,"mStartDate":mStartDates,
				"mEndDate":mEndDates,"appointmentId":appointmentId,			
				},
			success:function(d){
				if(d=='true'){
				 $('#encounterMessage').html('<div id="encounterMessage" class="alert alert-success" >Encounter Report Saved Successfully!</div>');
				}else{
					$('#encounterMessage').html('<div id="encounterMessage" class="alert alert-danger" >Invalid Encounter Report!</div>');
				}
				jQuery('#treat-advice').modal('hide');
				$("#encounterForm")[0].reset();
			},
			error: function(){
				console.info("server error....");
			}
		});
	}
function getIntakeNotesPatient()
{
	var patientId = jQuery("#patientId").val();
	jQuery.ajax({
		method:'GET',
		url:'phyIntakeNotesPatient.do',
		data:{"patientId":patientId},
		success:function(d)
		{
			getIntakeNotesReception(d);
			
		},
		error:function(){
			console.info("Server-Error..");
		}
	});
}
function getIntakeNotesReception(d)
{
	var list="";    
     jQuery.each( d, function( key, _d) {
    	 list+="<tr>";
    	 list+="<td>"+_d.firstName+" "+_d.lastName+"</td>";
    	 list+="<td>"+_d.createdOn+"</td>";
    	
    	 list+="<td>"+'<a href="#"><i class="fa fa-download" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>'+"</td>";
    	 list+="<td>"+'<a href="#"><i class="fa fa-download" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-print" aria-hidden="true"></i></a>'+"</td>";
                                                                
    	 list+="</tr>";
     });

     jQuery("#intakeNoteDataList").html(list);
     $('#intakeNoteData').dataTable({
    	 "order": [[ 0, "desc" ]],
    	 "columnDefs": [
    	                { "orderable": true, "targets": 0 },
    	                { "orderable": true, "targets": 1 },
    	                { "orderable": true, "targets": 2 },
    	                { "orderable": true, "targets": 3 }]
    	              
     });


}
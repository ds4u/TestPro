


!function($) {
    "use strict";

    var CalendarApp = function() {
        this.$body = $("body"),
        this.$modal = $('#event-modal'),
        this.$event = ('#external-events div.external-event'),
        this.$calendar = $('#calendar'),
        this.$saveCategoryBtn = $('.save-category'),
        this.$categoryForm = $('#add-category form'),
        this.$extEvents = $('#external-events'),
        this.$calendarObj = null
    };


    /* on drop */
    CalendarApp.prototype.onDrop = function (eventObj, date) { 
        var $this = this;
            // retrieve the dropped element's stored Event Object
            var originalEventObject = eventObj.data('eventObject');
            var $categoryClass = eventObj.attr('data-class');
            // we need to copy it, so that multiple events don't have a reference to the same object
            var copiedEventObject = $.extend({}, originalEventObject);
            // assign it the date that was reported
            copiedEventObject.start = date;
            if ($categoryClass)
                copiedEventObject['className'] = [$categoryClass];
            // render the event on the calendar
            $this.$calendar.fullCalendar('renderEvent', copiedEventObject, true);
            // is the "remove after drop" checkbox checked?
            if ($('#drop-remove').is(':checked')) {
                // if so, remove the element from the "Draggable Events" list
                eventObj.remove();
            }
    },
    /* on click on event */
    /* to be user later*/
  /*  CalendarApp.prototype.onEventClick =  function (calEvent, jsEvent, view) {
        var $this = this;
            var form = $("<form></form>");
            form.append("<label>Change event name</label>");
            form.append("<div class='input-group'><input class='form-control' type=text value='" + calEvent.title + "' /><span class='input-group-btn'><button type='submit' class='btn btn-success waves-effect waves-light'><i class='fa fa-check'></i> Save</button></span></div>");
            $this.$modal.modal({
                backdrop: 'static'
            });
            $this.$modal.find('.delete-event').show().end().find('.save-event').hide().end().find('.modal-body').empty().prepend(form).end().find('.delete-event').unbind('click').click(function () {
                $this.$calendarObj.fullCalendar('removeEvents', function (ev) {
                    return (ev._id == calEvent._id);
                });
                $this.$modal.modal('hide');
            });
            $this.$modal.find('form').on('submit', function () {
                calEvent.title = form.find("input[type=text]").val();
                $this.$calendarObj.fullCalendar('updateEvent', calEvent);
                $this.$modal.modal('hide');
                return false;
            });
    },*/
    /* on select */ 
    
    CalendarApp.prototype.onEventClick = function (calEvent, jsEvent, view) {
    	$('.modal-backdrop').show();
		$('#event-modal').show();
        var $this = this;
            $this.$modal.modal({
                backdrop: 'static'
            });
            if($.trim(calEvent.title) == 'Available'){
            var form = $("<form></form>");
            form.append("<div class='row'></div>");
            form.find(".row")
        .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Entry Type</label><select class='form-control' id='entryType'><option value=0>Individual</option><option value=1>Follow Up</option></select></div></div>")
        .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Physician</label><input id='physicianname' class='form-control' name='physicianname' type='text' disabled='disabled' value='"+calEvent.physicianname+"'/></div></div>")
        .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Patient</label>"+calEvent.patientname+"</div></div>")
        .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Schedule Date</label><input id='appointmentdate'class='form-control' type='text' disabled='disabled' value='"+calEvent.appointmentdate+"'/></div></div>")
         .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Nurse</label>"+calEvent.nursename+"</div></div>")
        .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Schedule Time</label>"+calEvent.appointmentend+"</div></div>")
        .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Duration (Minutes)</label><select class='form-control' id='duration'><option>10</option><option>15</option><option>20</option></select></div></div>")
        .append("<div class='col-md-12'><div class='form-group'><label class='control-label'>Comments</label><textarea id='comment' class='form-control' rows='4'></textarea></div></div>")
        .append("<input type='hidden' id='availabilityid' value='"+calEvent.appointmentid+"'/>");
        //.find("select[name='category']")
                //.append("<option value='bg-danger'>Danger</option>")
                //.append("<option value='bg-success'>Success</option>")
                //.append("<option value='bg-purple'>Purple</option>")
                //.append("<option value='bg-primary'>Primary</option>")
                //.append("<option value='bg-pink'>Pink</option>")
                //.append("<option value='bg-info'>Info</option>")
                //.append("<option value='bg-warning'>Warning</option></div></div>");
            $this.$modal.find('.delete-event').hide().end().find('.save-event').show().end().find('.modal-body').empty().prepend(form).end().find('.save-event').unbind('click').click(function () {
                form.submit();
            });
            $this.$modal.find('form').on('submit', function () {
                var title = form.find("input[name='title']").val();
                var beginning = form.find("input[name='beginning']").val();
                var ending = form.find("input[name='ending']").val();
                var categoryClass = form.find("select[name='category'] option:checked").val();
                if (title !== null && title.length != 0) {
                    $this.$calendarObj.fullCalendar('renderEvent', {
                        title: title,
                        start:start,
                        end: end,
                        allDay: false,
                        className: categoryClass
                    }, true);  
                    $this.$modal.modal('hide');
                }
                else{
                    alert('You have to give a title to your event');
                }
                return false;
                
            });
            }else{
            	
            	var form = $("<form></form>");
                form.append("<label>Change event name</label>");
                form.append("<div class='input-group'><input class='form-control' type=text value='" + calEvent.title + "' /><span class='input-group-btn'><button type='submit' class='btn btn-success waves-effect waves-light'><i class='fa fa-check'></i> Save</button></span></div>");
                $this.$modal.modal({
                    backdrop: 'static'
                });
                $this.$modal.find('#deletebutton').on('submit', function(){
                	 var baseurl="${pageContext.request.contextPath}";
                     $.ajax({
                     	type:"POST",
                     	url:baseurl+"/recpdeletebooking.do",
                     	data:{"id":calEvent.id},
                     	success:function(data){
                     		
                     	},
                     	fails:function(error){
                     		console.log("inside jquery fullcalendar.js");
                     	}
                });
                });
                $this.$modal.find('.delete-event').show().end().find('.save-event').hide().end().find('.modal-body').empty().prepend(form).end().find('.delete-event').unbind('click').click(function () {
                    $this.$calendarObj.fullCalendar('removeEvents', function (ev) {
                        return (ev._id == calEvent._id);
                    });
                    $.ajax({
                    	type:'POST',
                    	url:'recpdeletebooking.do',
                    	data:{'id':calEvent.appointmentid},
                    	success:function(data){
                    		alert("successfully deleted data");
                    	},
                    	fails:function(error){
                    		console.log("inside jquery fullcalendar.js");
                    	}
               });
                    $this.$modal.modal('hide');
                });
                $this.$modal.find('form').on('submit', function () {
                    calEvent.title = form.find("input[type=text]").val();
                    $this.$calendarObj.fullCalendar('updateEvent', calEvent);
                    $this.$modal.modal('hide');
                    return false;
                });
            }
            $this.$calendarObj.fullCalendar('unselect');
    },
    
    
    
    
    
    
    
    
    CalendarApp.prototype.enableDrag = function() {
        //init events
        $(this.$event).each(function () {
            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
                title: $.trim($(this).text()) // use the element's text as the event title
            };
            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);
            // make the event draggable using jQuery UI
            $(this).draggable({
                zIndex: 999,
                revert: true,      // will cause the event to go back to its
                revertDuration: 0  //  original position after the drag
            });
        });
    }
    /* Initializing */
    CalendarApp.prototype.init = function() {
        this.enableDrag();
        /*  Initialize the calendar  */
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var form = '';
        var today = new Date($.now());

       var defaultEvents =  [{
                title: 'Hey!',
                start: new Date($.now() + 158000000)                
            }, {
                title: '',
                start: today,
                end: today                
            }, {
                title: 'QUE-EHR',
                start: new Date($.now() + 338000000)
            }];

        var $this = this;
        $this.$calendarObj = $this.$calendar.fullCalendar({
            slotDuration: '00:15:00', /* If we want to split day time each 15minutes */
            minTime: '00:00:00',
            maxTime: '24:00:00',  
            defaultView: 'agendaWeek',  
            handleWindowResize: true,   
            height: $(window).height() - 200,   
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            eventMouseover: function(calEvent, jsEvent, view) {
            	
            	            	
            	var tooltip = '<div class="tooltipevent fc-time">'+ calEvent.appointmenttime + "-" + calEvent.appointmenttimeend +" <br> " + calEvent.title + '</div>';
                $("body").append(tooltip);
                $(this).mouseover(function(e) {
                    $(this).css('z-index', 10000);
                    $('.tooltipevent').fadeIn('500');
                    $('.tooltipevent').fadeTo('10', 1.9);
                }).mousemove(function(e) {
                    $('.tooltipevent').css('top', e.pageY + 10);
                    $('.tooltipevent').css('left', e.pageX + 20);
                });
            },
            eventMouseout: function(calEvent, jsEvent) {
                $(this).css('z-index', 8);
                $('.tooltipevent').remove();
            },
           // events: defaultEvents,
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar !!!
            eventLimit: true, // allow "more" link when too many events
            selectable: true,
            drop: function(date) { $this.onDrop($(this), date); },
            select: function (start, end, allDay) { $this.onSelect(start, end, allDay); },
            eventClick: function(calEvent, jsEvent, view) { $this.onEventClick(calEvent, jsEvent, view); },
            

        });
        function getstartTime(start){
    		var sec_num = parseInt(start, 10); // don't forget the second param
    	    var hours   = Math.floor(sec_num / 3600);
    	    var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
    	    var seconds = sec_num - (hours * 3600) - (minutes * 60);

    	    if (hours   < 10) {hours   = "0"+hours;}
    	    if (minutes < 10) {minutes = "0"+minutes;}
    	    if (seconds < 10) {seconds = "0"+seconds;}
    	    return hours+':'+minutes+':'+seconds;
    	}
        //on new event
        this.$saveCategoryBtn.on('click', function(){
            var categoryName = $this.$categoryForm.find("input[name='category-name']").val();
            var categoryColor = $this.$categoryForm.find("select[name='category-color']").val();
            if (categoryName !== null && categoryName.length != 0) {
                $this.$extEvents.append('<div class="external-event bg-' + categoryColor + '" data-class="bg-' + categoryColor + '" style="position: relative;"><i class="fa fa-move"></i>' + categoryName + '</div>')
                $this.enableDrag();
            }

        });
    },

   //init CalendarApp
    $.CalendarApp = new CalendarApp, $.CalendarApp.Constructor = CalendarApp
    
}(window.jQuery),

//initializing CalendarApp
function($) {
    "use strict";
    $.CalendarApp.init()
}(window.jQuery);


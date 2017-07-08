/**
 * 
 */

var startDate;
var endDate;
var dialog;

/*$(document).ready(function() {
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			defaultDate: '2017-05-12',
			navLinks: true, // can click day/week names to navigate views
			selectable: true,
			selectHelper: true,
			select: function(start, end) {
				var title = dialog.dialog("open");//prompt('Event Title:');
				var eventData;
				if (title) {
					eventData = {
						title: title,
						start: start,
						end: end
					};
					$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
				}
				$('#calendar').fullCalendar('unselect');
			},
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [
				{
					title: 'All Day Event',
					start: '2017-05-01'
				},
				{
					title: 'Long Event',
					start: '2017-05-07',
					end: '2017-05-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2017-05-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2017-05-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2017-05-11',
					end: '2017-05-13'
				},
				{
					title: 'Meeting',
					start: '2017-05-12T10:30:00',
					end: '2017-05-12T12:30:00'
				}
			]
		});
		
	});*/

function openDialog(start, end) {
	
	/*$('<input>').attr({
	    type: 'hidden',
	    id: 'startDate',
	    name: 'startDate',
	    value: start.format('YYYY-MM-DD HH:mm:ss')
	}).appendTo('#eventForm');
	
	$('<input>').attr({
	    type: 'hidden',
	    id: 'endDate',
	    name: 'endDate',
	    value: end.format('YYYY-MM-DD HH:mm:ss')
	}).appendTo('#eventForm');
*/	
	$("#startDate").val(start.format('YYYY-MM-DD HH:mm:ss'));
	$("#endDate").val(end.format('YYYY-MM-DD HH:mm:ss'));
	dialog.dialog('open');
}

dialog = $( "#dialog-form" ).dialog({
	title: "Enter Event Details",
    autoOpen: false,
    height: 400,
    width: 350,
    hide: false,
    modal: true,
    buttons: {
      "Create Event": addEvent,
      Cancel: function() {
        dialog.dialog( "close" );
      }
    },
    close: function() {
     $("#eventForm")[0].reset();
    }
  });

function addEvent() {
	
	$("#eventForm").submit();
}

function openEventDialog(event,allEvent) {
	
	$('<input>').attr({
	    type: 'hidden',
	    id: 'eventId',
	    name: 'eventId',
	    value: event.id
	}).appendTo('#vieweventForm');	
	
	$("#title").val(event.title);
	if(event.allDay == 'true'){
		$("#allDay").prop("checked", true);	
	}
	
	$("#startDate").val(event.start);
	$("#endDate").val(event.end);
	
	checkEventCapacity(event);
	
	viewdialog.dialog('open');
}

viewdialog = $( "#event-dialog-form" ).dialog({
	title: "Event Details",
    autoOpen: false,
    height: 400,
    width: 350,
    hide: false,
    modal: true,
   
    close: function() {
     $("#vieweventForm")[0].reset();
    }
  });

function registerEvent() {
	
	$("#vieweventForm").submit();
}

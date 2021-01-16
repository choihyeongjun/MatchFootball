var eventModal = $('#eventModal');
var manager1 = $('#manager1');
var modalTitle = $('.modal-title');
var editAllDay = $('#edit-allDay');
var editTitle = $('#edit-title');
var editTitle1 = $('#edit-title1');
var editStart = $('#edit-start');
var editStart1 = $('#edit-start1');
var editEnd = $('#edit-end');
var editEnd1 = $('#edit-end1');
var editType = $('#edit-type');
var editType1 = $('#edit-type1');
var editColor = $('#edit-color');
var editDesc = $('#edit-desc');
var editDesc1 = $('#edit-desc1');
var m_no=$('#m_no');

var manager = $('#manager');
var manager1 = $('#manager1');
var addBtnContainer = $('.modalBtnContainer-addEvent');
var addBtnContainer1 = $('.modalBtnContainer-addEvent1');
var modifyBtnContainer = $('.modalBtnContainer-modifyEvent');
var modifyBtnContainer1 = $('.modalBtnContainer-modifyEvent1');
var updateevent;
/* ****************
 *  일정 편집
 * ************** */
var editDesc=$('#edit-desc');
var editEvent = function (event, element, view) {
	updateevent=event;
	console.log(event);
    $('#deleteEvent').data('id', event._id); //클릭한 이벤트 ID
	$('#updateEvent').data('id', event._id);
    $('.popover.fade.top').remove();
    $(element).popover("hide");

    if (event.allDay === true) {
        editAllDay.prop('checked', true);
    } else {
        editAllDay.prop('checked', false);
    }

    if (event.end === null) {
        event.end = event.start;
    }

    if (event.allDay === true && event.end !== event.start) {
        editEnd.val(moment(event.end).subtract(1, 'days').format('YYYY-MM-DD HH:mm'))
    } else {
        editEnd.val(event.end.format('YYYY-MM-DD HH:mm'));
    }

    modalTitle.html('일정 수정');
    editTitle.val(event.title);
    editStart.val(event.start.format('YYYY-MM-DD HH:mm'));
	editEnd.val(event.start.format('YYYY-MM-DD HH:mm'));
    editType.val(event.type);
    editDesc.val(event.description);
    editColor.val(event.backgroundColor).css('color', event.backgroundColor);
	manager.val(event.manager);
    addBtnContainer.hide();
    modifyBtnContainer.show();
    eventModal.modal('show');

    
};
var editEvent1 = function (event, element, view) {
	updateevent=event;
	console.log(event);
    $('#deleteEvent').data('id', event._id); //클릭한 이벤트 ID
	$('#updateEvent1').data('id', event._id);
    $('.popover.fade.top').remove();
    $(element).popover("hide");

    if (event.allDay === true) {
        editAllDay.prop('checked', true);
    } else {
        editAllDay.prop('checked', false);
    }

    if (event.end === null) {
        event.end = event.start;
    }

    if (event.allDay === true && event.end !== event.start) {
        editEnd.val(moment(event.end).subtract(1, 'days').format('YYYY-MM-DD HH:mm'))
    } else {
        editEnd.val(event.end.format('YYYY-MM-DD HH:mm'));
    }

    modalTitle.html('일정 수정');
    editTitle1.val(event.title);
	m_no.val(event.)
    editStart1.val(event.start.format('YYYY-MM-DD HH:mm'));
	editEnd1.val(event.start.format('YYYY-MM-DD HH:mm'));
    editType1.val(event.type);
    editDesc1.val(event.description);
    editColor1.val(event.backgroundColor).css('color', event.backgroundColor);
	manager1.val(event.manager1);
    addBtnContainer1.hide();
    modifyBtnContainer1.show();
    eventModal1.modal('show');

    
};
//업데이트 버튼 클릭시
$('#updateEvent').unbind();
$('#updateEvent').on('click', function () {

        if (editStart.val() > editEnd.val()) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (editTitle.val() === '') {
            alert('일정명은 필수입니다.')
            return false;
        }

        var statusAllDay;
        var startDate;
        var endDate;
        var displayDate;

        if (editAllDay.is(':checked')) {
            statusAllDay = true;
            startDate = moment(editStart.val()).format('YYYY-MM-DD');
            endDate = moment(editEnd.val()).format('YYYY-MM-DD');
            displayDate = moment(editEnd.val()).add(1, 'days').format('YYYY-MM-DD');
        } else {
            statusAllDay = false;
            startDate = editStart.val();
            endDate = editEnd.val();
            displayDate = endDate;
        }

      
        //일정 업데이트
        $.ajax({
            type: "get",
            url: "../../fielddetailupdate1",
			dataType:"json",
            data: {
				starttime:editStart.val(),
				endtime:editEnd.val(),
				title:editTitle.val(),
				type:editType.val(),
				backgroundcolor:editColor.val(),
				comm:editDesc.val()

            },
            success: function (response) {
			 	updateevent.starttime=editStart.val();
				updateevent.endtime=editEnd.val();
				updateevent.title=editTitle.val();
				updateevent.type=editType.val();
				updateevent.backgroundColor=editColor.val();
				updateevent.comm=editDesc.val();
				alert('수정되었습니다.');
				$("#calendar").fullCalendar('updateEvent', updateevent,true);
				$('#calendar').fullCalendar('refetchEvents',updateevent,true);
 				eventModal.modal('hide');
		        
		    }
        });
});
//업데이트 2
//업데이트 버튼 클릭시
$('#updateEvent1').unbind();
$('#updateEvent1').on('click', function () {

        if (editStart.val() > editEnd.val()) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (editTitle.val() === '') {
            alert('일정명은 필수입니다.')
            return false;
        }

        var statusAllDay;
        var startDate;
        var endDate;
        var displayDate;

        if (editAllDay.is(':checked')) {
            statusAllDay = true;
            startDate = moment(editStart.val()).format('YYYY-MM-DD');
            endDate = moment(editEnd.val()).format('YYYY-MM-DD');
            displayDate = moment(editEnd.val()).add(1, 'days').format('YYYY-MM-DD');
        } else {
            statusAllDay = false;
            startDate = editStart.val();
            endDate = editEnd.val();
            displayDate = endDate;
        }

      
        //일정 업데이트
        $.ajax({
            type: "get",
            url: "../../teammatchupdate",
			dataType:"json",
            data: {
				id:manager1.val(),
				t_cap:frm.d_id.value,
				m_info:editDesc1.val()

            },
            success: function (response) {
			 	updateevent.starttime=editStart.val();
				updateevent.endtime=editEnd.val();
				updateevent.title=editTitle.val();
				updateevent.type=editType.val();
				updateevent.backgroundColor=editColor.val();
				updateevent.comm=editDesc.val();
				alert('수정되었습니다.');
				$("#calendar").fullCalendar('updateEvent', updateevent,true);
				$('#calendar').fullCalendar('refetchEvents',updateevent,true);
 				eventModal.modal('hide');
		        
		    }
        });
});


// 삭제버튼
$('#deleteEvent').on('click', function () {
    $('#deleteEvent').unbind();
   	$("#calendar").fullCalendar('removeEvents', $(this).data('id'));
	eventModal.modal('hide');
  
    //삭제시
    $.ajax({
        type: "get",
        url: "../../fielddetaildelete",
		dataType:"json",
        data: {
           comm:$('#edit-desc').val()
        },
        success: function (response) {
            alert('삭제되었습니다.');
 			
		 
        }
    });

});
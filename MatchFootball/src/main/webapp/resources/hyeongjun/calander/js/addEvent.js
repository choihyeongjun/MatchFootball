var eventModal = $('#eventModal');
var eventModal1 =$('#eventModalll');
var modalTitle = $('.modal-title');
var modalTitle1 = $('.modal-title1');
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
var editColor1 = $('#edit-color1');
var editDesc = $('#edit-desc');
var editDesc1 = $('#edit-desc1');
var manager1 = $('#manager1');
var manager = $('#manager');
var level = $('#edit-level');
var price=$('#edit-price');

var addBtnContainer = $('.modalBtnContainer-addEvent');
var addBtnContainer1 = $('.modalBtnContainer-addEvent1');
var modifyBtnContainer = $('.modalBtnContainer-modifyEvent');
var modifyBtnContainer1 = $('.modalBtnContainer-modifyEvent1');


/* ****************
 *  새로운 일정 생성
 * ************** */
var newEvent = function (start, end, eventType) {

    $("#contextMenu").hide(); //메뉴 숨김

    modalTitle.html('새로운 일정');
    editType.val(eventType).prop('selected', true);
    editTitle.val('');
    editStart.val(start);
    editEnd.val(end);
    editDesc.val('');
    
    addBtnContainer.show();
    modifyBtnContainer.hide();
    eventModal.modal('show');

    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/
    var eventId = 1 + Math.floor(Math.random() * 1000);
    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/

    //새로운 일정 저장버튼 클릭
    $('#save-event').unbind();
    $('#save-event').on('click', function () {

        var eventData = {
            _id: eventId,
            title: editTitle.val(),
            start: editStart.val(),
            end: editEnd.val(),
            description: editDesc.val(),
            type: editType.val(),
            username: '사나',
            backgroundColor: editColor.val(),
            textColor: '#ffffff',
            allDay: false
        };

        if (eventData.start > eventData.end) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (eventData.title === '') {
            alert('일정명은 필수입니다.');
            return false;
        }

        var realEndDay;

        if (editAllDay.is(':checked')) {
            eventData.start = moment(eventData.start).format('YYYY-MM-DD');
            //render시 날짜표기수정
            eventData.end = moment(eventData.end).add(1, 'days').format('YYYY-MM-DD');
            //DB에 넣을때(선택)
            realEndDay = moment(eventData.end).format('YYYY-MM-DD');

            eventData.allDay = true;
        }


        //새로운 일정 저장
        $.ajax({
            type: "get",
            url: "../../fielddetailinsert",
            data: {
				f_id:f_id,
				starttime:editStart.val(),
				endtime:editEnd.val(),
				comm:editDesc.val(),
				type:editType.val(),
				id:frm.d_id.value,
				backgroundcolor:editColor.val(),
				title:editTitle.val(),
				m_id:manager.val()
				
            },
            success: function (response) {
				alert("입력 성공하였습니다.");
				
      		  $("#calendar").fullCalendar('renderEvent', eventData, true);
     	 	//  eventModal.find('input, textarea').val('');
       			 editAllDay.prop('checked', false);
				 eventModal.modal('hide');
			
                //DB연동시 중복이벤트 방지를 위한
                $('#calendar').fullCalendar('removeEvents');
                $('#calendar').fullCalendar('refetchEvents');
            }
        });
    });
};


var newEvent1 = function (start, end, eventType) {

    $("#contextMenu").hide(); //메뉴 숨김

    modalTitle1.html('새로운 일정');
    editType1.val(eventType).prop('selected', true);
    editTitle1.val('');
    editStart1.val(start);
    editEnd1.val(end);
    editDesc1.val('');
    
    addBtnContainer1.show();
    modifyBtnContainer1.hide();
    eventModal1.modal('show');

    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/
    var eventId = 1 + Math.floor(Math.random() * 1000);
    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/

    //새로운 일정 저장버튼 클릭
    $('#save-event1').unbind();
    $('#save-event1').on('click', function () {

        var eventData = {
            _id: eventId,
            title: editTitle1.val(),
            start: editStart1.val(),
            end: editEnd1.val(),
            description: editDesc1.val(),
            type: editType1.val(),
            username: '사나',
            backgroundColor: editColor1.val(),
            textColor: '#ffffff',
            allDay: false
        };

        if (eventData.start1 > eventData.end1) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (eventData.title1 === '') {
            alert('일정명은 필수입니다.');
            return false;
        }

        var realEndDay;

        if (editAllDay.is(':checked')) {
            eventData.start1 = moment(eventData.start).format('YYYY-MM-DD');
            //render시 날짜표기수정
            eventData.end1 = moment(eventData.end).add(1, 'days').format('YYYY-MM-DD');
            //DB에 넣을때(선택)
            realEndDay = moment(eventData.end).format('YYYY-MM-DD');

            eventData.allDay = true;
        }


        //새로운 일정 저장
        $.ajax({
            type: "get",
            url: "../../matchinsert",
            data: {
				f_id:f_id,
				m_date:editStart1.val(),
				m_hour:editEnd1.val(),
				m_info:editDesc1.val(),
				mtype:editType1.val(),
				t_cap:frm.d_id.value,
				t_level:level.val(),
				backgroundcolor:editColor1.val(),
				title:editTitle1.val(),
				price:price.val(),
				id:manager1.val()
				
            },
            success: function (response) {
				alert("입력 성공하였습니다.");
				
      		  $("#calendar").fullCalendar('renderEvent', eventData, true);
     	 	//  eventModal.find('input, textarea').val('');
       			 editAllDay.prop('checked', false);
				 eventModal1.modal('hide');
			
                //DB연동시 중복이벤트 방지를 위한
                $('#calendar').fullCalendar('removeEvents');
                $('#calendar').fullCalendar('refetchEvents');
            }
        });
    });
};
package co.company.spring.vo;

import lombok.Data;

@Data
public class MessageVO {
	String message_no;//쪽지 시퀀스
	String id;//보낸사람
	String to_id;//받는사람
	String s_date;//보낸날짜
	String title;//제목
	String comm;//내용
	String check1;//수신여부
}

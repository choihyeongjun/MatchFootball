package co.company.MatchFootball.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class MessageVO {
	String m_no;//쪽지 시퀀스
	String send_id;//보낸사람
	String to_id;//받는사람
	String m_title;//쪽지 제목
	String m_con;//쪽지내용
	String s_date;//보낸날짜
	Date o_date;//열람 날짜
	String m_check;//수신여부
	int first;
	int last;

}

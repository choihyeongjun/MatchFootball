package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class RfieldVO {
	String m_no;
	String id;//구장예약자
	String f_id;//필드구장 아이디
	String starttime;//시작시간
	String endtime;//종료시간
	String m_id;//매니저아이디
	String title;
	String type;
	String backgroundcolor;
	String comm;
}

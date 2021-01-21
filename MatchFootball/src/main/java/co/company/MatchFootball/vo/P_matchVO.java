package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class P_matchVO {//개인매치
	String m_no;//매치시퀀스
	String m_type;//경기타입
	String f_name;//경기장이름
	String f_address;//구장주소
	String price;//가격
	String pos;//포지션
	String lv;//레벨
	String m_info;
	String p_max;//인원수
	String m_id;//매니저아이디
	String m_date;//매치날짜
	String m_hour;//매치시간
	String t_type;//경기상태
	String f_id;//구장아이디
	String backgroundcolor;
	String title;
	String f;
	String id;
	String sel;
	String p_id;//개인 유저 아이디
	String gubun;
	String m_year;
	String m_month;
	String m_day;
	String m_ho;
	String review;
	int first;
	int last;
}

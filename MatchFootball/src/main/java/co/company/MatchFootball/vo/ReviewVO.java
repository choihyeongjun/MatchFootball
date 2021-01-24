package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class ReviewVO {
	String t_num;//팀번호
	String m_no;//리뷰내용
	String score;//승패
	String manager_id;//매니저아이디
	String manner;//매너 점수
	String m_id;
}

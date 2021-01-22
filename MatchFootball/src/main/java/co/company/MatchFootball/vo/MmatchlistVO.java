package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class MmatchlistVO {
	String id;//매니저아이디
	String match_info;//개인매치혹은 팀매치 시퀀스
	String chk;//채택여부
	String m_date;
}

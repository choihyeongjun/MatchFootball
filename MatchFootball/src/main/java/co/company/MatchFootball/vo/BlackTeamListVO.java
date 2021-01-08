package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class BlackTeamListVO {
	String t_num;//팀번호(시퀀스)
	String stopdate;//정지날짜
	String stopreason;//정지사유
	String t_level;//팀평균레벨
	String t_author;//팀권한
	String t_m;//팀매너점수
	String t_name;//팀이름
	
}

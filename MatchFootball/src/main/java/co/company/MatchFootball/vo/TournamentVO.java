package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class TournamentVO {
	String t_num;//팀번호
	String apply;//참여팀수
	String location;//경기장장소
	String t_wn;//팀승패
	String t_log;//팀기록
	String s_date;//토너먼트시작날짜
	String e_date;//토너먼트종료날짜
	String ttype;//토너먼트상태
	String t_max;//최대팀수
	String title;//대회이름
	String img;//이미지
	String point;//상금
	String id;//관리자아이디
}

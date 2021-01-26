package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class TournamentVO {
	String t_no;//토너먼트번호
	String apply;//참여팀수
	String t_max;//최대팀수
	String location;//경기장장소
	String address;//상세주소
	String s_date;//토너먼트시작날짜
	String e_date;//토너먼트종료날짜
	String ttype;//토너먼트상태
	String title;//대회이름
	String img;//이미지
	String t_point;//상금
	String a_id;//관리자아이디
	String count;
	String t_log;
	String t_wn;
	String t_num;
}

package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class TeamlistVO {
	String t_num;//팀번호
	String id;//팀원아이디
	String t_author;//팀장과 팀원
	int first;
	int last;
	String name;
	String pos;
	String c;
}

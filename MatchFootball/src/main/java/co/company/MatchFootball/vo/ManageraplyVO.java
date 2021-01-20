package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class ManageraplyVO {
	String id;//매니저 신청아이디
	String name;
	String gender;
	String pnum;
	String birth;
	String comm;//신청포부
	String apply;//신청지 점수 유뮤 Y/N
	String loc;
	String author;
}

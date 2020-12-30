package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class ManagerapplyVO {
	String id;//멤버아이디
	String name;//이름
	String gender;//성별
	String pnum;//핸드폰번호
	String birth;//생년월일
	String author;//권한 1.유저 2.매니저
	String author2;//용병권한
	String img;//프로필사진
	String comm;//신청포부
	String apply;//신청지 점수 유뮤 Y/N
}

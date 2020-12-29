package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class ManagersVO {
	String id;//멤버아이디
	String comm;//심판내역
	String name;//이름
	String gender;//성별
	String pnum;//핸드폰번호
	String point;//포인트
	String author;//권한 1.유저 2.매니저
	String author2;//용병권한
	String img;//프로필사진
}

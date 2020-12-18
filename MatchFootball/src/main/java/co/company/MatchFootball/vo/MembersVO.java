package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class MembersVO {
	String id;//멤버아이디
	String pw;//비밀번호
	String name;//이름
	String gender;//성별
	String location1;//주소 대분류
	String location2;//주소 소분류
	String pnum;//핸드폰번호
	String email;//이메일
	String point;//포인트
	String birth;//생년월일
	String author;//권한 1.유저 2.매니저
	String author2;//용병권한
	String recom;//추천인
	String img;//프로필사진
	String manner;//매너도
	String lv;//레벨
	String pos;//포지션
	String t_name;//팀이름
	
}

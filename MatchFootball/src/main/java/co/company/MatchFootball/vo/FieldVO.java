package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class FieldVO {
	String f_id;//구장아이디
	String name;//구장이름
	String ttype;//매치분류
	String location1;//지역대분류
	String location2;//지역소분류
	String state;//상태
	String r_date;//날짜
	String time1;//에약시작시간
	String time2;//예약종료시간
	String price;//필드가격
}

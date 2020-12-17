package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class CenterVO {
	String c_no;//고객센터 시퀀스
	String category;//카테고리
	String c_title;//제목
	String c_date;//작성날짜
	String m_id;//작성자아이디
	String c_check;//공개여부
	String c_img;//이미지
	String a_id;//관리자아이디
}

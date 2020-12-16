package co.company.spring.vo;

import lombok.Data;

@Data
public class NoticeVO {
	String n_no;//시퀀스
	String n_title;//공지사항제목
	String n_date;//날짜
	String n_comm;//내용
	String n_img;//사진
	String n_check;//조회수ㅠ
	String id;//관리자아이디
}

package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class TnoticeVO {//팀갤러리게시판 이미지리스트
	String n_no;//공지번호
	String t_num;//팀이름
	String t_content;//내용
	String t_title;//제목
	String t_id;//작성자
	String t_date;//작성날짜
}

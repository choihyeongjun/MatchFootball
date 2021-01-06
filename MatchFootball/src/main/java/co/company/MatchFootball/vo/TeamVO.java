package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class TeamVO {
	String t_num;//팀번호(시퀀스)
	String t_name;//팀명
	String t_max;//최대인원수
	String t_address;//팀지역
	String t_type;//경기유형
	String t_age;//평균연령
	String t_info;//팀소개
	String t_logo;//팀이미지
	String t_level;//팀평균레벨
	String t_hidden;//팀원정보 공개여부
	String t_m;//팀매너점수
	String t_wn;//팀승패여부
	int first;
	int last;
}

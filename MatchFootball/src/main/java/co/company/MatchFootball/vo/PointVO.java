package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class PointVO {//포인트 거래내역
	String p_seq;//포인트시원크
	String p_id;//포인트 사용아이디
	String npoint;//충전포인트
	String p_date;//포인트 충전한 날짜
	String p_con;
	int first;
	int last;
}

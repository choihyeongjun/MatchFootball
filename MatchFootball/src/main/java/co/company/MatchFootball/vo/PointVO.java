package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class PointVO {//포인트 거래내역
	String p_seq;//포인트시원크
	String p_id;//포인트 사용아이디
	Integer npoint;//포인트
	String p_date;//포인트 충전한 날짜
	String p_con;//포인트 사용내역
	Integer p_pay; // 충전금액
	int first;
	int last;
}

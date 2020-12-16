package co.company.spring.vo;

import lombok.Data;

@Data
public class CuponVO {
	String c_no;//쿠폰인덱스
	String a_id;//관리자아이디
	String m_id;//쿠폰사용자아이디
	String c_title;//쿠폰제목
	String c_num;//쿠폰고유번호
	String c_sdate;//쿠폰생성날짜
	String c_edate;//쿠폰만료날짜
	String c_check;//쿠폰사용여부
}

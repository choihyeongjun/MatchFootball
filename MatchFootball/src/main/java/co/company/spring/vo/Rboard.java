package co.company.spring.vo;

import lombok.Data;

@Data
public class Rboard {
	String seq;//시퀀스
	String s_id;//판매자
	String img;//이미지
	String comm;//내용
	String p_name;//상품이름
	String price;//가격
	String state;//거래상태
	String s_date;//작성날짜
	String b_id;//구매자아이디
}

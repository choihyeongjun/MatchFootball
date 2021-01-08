package co.company.MatchFootball.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
@Data
public class InviteVO {
	String c_id;//팀장아이디
	String s_date;//보내는날짜
	String title;
	String comm;//내용
	String check1;//확인여부
	String r_id;//용병아이디
}

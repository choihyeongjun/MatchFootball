package co.company.MatchFootball.doeun;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping(value="/doeun/dd")
	public String dd() {
		return "doeun/Pay";
	}

	@RequestMapping(value="/doeun/index")
	public String mypage() {
		return "doeun/userprofile";
	}
	@RequestMapping(value="/doeun/aa")
	public String mypag() {
		return "doeun/aa";
	}
	@RequestMapping(value="/doeun/msg")
	public String my() {
		return "doeun/message";
	}
}

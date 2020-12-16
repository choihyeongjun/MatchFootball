package co.company.spring.doeun;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping(value="/doeun/dd")
	public String dd() {
		return "doeun/dd";
	}

	@RequestMapping(value="/doeun/index")
	public String mypage() {
		return "doeun/index";
	}
	
}

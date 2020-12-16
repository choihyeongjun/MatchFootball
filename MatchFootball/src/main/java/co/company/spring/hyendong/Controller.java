package co.company.spring.hyendong;

import org.springframework.web.bind.annotation.RequestMapping;

public class Controller {

	@RequestMapping("/hyendong/team")
	public String main() {
		return "hyendong/team";
	}
}

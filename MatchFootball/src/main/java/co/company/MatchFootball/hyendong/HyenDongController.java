package co.company.MatchFootball.hyendong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HyenDongController {
	@RequestMapping("/teamMake")
	public String teamMake() {
		return "hyendong/teamMake";
	}
	
	@RequestMapping("/teamInfo")
	public String teamInfo() {
		return "hyendong/teamInfo";
	}
}

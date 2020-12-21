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
	
	@RequestMapping("/teamUpdate")
	public String teamUpdate() {
		return "hyendong/teamUpdate";
	}
	
	@RequestMapping("/teamGallery")
	public String teamGallery() {
		return "hyendong/teamGallery";
	}
	
	@RequestMapping("/teamNotice")
	public String teamNotice() {
		return "hyendong/teamNotice";
	}
}

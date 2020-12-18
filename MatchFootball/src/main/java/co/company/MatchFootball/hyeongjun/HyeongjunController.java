package co.company.MatchFootball.hyeongjun;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import co.company.MatchFootball.mapper.HyeongjunMapper;

@RestController
public class HyeongjunController {

	@Autowired HyeongjunMapper hyeongjunMapper;
	@RequestMapping(value="/bollow",method = RequestMethod.GET)
	public String bollow(Model model) {
		model.addAttribute("list",hyeongjunMapper.getbollowlist());
		return "hyeongjun/bollowlist";
	}
	@RequestMapping("/dd")
	public String userjoin() {
		return "hyeongjun/userjoin";
	}
}

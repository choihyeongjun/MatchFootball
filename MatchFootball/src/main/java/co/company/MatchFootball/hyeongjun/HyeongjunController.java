package co.company.MatchFootball.hyeongjun;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import co.company.MatchFootball.mapper.HyeongjunMapper;
import co.company.MatchFootball.vo.MembersVO;

@Controller
public class HyeongjunController {

	@Autowired HyeongjunMapper hyeongjunMapper;
	
	@ResponseBody
	@RequestMapping(value="/bollow/ajax")
	public List<MembersVO>ajaxbollow(Model model){
		return hyeongjunMapper.getbollowlist();
	}
	@RequestMapping(value="/bollow")
	public String bollow(Model model) {
		//model.addAttribute("list",hyeongjunMapper.getbollowlist());
		return "hyeongjun/bollowlist";
	}
	@RequestMapping("/dd")
	public String userjoin() {
		return "hyeongjun/fieldcommit";
	}

	@RequestMapping("/fieldlist")
	public String fieldlist() {
		return "hyeongjun/fieldlist";
	}
	@RequestMapping("/free")
	public String freeboard() {
		return "hyeongjun/freeboard";
	}
	@RequestMapping("/login")
	public String login() {
		return "hyeongjun/login";
	}

}

package co.company.spring.seemoo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("/admin")
	public String admin() {
		return "seemoo/index";
	}
	
	@RequestMapping("/admin/user")
	public String user() {
		return "seemoo/user";
	}
	
	@RequestMapping("/admin/team")
	public String team() {
		return "seemoo/team";
	}
	
	@RequestMapping("/admin/field")
	public String field() {
		return "seemoo/field";
	}
}

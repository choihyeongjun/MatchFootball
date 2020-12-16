package co.company.spring.hyeongjun;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HyeongjunController {

	
	@RequestMapping("/dd")
	public String main() {
		return "hyeongjun/userjoin";
	}
}

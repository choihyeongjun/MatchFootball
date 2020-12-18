package co.company.MatchFootball.sungjun;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JunController {

	
//	/*
//	 * @RequestMapping(value="/mainmenu") public ModelAndView
//	 * test(HttpServletResponse response) throws IOException{ return new
//	 * ModelAndView("/sungjun/mainmenu"); }
//	 */
	@RequestMapping(value="/match")
	public ModelAndView test1(HttpServletResponse response) throws IOException{
		return new ModelAndView("sungjun/match");
	}
	@RequestMapping(value="/call")
	public ModelAndView test2(HttpServletResponse response) throws IOException{
		return new ModelAndView("sungjun/call");
	}
}

package co.company.MatchFootball.sungjun;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.company.MatchFootball.mapper.SungjunMapper;
import co.company.MatchFootball.vo.CalVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.Paging;
import co.company.MatchFootball.vo.PointVO;
import co.company.MatchFootball.vo.TeammatchVO;

@Controller
public class JunController {

	@Autowired
	SungjunMapper dao;

//	/*
//	 * @RequestMapping(value="/mainmenu") public ModelAndView
//	 * test(HttpServletResponse response) throws IOException{ return new
//	 * ModelAndView("/sungjun/mainmenu"); }
//	 */

	@RequestMapping(value = "/match")
	public String test1(HttpServletResponse response, Model model, CalVO vo, P_matchVO mvo, HttpServletRequest request)
			throws IOException {
		// 달력
		DecimalFormat df = new DecimalFormat("00");
		Calendar calendar = Calendar.getInstance();
		String year = Integer.toString(calendar.get(Calendar.YEAR)); // 년도를 구한다
		String month = df.format(calendar.get(Calendar.MONTH) + 1); // 달을 구한다
		String day = df.format(calendar.get(Calendar.DATE)); // 날짜를 구한다

		int lastDate = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);// 달 마지막 날
		calendar.set(calendar.DAY_OF_MONTH, 1);
		int iDayOfWeek = calendar.get(Calendar.DAY_OF_WEEK); // 요일을 구한다

		vo.setDay(day);
		vo.setLastDate(lastDate);
		vo.setIDayOfWeek(iDayOfWeek);
		model.addAttribute("cal", vo);

		mvo.setM_date(year + "-" + month + "-" + day);
		model.addAttribute("p_matchVO", dao.pmatchselect(mvo));
		return "sungjun/match";
	}

	@RequestMapping(value = "/matchDetail")
	public ModelAndView test6(HttpServletResponse response) throws IOException {
		return new ModelAndView("sungjun/matchDetail");
	}

	@RequestMapping(value = "/call")
	public ModelAndView test2(HttpServletResponse response) throws IOException {
		return new ModelAndView("sungjun/call");
	}

	@RequestMapping(value = "/manageremploy")
	public ModelAndView test3(HttpServletResponse response) throws IOException {
		return new ModelAndView("sungjun/manageremploy");
	}

	@RequestMapping(value = "/managermypage")
	public ModelAndView test4(Paging paging, PointVO p_pointVO, P_matchVO p_match, TeammatchVO teammatch,
			HttpServletResponse response, Model model, HttpServletRequest request) throws IOException {
		
		// 레코드 건수 조회
		paging.setPageUnit(3); // (한페이지를 출력 할)레코드 수
		paging.setPageSize(5); // 페이지 번호 수
		p_pointVO.setFirst(paging.getFirst());
		p_pointVO.setLast(paging.getLast());
		paging.setTotalRecord(dao.getCount());
		model.addAttribute("paging", paging);
		p_pointVO.setP_id("105");
		model.addAttribute("p_point", dao.pointconselect(p_pointVO));

		return new ModelAndView("sungjun/managermypage");
	}

	@RequestMapping(value = "/teammatch")
	public ModelAndView test5(HttpServletResponse response) throws IOException {
		return new ModelAndView("sungjun/teammatch");
	}

}

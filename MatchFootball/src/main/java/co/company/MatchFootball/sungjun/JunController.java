package co.company.MatchFootball.sungjun;

import java.io.IOException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.company.MatchFootball.mapper.SungjunMapper;
import co.company.MatchFootball.vo.CalVO;
import co.company.MatchFootball.vo.ManageraplyVO;
import co.company.MatchFootball.vo.MatchMember;
import co.company.MatchFootball.vo.MembersVO;
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
		Calendar calendar;
		if(mvo.getM_date() == null) {
			calendar = Calendar.getInstance();
		}else {
			calendar = Calendar.getInstance();
			DateFormat dft = new SimpleDateFormat("yyyy-mm-dd") ;
			try {
				calendar.setTime(dft.parse(mvo.getM_date()));
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
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
		model.addAttribute("m_dat",day);
		model.addAttribute("p_matchVO", dao.pmatchselect(mvo));
		model.addAttribute("date",year +"-" + month );
		System.out.println(mvo.getM_date());
		return "sungjun/match";
	}

	@RequestMapping(value = "/matchDetail")
	public ModelAndView test6(HttpServletResponse response) throws IOException {
		return new ModelAndView("sungjun/matchDetail");
	}
	@RequestMapping(value = "/matchDetailm")
	public ModelAndView test11(HttpServletResponse response, MembersVO membersvo,Model model,HttpSession session) throws IOException {
		membersvo.setId((String)session.getAttribute("id"));
		model.addAttribute("pointminus",dao.pointminus(membersvo));
		return new ModelAndView("no/sungjun/matchapply");
	}

	@RequestMapping(value = "/call")
	public ModelAndView test2(HttpServletResponse response) throws IOException {
		return new ModelAndView("sungjun/call");
	}

	@RequestMapping(value = "/managermypage")
	public ModelAndView test4(Paging paging, PointVO p_pointVO, P_matchVO p_matchVO, TeammatchVO team_matchVO,
			MembersVO membersvo, HttpServletResponse response, Model model, HttpServletRequest request,HttpSession session)
			throws IOException {
		// 이름 포인트 불러오기
		membersvo.setId((String)session.getAttribute("id"));
		model.addAttribute("member", dao.memberselect(membersvo));
		// 입금내역
		p_pointVO.setP_id((String) session.getAttribute("id"));
		model.addAttribute("p_point", dao.pointconselect(p_pointVO));
		// 입금전체 내역
		model.addAttribute("p_pointall", dao.pointallselect(p_pointVO));
		// 개인매치 내역
//		paging.setPageUnit(3); // (한페이지를 출력 할)레코드 수
//		paging.setPageSize(5); // 페이지 번호 수
//		p_matchVO.setFirst(paging.getFirst());
//		p_matchVO.setLast(paging.getLast());
//		paging.setTotalRecord(dao.getCount1(p_matchVO));
//		model.addAttribute("paging", paging);
		p_matchVO.setM_id((String) session.getAttribute("id"));
		model.addAttribute("p_match", dao.pmatchlist(p_matchVO));
		//팀매치 내역
		team_matchVO.setM_id((String) session.getAttribute("id"));
		 model.addAttribute("t_match", dao.tmatchlist(team_matchVO));
		// model.addAttribute("p_match1",dao.pmatchlist1(p_match));

		return new ModelAndView("sungjun/managermypage");
	}

	@RequestMapping(value = "/managermypagem")
	public ModelAndView test7(P_matchVO p_matchVO, MatchMember matchmember) throws IOException {
		ModelAndView mv = new ModelAndView();

		mv.addObject("p_matchVO", dao.pmatchlist1(p_matchVO));
		mv.addObject("matchmember", dao.matchmember(matchmember));
		mv.setViewName("no/sungjun/matchschedule");
		return mv;
	}

//	@RequestMapping(value = "/managermypagem")
//	@ResponseBody
//	public Map<String,Object> test7(HttpServletResponse response,P_matchVO p_matchVO,MatchMember matchmember, Model model, HttpServletRequest request) throws IOException {
//		
//		Map<String,Object> list = new HashMap<String, Object>();
//		list.put("p_matchVO", dao.pmatchlist1(p_matchVO));
//		list.put("matchmember", dao.matchmember(matchmember));
//		return list;
//	}
	@RequestMapping(value = "/manageremploy")
	public ModelAndView test3(HttpServletResponse response, Model model, MembersVO member, HttpSession session)
			throws IOException {

		return new ModelAndView("sungjun/manageremploy");
	}

	@RequestMapping(value = "/managerapply")
	public ModelAndView test5(HttpServletResponse response, Model model, MembersVO member) throws IOException {
		model.addAttribute("member", dao.memberselect(member));
		return new ModelAndView("no/sungjun/managerapply");
	}

	@PostMapping(value = "/sendapply")
	public ModelAndView test9(HttpServletResponse response, Model model, ManageraplyVO manageraply) throws IOException {
		dao.mapply(manageraply);
		return new ModelAndView("sungjun/manageremploy");
	}

	@RequestMapping(value = "/teammatch")
	public ModelAndView test8(HttpServletResponse response) throws IOException {

		return new ModelAndView("sungjun/teammatch");
	}
	@RequestMapping(value = "/allmatchlist")
	public ModelAndView test10(HttpServletResponse response,HttpSession session,Model model, P_matchVO p_matchVO,TeammatchVO team_matchVO) throws IOException {
		p_matchVO.setM_id((String) session.getAttribute("id"));
		team_matchVO.setM_id((String) session.getAttribute("id"));
		model.addAttribute("p_match", dao.pmatchlist(p_matchVO));
		 model.addAttribute("t_match", dao.tmatchlist(team_matchVO));
		return new ModelAndView("sungjun/allmatchlist");
	}

}

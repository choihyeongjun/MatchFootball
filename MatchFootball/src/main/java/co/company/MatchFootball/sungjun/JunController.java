package co.company.MatchFootball.sungjun;

import java.io.IOException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import co.company.MatchFootball.mapper.SungjunMapper;
import co.company.MatchFootball.vo.CalVO;
import co.company.MatchFootball.vo.ManageraplyVO;
import co.company.MatchFootball.vo.MatchMember;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.Paging;
import co.company.MatchFootball.vo.PlayersVO;
import co.company.MatchFootball.vo.PointVO;
import co.company.MatchFootball.vo.PplayersVO;
import co.company.MatchFootball.vo.TeamVO;
import co.company.MatchFootball.vo.TeamlistVO;
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
	@RequestMapping(value = "/teammatch")
	public String test12(HttpServletResponse response, Model model, CalVO vo, TeammatchVO mvo, TeamVO teamvo,
			PlayersVO player, HttpServletRequest request) throws IOException {
		// 달력
		DecimalFormat df = new DecimalFormat("00");
		Calendar calendar;
		if (mvo.getM_date() == null) {
			calendar = Calendar.getInstance();
		} else {
			calendar = Calendar.getInstance();
			DateFormat dft = new SimpleDateFormat("yyyy-mm-dd");
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
		model.addAttribute("m_dat", day);
		model.addAttribute("date", year + "-" + month);

		model.addAttribute("teammatch", dao.tmatchselect(mvo));
		return "sungjun/teammatch";
	}

	@RequestMapping(value = "/teammatchDetail")
	public ModelAndView test13(HttpSession session, HttpServletResponse response, Model model, MembersVO member,
			TeamlistVO cap, TeammatchVO teammatch, TeamVO teamvo, PlayersVO playervo) throws IOException {
		model.addAttribute("teammatch", dao.teammatchinfo(teammatch));
		model.addAttribute("team", dao.teamselect(teamvo));
		cap = dao.capselect(cap);
		member.setId(cap.getId());
		model.addAttribute("member", dao.memberselect(member));
		model.addAttribute("players", dao.playerselect(playervo));

		return new ModelAndView("sungjun/teammatchDetail");
	}
	@RequestMapping(value = "/teammatchDetailm")
	public ModelAndView test14(HttpSession session, HttpServletResponse response, Model model, MembersVO membersvo,
			TeamlistVO teamlist, TeammatchVO teammatch, TeamVO teamvo, PlayersVO playervo) throws IOException {
		membersvo.setId((String) session.getAttribute("id"));
		membersvo.setT_num((String) session.getAttribute("t_num"));
		teammatch.setT_num(dao.memberselect(membersvo).getT_num());
		model.addAttribute("member",dao.memberselect(membersvo));
		model.addAttribute("teamlist", dao.teamlist(membersvo));
		model.addAttribute("teamname", dao.teamname(membersvo));
		
		return new ModelAndView("no/sungjun/teammatchapply");
	}
	@PostMapping(value = "/startmember")
	public ModelAndView test14(HttpServletResponse response, Model model, MembersVO membersvo, PlayersVO players,
			HttpSession session,TeammatchVO teammatch, PointVO pointvo) throws IOException {
		membersvo.setId((String) session.getAttribute("id"));
		membersvo.setT_num((String) session.getAttribute("t_num"));
		pointvo.setP_id((String) session.getAttribute("id"));
		dao.teammatchin(players);
		dao.teammatchup(teammatch);
		dao.pointminus(membersvo);
		dao.pointcomm(pointvo);
		return new ModelAndView("redirect:/teammatch");
	}
	@RequestMapping(value = "/match")
	public String test1(HttpSession session, Model model, CalVO vo, P_matchVO mvo,PplayersVO pplayer, HttpServletRequest request)
			throws IOException {
		// 달력
		DecimalFormat df = new DecimalFormat("00");
		Calendar calendar;
		if (mvo.getM_date() == null) {
			calendar = Calendar.getInstance();
		} else {
			calendar = Calendar.getInstance();
			DateFormat dft = new SimpleDateFormat("yyyy-mm-dd");
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
		model.addAttribute("m_dat", day);
		model.addAttribute("p_matchVO", dao.pmatchselect(mvo));
		model.addAttribute("date", year + "-" + month);
		//model.addAttribute("pplayers", dao.pplayersselect(pplayer));
		return "sungjun/match";
	}

	@RequestMapping(value = "/matchDetail")
	public ModelAndView test6(HttpServletResponse response, Model model, P_matchVO p_matchVO) throws IOException {
		model.addAttribute("p_match", dao.pmatchlist1(p_matchVO));
		return new ModelAndView("sungjun/matchDetail");
	}

	@RequestMapping(value = "/matchDetailm")
	public ModelAndView test11(HttpServletResponse response, MembersVO membersvo, Model model, P_matchVO p_matchVO,
			HttpSession session) throws IOException {
		membersvo.setId((String) session.getAttribute("id"));
		
		model.addAttribute("p_matchVO", dao.pmatchlist1(p_matchVO));
		model.addAttribute("membervo", dao.memberselect(membersvo));
		return new ModelAndView("no/sungjun/matchapply");
	}

	@PostMapping(value = "/sendmatchapply")
	public ModelAndView test12(HttpServletResponse response, Model model, MembersVO membersvo, PplayersVO pplayers,
			HttpSession session, PointVO pointvo) throws IOException {
		membersvo.setId((String) session.getAttribute("id"));
		pplayers.setId((String) session.getAttribute("id"));
		pointvo.setP_id((String) session.getAttribute("id"));
		
		int ppoint = dao.pointssss(membersvo);
		  
		if(ppoint < Integer.parseInt(membersvo.getPoint())) {
			ModelAndView mvo = new ModelAndView();
			mvo.setViewName("redirect:/matchDetail?m_no="+pplayers.getM_no());
			mvo.addObject("msg","포인트가 부족합니다");
			return mvo;
		}else {
			dao.pointminus(membersvo);
			dao.matchapply(pplayers);
			dao.pointcomm(pointvo);
			
		}
		
		return new ModelAndView("redirect:/match");
	}

	@RequestMapping(value = "/call")
	public ModelAndView test2(HttpServletResponse response) throws IOException {
		return new ModelAndView("sungjun/call");
	}

	@RequestMapping(value = "/managermypage")
	public ModelAndView test4(Paging paging, PointVO pointvo, P_matchVO p_matchVO, TeammatchVO team_matchVO,
			MembersVO membersvo, HttpServletResponse response, Model model, HttpServletRequest request,
			HttpSession session) throws IOException {
		// 이름 포인트 불러오기
		membersvo.setId((String) session.getAttribute("id"));
		model.addAttribute("member", dao.memberselect(membersvo));
		// 입금내역
		pointvo.setP_id((String) session.getAttribute("id"));
		model.addAttribute("p_point", dao.pointconselect(pointvo));
		// 입금전체 내역
		model.addAttribute("p_pointall", dao.pointallselect(pointvo));
		// 개인매치 내역
//		paging.setPageUnit(3); // (한페이지를 출력 할)레코드 수
//		paging.setPageSize(5); // 페이지 번호 수
//		p_matchVO.setFirst(paging.getFirst());
//		p_matchVO.setLast(paging.getLast());
//		paging.setTotalRecord(dao.getCount1(p_matchVO));
//		model.addAttribute("paging", paging);
		p_matchVO.setM_id((String) session.getAttribute("id"));
		model.addAttribute("p_match", dao.pmatchlist(p_matchVO));
		// 팀매치 내역
		team_matchVO.setId((String) session.getAttribute("id"));
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

	@RequestMapping(value = "/allmatchlist")
	public ModelAndView test10(HttpServletResponse response, HttpSession session, Model model, P_matchVO p_matchVO,
			TeammatchVO team_matchVO, PointVO pointvo) throws IOException {
		p_matchVO.setM_id((String) session.getAttribute("id"));
		team_matchVO.setId((String) session.getAttribute("id"));
		model.addAttribute("p_match", dao.pmatchlist(p_matchVO));
		model.addAttribute("t_match", dao.tmatchlist(team_matchVO));
		return new ModelAndView("sungjun/allmatchlist");
	}

}

package co.company.MatchFootball.sungjun;

import java.io.IOException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

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
import co.company.MatchFootball.vo.FieldmanagerVO;
import co.company.MatchFootball.vo.ManageraplyVO;
import co.company.MatchFootball.vo.MatchMember;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.MmatchlistVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.Paging;
import co.company.MatchFootball.vo.Paging2;
import co.company.MatchFootball.vo.PlayersVO;
import co.company.MatchFootball.vo.PointVO;
import co.company.MatchFootball.vo.PplayersVO;
import co.company.MatchFootball.vo.PreviewVO;
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
	public String test12(HttpSession session, Model model, CalVO vo, TeammatchVO mvo, TeamVO teamvo, PlayersVO player,
			HttpServletRequest request) throws IOException {
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
		// mvo.setId((String) session.getAttribute("id"));
		mvo.setM_date(year + "-" + month + "-" + day);
		model.addAttribute("m_dat", day);
		model.addAttribute("date", year + "-" + month);

		model.addAttribute("teammatch", dao.tmatchselect(mvo));
		return "sungjun/teammatch";
	}

	@RequestMapping(value = "/teammatchDetail")
	public String test13(HttpSession session, HttpServletResponse response, Model model, MembersVO member,
			TeamlistVO cap, TeammatchVO teammatch, TeamVO teamvo, PlayersVO playervo) throws IOException {

		model.addAttribute("teammatch", dao.teammatchinfo(teammatch));
		model.addAttribute("team", dao.teamselect(teamvo));
		// 팀 매치 해당 팀 주장 찾기
		cap = dao.capselect(cap);
		member.setId(cap.getId());
		model.addAttribute("member", dao.memberselect(member));
		// 세션에 아이디값 넣기
		member.setId((String) session.getAttribute("id"));
		model.addAttribute("caption", dao.cappp(member));
		model.addAttribute("players", dao.playerselect(playervo));
		return "sungjun/teammatchDetail";
	}

	@RequestMapping(value = "/teammatchDetailm")
	public ModelAndView test14(HttpSession session, HttpServletResponse response, Model model, MembersVO membersvo,
			TeamlistVO teamlist, TeammatchVO teammatch, TeamVO teamvo, PlayersVO playervo) throws IOException {
		membersvo.setId((String) session.getAttribute("id"));
		membersvo.setT_num((String) session.getAttribute("t_num"));

		teammatch.setT_num(dao.memberselect(membersvo).getT_num());
		model.addAttribute("member", dao.memberselect(membersvo));
		model.addAttribute("teamlist", dao.teamlist(membersvo));
		model.addAttribute("teamname", dao.teamname(membersvo));

		return new ModelAndView("no/sungjun/teammatchapply");
	}

	@PostMapping(value = "/startmember")
	public ModelAndView test14(HttpServletResponse response, Model model, MembersVO membersvo, PlayersVO players,
			HttpSession session, TeammatchVO teammatch, PointVO pointvo) throws IOException {
		membersvo.setId((String) session.getAttribute("id"));
		membersvo.setT_num((String) session.getAttribute("t_num"));
		pointvo.setP_id((String) session.getAttribute("id"));
		
		int ppoint = dao.pointssss(membersvo);

		if (ppoint < Integer.parseInt(membersvo.getPoint())) {
			ModelAndView mvo = new ModelAndView();
			mvo.setViewName("redirect:/mypage/pay");
			mvo.addObject("msg", "포인트가 부족합니다");
			return mvo;
		} else {
			dao.teammatchin(players);
			dao.teammatchup(teammatch);
			dao.pointminus(membersvo);
			dao.pointcomm(pointvo);
			ModelAndView vo = new ModelAndView();
			vo.setViewName("redirect:/teammatch");
			vo.addObject("msg1", "신청되었습니다");

			return vo;
		}
	}

	@RequestMapping(value = "/match")
	public String test1(HttpSession session, Model model, CalVO vo, P_matchVO mvo, PplayersVO pplayer,
			HttpServletRequest request) throws IOException {
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
		mvo.setId((String) session.getAttribute("id"));
		model.addAttribute("p_matchVO", dao.pmatchselect(mvo));
		model.addAttribute("date", year + "-" + month);
		model.addAttribute("day", dao.daysel(mvo));
		// model.addAttribute("seltime",dao.seltime(p_match));

		return "sungjun/match";
	}

	@RequestMapping(value = "/matchDetail")
	public ModelAndView test6(HttpSession session, Model model, P_matchVO p_matchVO) throws IOException {
		p_matchVO.setId((String) session.getAttribute("id"));
		model.addAttribute("p_match", dao.pmatchlist1(p_matchVO));

		return new ModelAndView("sungjun/matchDetail");
	}

	@RequestMapping(value = "/matchDetailm")
	public ModelAndView test11(HttpServletResponse response, MembersVO membersvo, Model model, P_matchVO p_matchVO,
			HttpSession session) throws IOException {
		membersvo.setId((String) session.getAttribute("id"));
		// 선택한 매치 조회
		P_matchVO vo = dao.pmatchlist1(p_matchVO);
		model.addAttribute("p_matchVO", vo);
		
		// 매치정보 조회
		P_matchVO voo = dao.matchsell(p_matchVO);
		voo.setId(membersvo.getId());
		model.addAttribute("seltime", dao.seltime(voo));
		model.addAttribute("membervo", dao.memberselect(membersvo));
		
		
		return new ModelAndView("no/sungjun/matchapply");
	}

	@PostMapping(value = "/sendmatchapply")
	public ModelAndView test12(HttpServletResponse response, Model model, MembersVO membersvo, PplayersVO pplayers,
			HttpSession session, PointVO pointvo, P_matchVO p_match,FieldmanagerVO fieldmanager) throws IOException {
		membersvo.setId((String) session.getAttribute("id"));
		pplayers.setId((String) session.getAttribute("id"));
		pointvo.setP_id((String) session.getAttribute("id"));
		ModelAndView mvo = new ModelAndView();
		//매치 포인트 조회
		int ppoint = dao.pointssss(membersvo);
		if (ppoint < Integer.parseInt(membersvo.getPoint())) {
			mvo.setViewName("no/sungjun/mesaage");
			mvo.addObject("msg", "포인트가 부족합니다");
			mvo.addObject("url", "mypage/pay");
			return mvo;
		} else  {
			//내 포인트 차감
			dao.pointminus(membersvo);
			//선수목록에 추가
			dao.matchapply(pplayers);
			//포인트 내역 추가
			dao.pointcomm(pointvo);
			//구장에 포인트 주기
			dao.pointplus(fieldmanager);
			ModelAndView vo = new ModelAndView();
			vo.setViewName("no/sungjun/mesaage");
			vo.addObject("msg", "신청 되었습니다");
			vo.addObject("url", "sungjun/match");
			return vo;
		}

	}

	@RequestMapping(value = "/call")
	public ModelAndView test2(HttpServletResponse response) throws IOException {
		return new ModelAndView("sungjun/call");
	}

	@RequestMapping(value = "/managermypage")
	public ModelAndView test4(Paging paging, PointVO pointvo, P_matchVO p_matchVO, TeammatchVO team_matchVO,
			MembersVO membersvo, HttpServletResponse response, Model model,PreviewVO preview, HttpServletRequest request,
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

	@RequestMapping(value = "/managermypagemm")
	public ModelAndView test15(HttpSession session, TeamVO teamvo, TeammatchVO teammatch, PlayersVO players,
			MatchMember matchmember) throws IOException {
		ModelAndView ma = new ModelAndView();
		teammatch.setId((String) session.getAttribute("id"));
		//팀매치 단건 조회
		ma.addObject("teammatch", dao.teammatchselect(teammatch));
		ma.setViewName("no/sungjun/teammatchschedule");
		return ma;
	}

	@RequestMapping(value = "/managermypagemmm")
	public ModelAndView test16(HttpSession session, TeammatchVO teammatch, PlayersVO players, MembersVO member)
			throws IOException {
		ModelAndView ma = new ModelAndView();
		member.setId((String) session.getAttribute("id"));
		ma.addObject("nomanager", dao.nomanager(teammatch));
		ma.addObject("manager", dao.memberselect(member));
		ma.setViewName("no/sungjun/nomanager");

		return ma;
	}

	@RequestMapping(value = "/managermypagepre")
	public ModelAndView test17(HttpSession session, P_matchVO p_match, MembersVO membersvo) throws IOException {
		ModelAndView ma = new ModelAndView();
		ma.addObject("pplayers", dao.pmreview(membersvo));
		ma.addObject("p_match", dao.pmreviewmat(p_match));
		ma.setViewName("no/sungjun/pmreivew");

		return ma;
	}
	
	@PostMapping(value = "/inreview")
	public ModelAndView test18(P_matchVO p_match,HttpServletRequest request, HttpServletResponse response, PreviewVO preview, Model model)
			throws IOException {
		String[] id = request.getParameterValues("id");
		String[] m_no = request.getParameterValues("m_no");
		String[] m_id = request.getParameterValues("m_id");
		String[] manner = request.getParameterValues("manner");
		ArrayList<PreviewVO> previewvo = new ArrayList<PreviewVO>();
		for (int i = 0; i < id.length; i++) {
			PreviewVO vo = new PreviewVO();
			vo.setM_no(m_no[i]);
			vo.setId(id[i]);
			vo.setM_id(m_id[i]);
			vo.setManner(manner[i]);
			previewvo.add(vo);
			System.out.println(vo);
		}
		// 다건 등록
		dao.pmreviewapp(previewvo);
		//멤버 업데이트
		p_match.setM_no(m_no[0]);
		dao.reviewup(p_match);
		return new ModelAndView("redirect:/managermypage");
	}

	@RequestMapping(value = "/matchmapply")
	public ModelAndView test17(MmatchlistVO mmatchlistvo, TeammatchVO teammatch, PlayersVO players, MembersVO member)
			throws IOException {
		ModelAndView ma = new ModelAndView();

		dao.tmapply(mmatchlistvo);
		ma.setViewName("redirect:/managermypage");
		return ma;
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
	public ModelAndView test3(HttpServletResponse response, ManageraplyVO aply, Model model, MembersVO member,
			HttpSession session) throws IOException {
		aply.setId((String) session.getAttribute("id"));
		model.addAttribute("aply", dao.chekma(aply));
		return new ModelAndView("sungjun/manageremploy");
	}

	@RequestMapping(value = "/managerapply")
	public ModelAndView test5(HttpServletResponse response, Model model, MembersVO member) throws IOException {
		model.addAttribute("member", dao.memberselect(member));
		return new ModelAndView("no/sungjun/managerapply");
	}

	@RequestMapping(value = "/manageredel")
	public ModelAndView test18(HttpServletResponse response, ManageraplyVO aply, Model model, MembersVO member,
			HttpSession session) throws IOException {
		aply.setId((String) session.getAttribute("id"));
		dao.delapply(aply);
		return new ModelAndView("redirect:/manageremploy");
	}

	@PostMapping(value = "/sendapply")
	public ModelAndView test9(HttpServletResponse response, Model model, ManageraplyVO manageraply, MembersVO membersvo)
			throws IOException {
		dao.mapply(manageraply);
		dao.mapplymem(membersvo);
		return new ModelAndView("redirect:/manageremploy");
	}

	@RequestMapping(value = "/managermypagemmmall")
	public ModelAndView test10(Paging paging, Paging2 paging2, HttpServletResponse response, HttpSession session,
			Model model, P_matchVO p_matchVO, TeammatchVO team_matchVO, PointVO pointvo) throws IOException {

		p_matchVO.setM_id((String) session.getAttribute("id"));
		team_matchVO.setId((String) session.getAttribute("id"));

		paging.setPageUnit(7); // (한페이지를 출력 할)레코드 수
		paging.setPageSize(10); // 페이지 번호 수
		team_matchVO.setFirst(paging.getFirst());
		team_matchVO.setLast(paging.getLast());
		paging.setTotalRecord(dao.getCount2(team_matchVO));
		model.addAttribute("paging", paging);
//////////////////////////////////////////////////////////////////////////
		paging2.setPageUnit(7); // (한페이지를 출력 할)레코드 수
		paging2.setPageSize(10); // 페이지 번호 수
		p_matchVO.setFirst(paging2.getFirst());
		p_matchVO.setLast(paging2.getLast());
		paging2.setTotalRecord(dao.getCount1(p_matchVO));
		model.addAttribute("paging2", paging2);
///////////////////////////////////////////////////////////////////////////
		model.addAttribute("p_match", dao.pmatchselectall(p_matchVO));
		model.addAttribute("t_match", dao.tmatchselectall(team_matchVO));

		return new ModelAndView("no/sungjun/allmatchlist");
	}

	
}

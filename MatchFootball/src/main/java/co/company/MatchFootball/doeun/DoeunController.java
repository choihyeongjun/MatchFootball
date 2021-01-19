package co.company.MatchFootball.doeun;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import co.company.MatchFootball.mapper.DoeunMapper;
import co.company.MatchFootball.vo.CuponVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.MessageVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.Paging;
import co.company.MatchFootball.vo.PointVO;
import co.company.MatchFootball.vo.TeammatchVO;

@Controller
public class DoeunController {

	@Autowired
	DoeunMapper dao;

	@RequestMapping("mypage/profile") // 프로필(메인마이페이지)
	public String profile(MembersVO mb, Model model, HttpSession session, HttpServletResponse response) {
		mb.setId((String) session.getAttribute("id")); // test용
		mb.setName((String) session.getAttribute("kname"));
		mb.setPoint((String) session.getAttribute("point"));
		model.addAttribute("mb", dao.getUser(mb));

		return "doeun/userprofile";
	}

	@RequestMapping(value = "mypage/userupdate") // 정보수정폼
	public String upuserinfo(MembersVO mb, Model model, HttpServletResponse response, HttpServletRequest request,
			HttpSession session) throws IOException {
		mb.setId((String) session.getAttribute("id"));// test 용
		mb.setPoint((String) session.getAttribute("point"));
		model.addAttribute("mb", dao.getUser(mb));

		return "doeun/pfUpdate";
	}

	@PostMapping(value = "mypage/updateMem")
	public String upMem(MembersVO vo, HttpServletRequest request, HttpSession session) {
		vo.setId((String) session.getAttribute("id"));
		if (dao.getUser(vo) == null) {

			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			// 이미지파일
			MultipartFile multipartFile = multipartRequest.getFile("file"); // input타입의 name값 : uploadFile
			if (!multipartFile.isEmpty() && multipartFile.getSize() > 0) {
				try {
					String path = request.getSession().getServletContext().getRealPath("/images"); // /images폴더 위치 mvc에
																									// 추가
					System.out.println("pp" + path); // 저장 경로 위치 확인
					multipartFile.transferTo(new File(path, multipartFile.getOriginalFilename()));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				vo.setImg(multipartFile.getOriginalFilename());
			}
			dao.insertMem(vo);
			session.setAttribute("point", dao.getUser(vo).getPoint());

		} else {

			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			// 이미지파일
			MultipartFile multipartFile = multipartRequest.getFile("file"); // input타입의 name값 : uploadFile
			if (!multipartFile.isEmpty() && multipartFile.getSize() > 0) {
				try {
					String path = request.getSession().getServletContext().getRealPath("/images"); // /images폴더 위치 mvc에
																									// 추가
					System.out.println("pp" + path); // 저장 경로 위치 확인
					multipartFile.transferTo(new File(path, multipartFile.getOriginalFilename()));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				vo.setImg(multipartFile.getOriginalFilename());
			}
			dao.upMem(vo);
		}

		return "redirect:/mypage/profile";
	}

	@RequestMapping("mypage/Mypoint/ajax") // 내 포인트 업데이트
	@ResponseBody
	public void myPoint(PointVO point, Model model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
		System.out.println("mypoint call");
		dao.Mypoint(point);
	}
	@RequestMapping(value = "mypage/pay") // 결제
	public ModelAndView payment(HttpServletResponse response, HttpSession session, HttpServletRequest request,
			MembersVO mb, Model model) throws IOException {
		mb.setId((String) session.getAttribute("id"));
		mb.setPoint((String) session.getAttribute("point"));
		model.addAttribute("mb", dao.getUser(mb));
		session.setAttribute("point", mb.getPoint());
		return new ModelAndView("doeun/Pay");
	}

	@RequestMapping(value = "mypage/pointcharge") // 포인트 충전 url...
	@ResponseBody
	public int chargePo(PointVO pay) {// 결제 db에 insert
		return dao.Pcharge(pay); // point 충전 dao
	}

	@RequestMapping(value = "mypage/insertCoupon") //충전시 쿠폰 자동생성
	@ResponseBody
	public int Autocpup(CuponVO cp) {// 쿠폰 db에 insert
		// 쿠폰 등록 dao
		return dao.Autocpup(cp); // 쿠폰 등록 dao
	}

	@RequestMapping(value = "mypage/msg") // 메인메세지함(default 받은 메시지함)
	public String tomsgList(MembersVO mb, MessageVO msg, Model model, HttpSession session, Paging paging,
			HttpServletRequest request) {
		mb.setId((String) session.getAttribute("id"));// 테스트용
		msg.setTo_id(mb.getId());
		paging.setPageUnit(16);
		paging.setPageSize(10);
		msg.setFirst(paging.getFirst());
		msg.setLast(paging.getLast());
		paging.setTotalRecord(dao.getCount1(msg));
		model.addAttribute("paging", paging);
		model.addAttribute("msg", dao.tomsgList(msg));

		return "doeun/Message";
	}

	@RequestMapping(value = "/mypage/reviewMsg") // 받은메세지 확인폼
	public ModelAndView reviewMsg(MembersVO mem, MessageVO msg, Model model, HttpSession session,
			HttpServletRequest request) {

		msg.setTo_id((String) session.getAttribute("id")); // 카카오

		model.addAttribute("msg", dao.viewMsg(msg));
		return new ModelAndView("no/doeun/viewmsg");
	}
	@ResponseBody
	@RequestMapping(value = "mypage/reviewMsg/ajax") // 받은메세지 수신확인처리
	public int Mchg(MessageVO msg, Model model, HttpSession session, Paging paging) {
		return dao.Mchg(msg);
	}

	@RequestMapping(value = "/mypage/replyMsg") // 답장 폼
	public ModelAndView replyMsgForm(MembersVO mem, MessageVO msg, Model model, HttpSession session,
			HttpServletRequest request) {
		msg.setTo_id((String) session.getAttribute("id")); // 카카오
		model.addAttribute("msg", dao.viewMsg(msg));
		return new ModelAndView("no/doeun/sendmsg");
	}	

	@RequestMapping(value = "mypage/outmsg") // 보낸 메세지함
	public String OpMsg(MembersVO mem, MessageVO msg, Model model, HttpSession session, Paging paging) {
		mem.setId((String) session.getAttribute("id"));
		msg.setSend_id(mem.getId());
		paging.setPageUnit(16);
		paging.setPageSize(10);
		msg.setFirst(paging.getFirst());
		msg.setLast(paging.getLast());
		paging.setTotalRecord(dao.getCount2(msg));
		model.addAttribute("paging", paging);
		model.addAttribute("msg", dao.sendmsgList(msg));
		
		return "doeun/OutMessage";
	}

	@RequestMapping(value = "message") // 발송메세지 폼
	public String msg(MembersVO mem, MessageVO msg, Model model, HttpSession session) {
		msg.setSend_id((String)session.getAttribute("id"));
		return "doeun/sendmsg";
	}

	@PostMapping(value = "sendmsg") // 메세지 발송 처리
	public String inputmsg(MembersVO mem, MessageVO msg, Model model, HttpSession session) {
		mem.setId((String) session.getAttribute("id"));
		msg.setSend_id(mem.getId());
		dao.sendMsg(msg);
		return "redirect:/mypage/msg";
	}

	@ResponseBody
	@RequestMapping(value = "mypage/delMsg/ajax") // 메세지 삭제처리
	public void delMsg(MessageVO msg, Model model, HttpSession session, Paging paging) {
		dao.delMsg(msg);
	}

	
	@PostMapping(value = "mypage/replymsg/ajax") // 메세지 답장처리
	public String replymsg(MembersVO mem, MessageVO msg, Model model, HttpSession session) {
		mem.setId((String) session.getAttribute("id"));
		msg.setSend_id(mem.getId());
		dao.sendMsg(msg);
		return "redirect:/mypage/msg";
	}

	@RequestMapping(value = "mypage/matching") // 개인경기참가내역
	public String p_matchList(P_matchVO pmc, Model model, HttpSession session, Paging paging) throws ParseException {
		pmc.setM_id((String) session.getAttribute("id"));
		paging.setPageUnit(5);
		paging.setPageSize(10);
		pmc.setFirst(paging.getFirst());
		pmc.setLast(paging.getLast());
		paging.setTotalRecord(dao.getPmatCnt(pmc));
		model.addAttribute("paging", paging);
		model.addAttribute("p_mat", dao.AppPmatList(pmc));
		
//		// 포맷 설정
//		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		Date currentTime = new Date();
//		String date = format.format(currentTime);
//
//		String end_dt = (String)session.getAttribute(pmc.getM_date());
//
//		Date endDate = format.parse(end_dt);
//		Date todate = format.parse(date);
//
//		System.out.println("endDate:" + endDate);
//		System.out.println("todate:" + todate);
//		int compare = endDate.compareTo(todate);
//
//		System.out.println("compare:"+ compare);
//
//		if(compare >= 0) {
//		System.out.println("사용가능");
//		model.addAttribute("endDate",compare);
//		} else {
//		System.out.println("유효기간만료");
//		}
		System.out.println(dao.AppPmatList(pmc));
		return "doeun/PApplyDetail";
	}

	@RequestMapping(value = "mypage/teamMatching") // 팀경기참가내역
	public ModelAndView t_matchList(TeammatchVO tmat, HttpSession session, Paging paging, Model model) {
		tmat.setId((String) session.getAttribute("id"));
		 paging.setPageUnit(3);
		 paging.setPageSize(10);
		 tmat.setFirst(paging.getFirst());
		 tmat.setLast(paging.getLast());
		 paging.setTotalRecord(dao.getTmatCnt(tmat));
		 model.addAttribute("paging", paging);
		List<Map<String, Object>> list = dao.AppTmatList(tmat);

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("id", tmat.getId());
		System.out.println(map);
		list.add(map);
		return new ModelAndView("doeun/TApplyDetail", "tmat", list);

	}

	@RequestMapping(value = "mypage/matched") // 경기참가 이력
	public String AppTmatList(P_matchVO pmc, Model model, HttpSession session, Paging paging) {
//		List<Map<String,Object>> map = new ArrayList<Map<String, Object>>();
//		model.addAttribute("p_mat", dao.p_matchedList(pmc));
//		map.put("tmat", dao.AppTmatList(tmat));
		
		return "doeun/review";
	}
	@RequestMapping(value = "mypage/usedPoint") // 포인트 사용내역
	public String pointed(MembersVO mem, PointVO po, Model model, HttpSession session, Paging paging) {
		po.setP_id((String) session.getAttribute("id"));
		// po.setP_id((String)session.getAttribute("kemail"));
		paging.setPageUnit(21);
		paging.setPageSize(10);
		po.setFirst(paging.getFirst());
		po.setLast(paging.getLast());
		paging.setTotalRecord(dao.getPoCnt(po));
		model.addAttribute("pointed", dao.pointList(po));
		model.addAttribute("paging", paging);

		return "doeun/point";
	}

	@RequestMapping(value = "mypage/cupon") // 쿠폰함
	public String userCp(CuponVO cp, HttpSession session, Model model) {

		cp.setM_id((String) session.getAttribute("id"));
		System.out.println(cp.getM_id());
		model.addAttribute("cp", dao.selectCp(cp));

		return "doeun/Mycpon";
	}

	@RequestMapping(value = "/mypage/write") // 내가 쓴 게시글
	public String Mywrite() {
		
		return "doeun/MyWriter";
	}
	@RequestMapping(value="mypage/matching/del", method=RequestMethod.GET)
	public void delPMatchProc(P_matchVO pmat, Model model, HttpSession session, HttpServletRequest request) {
		pmat.setP_id((String) session.getAttribute("id"));
		pmat.setM_no(request.getParameter("m_no"));
		
		dao.delPMatchProc(pmat);
	}
	
	
}

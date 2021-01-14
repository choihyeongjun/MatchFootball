package co.company.MatchFootball.doeun;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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

@Controller
public class DoeunController {

	@Autowired
	DoeunMapper dao;
	
//	@ModelAttribute("point")
//	public MembersVO myPoint(MembersVO po, HttpSession session) {
//	
//	}
	@RequestMapping("mypage/profile") // 프로필(메인마이페이지)
	public String profile(MembersVO mb, Model model, HttpSession session, HttpServletResponse response) {
	
		mb.setId((String)session.getAttribute("kemail"));//카카오
	//	mb.setId((String)session.getAttribute("id")); //test용
		mb.setName((String)session.getAttribute("kname"));
		model.addAttribute("mb", dao.getUser(mb));
		session.setAttribute("point", mb.getPoint());
		
		return "doeun/userprofile";
	}

	@RequestMapping(value = "mypage/userupdate") // 정보수정폼
	public String upuserinfo(MembersVO mb, Model model, HttpServletResponse response, HttpServletRequest request,HttpSession session) throws IOException {
		mb.setId((String)session.getAttribute("kemail"));
//		mb.setId((String)session.getAttribute("id"));//test 용
		model.addAttribute("mb", dao.getUser(mb));
		
		return "doeun/pfUpdate";
	}
	
	
	@PostMapping(value="mypage/updateMem")
	public String upMem(MembersVO vo, HttpServletRequest request, HttpSession session) {
		//vo.setId((String)session.getAttribute("kemail"));
		vo.setId((String)session.getAttribute("id"));
		if(dao.getUser(vo) == null) {
			
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request ;
			// 이미지파일
			MultipartFile multipartFile = multipartRequest.getFile("file"); // input타입의 name값 : uploadFile
			if (!multipartFile.isEmpty() && multipartFile.getSize() > 0) {
				try {
					String path = request.getSession().getServletContext().getRealPath("/images"); // /images폴더 위치 mvc에 추가
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
			
		} else {
	
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request ;
			// 이미지파일
			MultipartFile multipartFile = multipartRequest.getFile("file"); // input타입의 name값 : uploadFile
			if (!multipartFile.isEmpty() && multipartFile.getSize() > 0) {
				try {
					String path = request.getSession().getServletContext().getRealPath("/images"); // /images폴더 위치 mvc에 추가
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

		session.setAttribute("point", vo.getPoint());
		return "redirect:/mypage/profile";
	}
	
	@RequestMapping(value="mypage/pointcharge")// 포인트 충전 url...
	@ResponseBody
	public int chargePo(PointVO pay,CuponVO cp) {//결제 db에 insert
		//쿠폰 등록 dao
		
		return dao.Pcharge(pay); //point 충전 dao	
	}
	
//	@RequestMapping("mypage/Mybar") // 총 포인트 조회 
//	public String myPoint(MembersVO po, Model model, HttpServletResponse response, HttpServletRequest request, HttpSession session) {
//		po.setId((String)session.getAttribute("id"));
//		
//		model.addAttribute("point", dao.myPoint(po));
//		return "doeun";
//	}
	@RequestMapping(value = "mypage/pay") // 결제
	public ModelAndView payment(HttpServletResponse response, HttpSession session, HttpServletRequest request, MembersVO mvo) throws IOException {
		mvo.setId((String)session.getAttribute("id")); // 테스트용
	//	mvo.setId((String)session.getAttribute("kemail"));//카카오
		request.setAttribute("point", dao.getUser(mvo));
		return new ModelAndView("doeun/Pay");
	}

	@RequestMapping(value = "mypage/msg") // 메인메세지함(default 받은 메시지함)
	public String tomsgList(MembersVO mem, MessageVO msg, Model model, HttpSession session, Paging paging,HttpServletRequest request) {
		mem.setId((String)session.getAttribute("id"));//테스트용
	//    mem.setId((String) session.getAttribute("kemail"));//카카오
		msg.setTo_id(mem.getId());		
		paging.setPageUnit(16);
		paging.setPageSize(10);
		msg.setFirst(paging.getFirst());
		msg.setLast(paging.getLast());
		paging.setTotalRecord(dao.getCount1(msg));
		model.addAttribute("paging", paging);
		
		model.addAttribute("msg",dao.tomsgList(msg));
		return "doeun/Message";
	}
	@RequestMapping(value ="/mypage/reviewMsg") // 받은메세지 확인폼
	public ModelAndView reviewMsg(MembersVO mem, MessageVO msg, Model model, HttpSession session, HttpServletRequest request) {
		msg.setTo_id((String)session.getAttribute("kemail")); //카카오
		//msg.setTo_id((String)session.getAttribute("id")); //카카오
		
		model.addAttribute("msg",dao.reviewMsg(msg));
		return new ModelAndView("no/doeun/viewmsg");
	}
//	@ResponseBody
//	@RequestMapping(value = "mypage/msg/ajax")
//	public List<MessageVO> tomsgList(MembersVO mem, MessageVO msg, Model model, HttpSession session, Paging paging) {
//		mem.setId((String)session.getAttribute("id"));
//		msg.setTo_id(mem.getId());		
//		paging.setPageUnit(16);
//		paging.setPageSize(10);
//		msg.setFirst(paging.getFirst());
//		msg.setLast(paging.getLast());
//		paging.setTotalRecord(dao.getCount1(msg));
//		model.addAttribute("paging", paging);
//		return dao.tomsgList(msg);
//	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "mypage/sendmsg/ajax") //보낸 메세지 함
	public List<MessageVO> sendmsgList(MembersVO mem, MessageVO msg, Model model, HttpSession session, Paging paging) {
		mem.setId((String) session.getAttribute("id"));
	//	mem.setId((String) session.getAttribute("kemail"));//카카오
		msg.setSend_id(mem.getId());
		paging.setPageUnit(16);
		paging.setPageSize(10);
		msg.setFirst(paging.getFirst());
		msg.setLast(paging.getLast());
		paging.setTotalRecord(dao.getCount2(msg));
		model.addAttribute("paging", paging);
		model.addAttribute("msg", dao.sendmsgList(msg));
		return dao.sendmsgList(msg);
	}

	@RequestMapping(value = "mypage/outmsg") // 보낸 메세지함
	public String OpMsg() {
		return "doeun/OutMessage";
	}
	@RequestMapping(value ="message") // 발송메세지 폼
	public String msg(MembersVO mem, MessageVO msg, Model model, HttpSession session) {
		dao.reviewMsg(msg);
		return "doeun/sendmsg";
	}
	@PostMapping(value = "sendmsg") // 메세지 발송 처리
	public String inputmsg(MembersVO mem, MessageVO msg, Model model, HttpSession session) {
		//mem.setId((String)session.getAttribute("id"));		
		mem.setId((String)session.getAttribute("kemail"));//카카오
		msg.setSend_id(mem.getId());
		dao.sendMsg(msg);
		return "redirect:/mypage/msg";
	}
	
	
	@PostMapping(value = "replymsg/ajax") // 메세지 답장처리
	public String replymsg(MembersVO mem, MessageVO msg, Model model, HttpSession session) {
		mem.setId((String)session.getAttribute("id"));	
		//mem.setId((String)session.getAttribute("kemail"));
		msg.setSend_id(mem.getId());
		dao.sendMsg(msg);
		return "redirect:/mypage/msg";
	}

	@RequestMapping(value = "mypage/invitemsg") // 초대 메세지함
	public String ivMsg() {
		return "doeun/InviteMsg";
	}

	@RequestMapping(value = "mypage/matched") // 개인경기참가내역
	public String p_matchedList(P_matchVO pmc, Model model, HttpSession session, Paging paging) {
		pmc.setM_id((String) session.getAttribute("id"));	
		//pmc.setM_id((String) session.getAttribute("kemail"));
		model.addAttribute("p_mat", dao.p_matchedList(pmc));
		return "doeun/review";
	}
//	@RequestMapping(value = "mypage/matched") // 팀경기참가내역
//	public String t_matchedList(P_matchVO pmc, Model model, HttpSession session, Paging paging) {
//		//pmc.setM_id((String) session.getAttribute("id"));	
//		pmc.setM_id((String) session.getAttribute("kemail"));
//
//		model.addAttribute("p_mat", dao.p_matchedList(pmc));
//		return "doeun/review";
//	}
	@RequestMapping(value = "mypage/usedPoint") // 포인트 사용내역
	public String pointed(MembersVO mem, PointVO po, Model model, HttpSession session, Paging paging) {
		po.setP_id((String)session.getAttribute("id"));	
	//	po.setP_id((String)session.getAttribute("kemail"));		
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
	public ModelAndView userCp() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("doeun/Mycpon");// jsp 경로 지정
		return mav;
	}

	@RequestMapping(value = "/doeun/cupon") // 쿠폰 생성
	public String cupon() {
		return "";
	}

	@RequestMapping(value = "/doeun/write") // 내가 쓴 게시글
	public String Mywrite() {
		return "";
	}

	@RequestMapping("/admin/pointm") // 쿠폰&포인트 관리페이지(김도은)
	public String pointMgm() {
		return "doeun/pointMgm";
	}

	@RequestMapping("/admin/coupon") // 쿠폰&포인트 관리페이지(김도은)
	public String cpmgm() {
		return "doeun/cpmgm";
	}
}

package co.company.MatchFootball.doeun;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import co.company.MatchFootball.mapper.DoeunMapper;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.PointVO;

@Controller
public class DoeunController {

	@Autowired
	DoeunMapper dao;

	@RequestMapping("/profile") // 프로필(메인마이페이지)
	public String profile(MembersVO mb, Model model, HttpSession session, HttpServletResponse response) {
		mb.setId("test");
		model.addAttribute("mb", dao.getUser(mb));
		return "doeun/userprofile";
	}

	@RequestMapping(value = "/userinfoup") // 정보수정폼
	public String upuserinfo(MembersVO mb, Model model, HttpServletResponse response) throws IOException {
		mb.setId("test");
		model.addAttribute("mb", dao.getUser(mb));
		return "doeun/pfUpdate";
	}
	
	@PostMapping(value="/updateMem")
	public String upMem(MembersVO vo, HttpServletRequest request) {
		vo.setId("test");
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
		return "doeun/userprofile";
	}
	@GetMapping("/user/mypage/pointcharge")// 포인트 충전 url...
	public void chargePo() {
		
	}
	
	@RequestMapping() // 총 포인트 조회 
	public String profile(PointVO po, Model model) {
		po.setP_id("test");
		model.addAttribute("po", dao.selTpo(po));
		return "doeun/Mybar";
	}
	@RequestMapping(value = "/pay") // 결제
	public ModelAndView payment(HttpServletResponse response) throws IOException {
		return new ModelAndView("doeun/Pay");
	}

	@RequestMapping(value = "/msg") // 메인메세지함(default 받은 메시지함)
	public ModelAndView MyMsg() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("doeun/Message");// jsp 경로 지정
		return mav;
	}

	@RequestMapping(value = "/outmsg") // 보낸 메세지함
	public String OpMsg() {
		return "doeun/OutMessage";
	}

	@RequestMapping(value = "/message") // 메세지 창
	public String msg() {
		return "doeun/msg";
	}

	@RequestMapping(value = "/invitemsg") // 초대 메세지함
	public String ivMsg() {
		return "doeun/InviteMsg";
	}

	@RequestMapping(value = "/matched") // 경기참가내역
	public ModelAndView review() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("doeun/review");// jsp 경로 지정
		return mav;
	}

	@RequestMapping(value = "/usedPoint") // 포인트 사용내역
	public ModelAndView point() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("doeun/point");// jsp 경로 지정
		return mav;
	}

	@RequestMapping(value = "/cupon") // 쿠폰함
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

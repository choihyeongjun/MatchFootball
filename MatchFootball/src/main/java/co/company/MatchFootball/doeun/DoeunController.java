package co.company.MatchFootball.doeun;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.company.MatchFootball.mapper.DoeunMapper;
import co.company.MatchFootball.vo.MembersVO;

@Controller
public class DoeunController {

	@Autowired DoeunMapper dao;
	@RequestMapping(value="/pay") //결제
	public ModelAndView payment(HttpServletResponse response) throws IOException {
		/*
		 * ModelAndView mav = new ModelAndView(); mav.setViewName("/Pay");//jsp 경로 지정
		 */		
		
		return new ModelAndView("doeun/Pay");
	}
	
	
	@RequestMapping("/profile")// 프로필 
	public String profile	(MembersVO mb, Model model) {
	
		mb.setId("105");
		model.addAttribute("mb", dao.getUser(mb));
		return "doeun/userprofile";
	}
	
	@RequestMapping(value="/mypage")// 마이페이지 메인
	public String mypag() {
		return "doeun/aa";
	}
	@RequestMapping(value="/msg")// 메인메세지함(default 받은 메시지)
	public ModelAndView MyMsg() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("doeun/Message");//jsp 경로 지정
		return mav;
	}
	
	@RequestMapping(value="/outmsg")// 보낸 메세지함
	public String OpMsg() {
		return "doeun/OutMessage";
	}
	@RequestMapping(value="/invitemsg")// 초대 메세지함
	public String ivMsg() {
		return "doeun/InviteMsg";
	}
	@RequestMapping(value="/userinfoup") // 정보수정폼
	public String upuserinfo(MembersVO mb, Model model) {
		mb.setId("105");
		model.addAttribute("mb", dao.getUser(mb));
		return "doeun/pfUpdate";
	}
	
	/*
	 * @PostMapping() public () {
	 * 
	 * }
	 */
	@RequestMapping(value="/doeun/review")// 경기참가내역
	public String review() {
		return "doeun/review";
	}
	@RequestMapping(value="/doeun/usercupon")//쿠폰 사용 처리
	public String userCp() {
		return "";
	}
	@RequestMapping(value="/doeun/cupon")//쿠폰 생성
	public String cupon() {
		return "";
	}
	@RequestMapping(value="/doeun/write")// 내가 쓴 게시글
	public String Mywrite() {
		return "";
	}
	@RequestMapping(value="/usedPoint")// 포인트 사용내역
	public ModelAndView point() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("doeun/point");//jsp 경로 지정
		return mav;
	}
}

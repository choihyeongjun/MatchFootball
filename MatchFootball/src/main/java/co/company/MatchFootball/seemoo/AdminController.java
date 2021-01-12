package co.company.MatchFootball.seemoo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import co.company.MatchFootball.mapper.SeemooMapper;
<<<<<<< HEAD
=======
import co.company.MatchFootball.vo.BlackTeamListVO;
import co.company.MatchFootball.vo.BlackTeamVO;
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball.git
import co.company.MatchFootball.vo.ManagersVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.NoticeVO;
import co.company.MatchFootball.vo.ReviewVO;
import co.company.MatchFootball.vo.TeamVO;

@Controller
public class AdminController {

	@Autowired
	SeemooMapper seemoomapper;

	@RequestMapping(value = "/admin", method = RequestMethod.GET) // 관리자 메인페이지
	public String admin(Model model) {
		model.addAttribute("members", seemoomapper.memberList());
		return "no/seemoo/index";
	}
	
	@RequestMapping(value = "/user/ajax", method = RequestMethod.GET) // 유저관리 페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<MembersVO> userlist(Model model, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.memberList();
	}

	@RequestMapping(value = "/admin/user", method = RequestMethod.GET) // 유저관리 페이지 (전체조회)
	public String user(Model model, MembersVO mvo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("members", seemoomapper.memberList());
		return "seemoo/user";
	}
	
	@RequestMapping(value = "/admin/userinfo", method = RequestMethod.GET) // 유저관리 페이지 (단건조회)
	@ResponseBody
	public MembersVO users(Model model, MembersVO mvo, HttpServletRequest request, HttpServletResponse reponse) {
		System.out.println(">> "+mvo.getId());
		return  seemoomapper.members(mvo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/userupdate", method = RequestMethod.GET) // 유저관리 페이지 (수정)
	public MembersVO usersupdate(MembersVO vo) {
		 seemoomapper.membersupdate(vo);
		 return vo;
	}
	
	@ResponseBody
	@RequestMapping(value = "/userdelete", method = RequestMethod.GET) // 유저관리 페이지 (삭제)
	public MembersVO usersdelete(MembersVO vo) {
		seemoomapper.membersdelete(vo);
		return vo;
	}

//	---------------------------------------------------------------------------------------------------------------------

	@RequestMapping(value = "/admin/team", method = RequestMethod.GET) // 팀관리 페이지 (전체조회)
	public String team(Model model, TeamVO tvo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("teams", seemoomapper.teamList());
		return "seemoo/team";
	}
	
	@RequestMapping(value = "/team/ajax", method = RequestMethod.GET) // 팀관리 페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<TeamVO> teamlist(Model model, TeamVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.teamList();
	}

	@RequestMapping(value = "/admin/teaminfo", method = RequestMethod.GET) // 팀관리 페이지 (단건조회)
	@ResponseBody
	public TeamVO teams(Model model, TeamVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return  seemoomapper.teams(vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/teamupdate", method = RequestMethod.GET) // 팀관리 페이지 (수정)
	public TeamVO teamsupdate(TeamVO vo) {
		seemoomapper.teamsupdate(vo);
		return vo;
	}
	
	@ResponseBody
	@RequestMapping(value = "/teamdelete", method = RequestMethod.GET) // 팀관리 페이지 (삭제)
	public TeamVO teamsdelete(TeamVO vo) {
		seemoomapper.teamsdelete(vo);
		return vo;
	}
	
	@RequestMapping(value = "/admin/blackteam", method = RequestMethod.GET) // 블랙팀관리 페이지
	public String blackteam(Model model, TeamVO tvo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("teams", seemoomapper.teamList());
		return "seemoo/blackteam";
	}
	
	@RequestMapping(value = "/blackteam/ajax", method = RequestMethod.GET) // 블랙팀관리 조회페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<TeamVO> blackteamlist(Model model, TeamVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.blackteamList();
	}

//	@RequestMapping("/admin/blackteam") // 팀관리 페이지 (블랙리스트 된 팀)
//	public String blackteam() {
//		return "seemoo/blackteam";
//	}
	
//	---------------------------------------------------------------------------------------------------------------------
	
	@RequestMapping(value = "/admin/manager", method = RequestMethod.GET) // 매니저관리 페이지
	public String manager(Model model, TeamVO tvo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("managers", seemoomapper.managerList());
		return "seemoo/manager";
	}
	
	@RequestMapping(value = "/manager/ajax", method = RequestMethod.GET) // 매니저관리 조회페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<ManagersVO> managerlist(Model model, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.managerList();
	}
	
	@ResponseBody
	@RequestMapping(value = "/managerupdate", method = RequestMethod.GET) //매니저관리 페이지 (수정)
	public MembersVO managerupdate(MembersVO vo) {
		 seemoomapper.managerupdate(vo);
		 return vo;
	}

	@RequestMapping(value = "/admin/applymanager", method = RequestMethod.GET) // 매니저관리 페이지(매니저 신청|승인대기)
	public String applymanager(Model model, TeamVO tvo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("managerapplys", seemoomapper.managerapplyList());
		return "seemoo/applymanager";
	}
	
//	---------------------------------------------------------------------------------------------------------------------

	@RequestMapping("/admin/tournament") // 토너먼트 페이지
	public String tournament() {
		return "seemoo/tournament";
	}

	@RequestMapping("/admin/field") // 경기장관리 페이지
	public String field() {
		return "seemoo/field";
	}

	@RequestMapping("/admin/community") // 커뮤니티 페이지
	public String community() {
		return "seemoo/community";
	}

<<<<<<< HEAD
//	---------------------------------------------------------------------------------------------------------------------

	@RequestMapping("/admin/notice/noticewrite") // 공지사항
=======
	@RequestMapping("/admin/notice") // 공지사항 페이지
	public String notice() {
		return "seemoo/notice";
	}

	@RequestMapping("/admin/notice/noticewrite") // 공지사항 글쓰기 페이지
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball.git
	public String noticewrite() {
		return "seemoo/noticewrite";
	}

	@RequestMapping(value = "/admin/noticewrite/ajax", method = RequestMethod.GET) // 공지사항 조회 페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<NoticeVO> noticeselect(Model model, NoticeVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.noticeselect();
	}
<<<<<<< HEAD
	
	@RequestMapping(value = "/noticeselect/{n_no}", method = RequestMethod.GET) //(단건조회)
	@ResponseBody
	public NoticeVO noticeselect(@PathVariable String n_no, NoticeVO vo, Model model) {
		vo.setN_no(n_no);
		return seemoomapper.noticeselect(vo);	
	}
	
	@ResponseBody
	@RequestMapping(value = "/noticeinsert", method = RequestMethod.POST) //입력
	public boolean noticeinsert(NoticeVO vo, Model model)  {
		 seemoomapper.noticeinsert(vo);
		 return true;
	}
	
	@ResponseBody
	@RequestMapping(value = "/noticedelete/{n_no}", method = RequestMethod.DELETE) // 공지사항 페이지 (삭제)
	public NoticeVO noticedelete(@PathVariable String n_no,NoticeVO vo, Model model) {
		seemoomapper.noticedelete(vo);
		return vo;
	}
	
//	---------------------------------------------------------------------------------------------------------------------

	@ResponseBody
	@RequestMapping(value = "/review/ajax", method = RequestMethod.GET) // 리뷰 페이지(ajax)
	public List<ReviewVO> reviewlist(Model model, ReviewVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.reviewList();
	}
	
	@RequestMapping(value = "/admin/review", method = RequestMethod.GET) // 리뷰 페이지(전체조회)
	public String review(Model model, ReviewVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("reviews", seemoomapper.reviewList());
		return "seemoo/review";
	}
	
//	---------------------------------------------------------------------------------------------------------------------

=======
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball.git
	@RequestMapping("/admin/match") // 매치 페이지
	public String match() {
		return "seemoo/match";
	}

	@RequestMapping("/admin/sales") // 매출수익통계 페이지
	public String sales() {
		return "seemoo/sales";
	}

	@RequestMapping("/admin/point") // 쿠폰&포인트 관리페이지(김도은)
	public String point() {
		return "seemoo/point";
	}
}

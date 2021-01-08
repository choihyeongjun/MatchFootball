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
import co.company.MatchFootball.vo.BlackTeamListVO;
import co.company.MatchFootball.vo.BlackTeamVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.NoticeVO;
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
		return seemoomapper.membersupdate(vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/userdelete", method = RequestMethod.GET) // 유저관리 페이지 (삭제)
	public MembersVO usersdelete(MembersVO vo) {
		return seemoomapper.membersdelete(vo);
	}

	@RequestMapping(value = "/admin/team", method = RequestMethod.GET) // 팀관리 페이지 (전체조회)
	public String team(Model model, TeamVO tvo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("teams", seemoomapper.teamList());
		return "seemoo/team";
	}
	
	@RequestMapping(value = "/team/ajax", method = RequestMethod.GET) // 팀관리 페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<TeamVO> teamlist(Model model, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.teamList();
	}

	
	@RequestMapping(value = "/admin/teaminfo", method = RequestMethod.GET) // 팀관리 페이지 (단건조회)
	public String teams(Model model, TeamVO tvo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("tvoselect", seemoomapper.teams(tvo));
		return "no/seemoo/teaminfo";
	}
	
	@ResponseBody
	@RequestMapping(value = "/teamupdate", method = RequestMethod.GET) // 팀관리 페이지 (수정)
	public TeamVO teamsupdate(TeamVO vo) {
		return seemoomapper.teamsupdate(vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/teamdelete", method = RequestMethod.GET) // 팀관리 페이지 (삭제)
	public TeamVO teamsdelete(TeamVO vo) {
		return seemoomapper.teamsdelete(vo);
	}
	
	@RequestMapping(value = "/admin/blackteam", method = RequestMethod.GET) // 블랙팀관리 페이지
	public String blackteam(Model model, TeamVO tvo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("teams", seemoomapper.teamList());
		return "seemoo/blackteam";
	}
	
	@RequestMapping(value = "/blackteam/ajax", method = RequestMethod.GET) // 블랙팀관리 페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<BlackTeamListVO> blackteamlist(Model model, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.blackteamList();
	}

//	@RequestMapping("/admin/blackteam") // 팀관리 페이지 (블랙리스트 된 팀)
//	public String blackteam() {
//		return "seemoo/blackteam";
//	}

	@RequestMapping(value = "/admin/manager", method = RequestMethod.GET) // 매니저관리 페이지
	public String manager(Model model, TeamVO tvo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("managers", seemoomapper.managerList());
		return "seemoo/manager";
	}

	@RequestMapping(value = "/admin/applymanager", method = RequestMethod.GET) // 매니저관리 페이지(매니저 신청|승인대기)
	public String applymanager(Model model, TeamVO tvo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("managerapplys", seemoomapper.managerapplyList());
		return "seemoo/applymanager";
	}

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

	@RequestMapping("/admin/notice") // 공지사항 페이지
	public String notice() {
		return "seemoo/notice";
	}

	@RequestMapping("/admin/notice/noticewrite") // 공지사항 글쓰기 페이지
	public String noticewrite() {
		return "seemoo/noticewrite";
	}

	@RequestMapping(value = "/admin/noticewrite/ajax", method = RequestMethod.GET) // 공지사항 조회 페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<NoticeVO> noticeselect(Model model, NoticeVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.noticeselect();
	}
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

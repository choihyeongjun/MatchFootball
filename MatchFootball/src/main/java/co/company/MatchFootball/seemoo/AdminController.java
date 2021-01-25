package co.company.MatchFootball.seemoo;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import co.company.MatchFootball.mapper.HyendongMapper;
import co.company.MatchFootball.mapper.SeemooMapper;
import co.company.MatchFootball.vo.FieldVO;
import co.company.MatchFootball.vo.FwboardVO;
import co.company.MatchFootball.vo.ManagerapplyVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.NboardVO;
import co.company.MatchFootball.vo.NoticeVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.ReviewVO;
import co.company.MatchFootball.vo.TeamVO;

@Controller
public class AdminController {

	@Autowired
	SeemooMapper seemoomapper;
	HyendongMapper hyendongmapper;
//	=======================================================================================================================
	@RequestMapping(value = "/admin", method = RequestMethod.GET)		// 관리자 메인페이지
	public String admin(Model model) {
		model.addAttribute("members", seemoomapper.memberList());
		return "no/seemoo/index";
	}
	
	@RequestMapping(value = "/user/ajax", method = RequestMethod.GET)	// 유저관리 페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<MembersVO> userlist(Model model, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.memberList();
	}

	@RequestMapping(value = "/admin/user", method = RequestMethod.GET)	// 유저관리 페이지 (전체조회)
	public String user(Model model, MembersVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("members", seemoomapper.memberList());
		return "seemoo/user";
	}

//.......................................................................................................................................
	
	@RequestMapping(value = "/user2/ajax", method = RequestMethod.GET)	// 용병신청 유저페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<MembersVO> userslist(Model model, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.membersList();
	}
	
	@RequestMapping(value = "/admin/user2", method = RequestMethod.GET)	// 용병신청 유저페이지
	public String user2(Model model, MembersVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("members", seemoomapper.membersList());
		return "seemoo/user2";
	}
//........................................................................................................................................
	
	@RequestMapping(value = "/admin/userinfo", method = RequestMethod.GET)	// 유저단건조회 (모달페이지)
	@ResponseBody
	public MembersVO userselect(Model model, MembersVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return  seemoomapper.memberselect(vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/userupdate", method = RequestMethod.GET) 		// 유저권한수정
	public int usersupdate(MembersVO vo) {
		return seemoomapper.membersupdate(vo);
		 
	}
	
//	@ResponseBody
//	@RequestMapping(value = "/userdelete/{id}", method=RequestMethod.DELETE) // 유저관리 페이지 (삭제)
//	public void usersdelete(@PathVariable String id, MembersVO vo, Model model) {
//		seemoomapper.membersdelete(vo);
//	}
	
//	==================================================================================================================================


	@RequestMapping(value = "/admin/team", method = RequestMethod.GET)		// 팀관리 페이지 (전체조회)
	public String team(Model model, TeamVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("teams", seemoomapper.teamList());
		return "seemoo/team";
	}
	
	@RequestMapping(value = "/team/ajax", method = RequestMethod.GET)	  	// 팀관리 페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<TeamVO> teamlist(Model model, TeamVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.teamList();
	}

	@RequestMapping(value = "/admin/teaminfo", method = RequestMethod.GET) 	// 팀단건조회 (모달페이지)
	@ResponseBody
	public TeamVO teamselect(Model model, TeamVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return  seemoomapper.teamselect(vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/teamsupdate", method = RequestMethod.GET) 	// 팀권한수정(수정)
	public int teamsupdate(TeamVO vo) {
		return seemoomapper.teamsupdate(vo);
	}
	
	
//........................................................................................................................................
	
	@RequestMapping(value = "/admin/blackteam", method = RequestMethod.GET) // 블랙팀 페이지
	public String blackteam(Model model, TeamVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("teams", seemoomapper.teamList());
		return "seemoo/blackteam";
	}
	
	@RequestMapping(value = "/blackteam/ajax", method = RequestMethod.GET) // 블랙팀 조회페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<TeamVO> blackteamlist(Model model, TeamVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.blackteamList();
	}
	
	@ResponseBody
	@RequestMapping(value = "/teamsdelete/{t_num}", method = RequestMethod.DELETE) 	// 블랙팀 (삭제)
	public void teamsdelete(@PathVariable String t_num, TeamVO vo, Model model) {
		seemoomapper.teamsdelete(vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/blackteamupdate", method = RequestMethod.GET) 	// 팀권한수정(수정)
	public int blackteamupdate(TeamVO vo) {
		return seemoomapper.blackteamupdate(vo);
	}
	
//	@ResponseBody
//	@RequestMapping(value = "/userdelete/{id}", method=RequestMethod.DELETE) // 유저관리 페이지 (삭제)
//	public void usersdelete(@PathVariable String id, MembersVO vo, Model model) {
//		seemoomapper.membersdelete(vo);
//	}
	
//	====================================================매니저======================================================
	
	@RequestMapping(value = "/admin/manager", method = RequestMethod.GET) // 매니저관리 페이지
	public String manager(Model model, TeamVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("managers", seemoomapper.managerList());
		return "seemoo/manager";
	}
	
	@RequestMapping(value = "/manager/ajax", method = RequestMethod.GET) // 매니저관리 조회페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<MembersVO> managerlist(Model model, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.managerList();
	}
	
	@RequestMapping(value = "/admin/managerinfo", method = RequestMethod.GET) // 매니저관리 페이지 (단건조회)
	@ResponseBody
	public MembersVO teamselect(Model model, MembersVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return  seemoomapper.managerselect(vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/managerupdate", method = RequestMethod.GET) // 매니저관리 페이지 (수정)
	public int managerupdate(MembersVO vo) {
		 return seemoomapper.managerupdate(vo);
	}
	
//	====================================================매니저 신청======================================================

	@RequestMapping(value = "/applymanager/ajax", method = RequestMethod.GET) // 매니저(매니저 신청|승인대기)관리 페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<ManagerapplyVO> applymanagerlist(Model model, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.managerapplyList();
	}
	
	@RequestMapping(value = "/admin/applymanager", method = RequestMethod.GET) // 매니저(매니저 신청|승인대기)관리 페이지
	public String applymanager(Model model, ManagerapplyVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("managerapplys", seemoomapper.managerapplyList());
		return "seemoo/applymanager";
	}
	
	@RequestMapping(value = "/managerapplyupdate", method = RequestMethod.GET) // 매니저관리 페이지 (수정)
	@ResponseBody
	public int managerapplyupdate(MembersVO vo) {
		 return  seemoomapper.managerapplyupdate(vo);
	}
	
//	====================================================정지 매니저======================================================
	
	@RequestMapping(value = "/stopmanager/ajax", method = RequestMethod.GET) //  정지 매니저 조회 (ajax로 전체조회)
	@ResponseBody	
	public List<MembersVO> stopmanagerList(Model model, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.stopmanagerList();
	}
	
	@RequestMapping(value = "/admin/stopmanager", method = RequestMethod.GET) // 정지 매니저 조회
	public String stopmanager(Model model, MembersVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("stopmanager", seemoomapper.stopmanagerList());
		return "seemoo/stopmanager";
	}

//	====================================================공지사항======================================================

	@RequestMapping("/admin/notice/noticewrite") // 공지사항
	public String noticewrite() {
		return "seemoo/noticewrite";
	}

	@ResponseBody	
	@RequestMapping(value = "/noticewrite/ajax", method = RequestMethod.GET) // 공지사항 조회 페이지 (ajax로 전체조회)
	public List<NoticeVO> noticelist(Model model, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.noticeList();
	}
	
	@RequestMapping(value = "/noticeselect/{n_no}", method = RequestMethod.GET) //(단건조회)
	@ResponseBody
	public NoticeVO noticeselect(@PathVariable String n_no, NoticeVO vo, Model model) {
		vo.setN_no(n_no);
		return seemoomapper.noticeselect(vo);	
	}
	
	 @ResponseBody
	 @RequestMapping(value = "/noticeupdate")
	 public int noticeupdate(NoticeVO vo) {
		 return seemoomapper.noticeupdate(vo); 
	 }
	
	@ResponseBody
	@RequestMapping(value = "/noticeinsert", method = RequestMethod.POST) //공지사항 입력
	public NoticeVO noticeinsert(NoticeVO vo, Model model, HttpServletRequest request) throws IllegalStateException, IOException  {
		 seemoomapper.noticeinsert(vo);
		 vo = seemoomapper.noticeselect(vo);
		 return vo;
	}
	
	@ResponseBody
	@RequestMapping(value = "/noticedelete/{n_no}", method = RequestMethod.DELETE) // 공지사항 페이지 (삭제)
	public NoticeVO noticedelete(@PathVariable String n_no,NoticeVO vo, Model model) {
		seemoomapper.noticedelete(vo);
		return vo;
	}
//  -------------------------------------------------------------------------------------------------------------
	
	@RequestMapping(value = "/notice") //공지사항 리스트페이지(메인페이지)
	public String notice(Model model, NoticeVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("notice", seemoomapper.noticeList());
		return "a/seemoo/notice";
	}
	
	@RequestMapping(value = "/noticeView") //공지사항 뷰페이지(메인페이지)
	public String noticeView(NoticeVO vo, NboardVO nvo, Model model) {
		model.addAttribute("noticeView", seemoomapper.noticeselect(vo));
		model.addAttribute("nboardselect", seemoomapper.nboardselect(nvo));
		return "a/seemoo/noticeView";
	}
	
//	@RequestMapping(value = "/noticeselect/{n_no}", method = RequestMethod.GET) //(단건조회)
//	@ResponseBody
//	public NoticeVO noticeselect(@PathVariable String n_no, NoticeVO vo, NboardVO nvo, Model model) {
//		vo.setN_no(n_no);
//		model.addAttribute("nboardselect", seemoomapper.nboardselect(nvo));
//		return seemoomapper.noticeselect(vo);	
//	}
	
//  -------------------------------------------------------------------------------------------------------------
	
	// 공지 댓글 등록 처리
		@RequestMapping("/nboardinsert")
		public String nboardinsert(NboardVO vo) {
			seemoomapper.nboardinsert(vo);   
			return "redirect:/noticeView?n_no=" + vo.getN_no() ; 
		}
		
	// 공지 댓글 삭제 처리
		@RequestMapping("/nboarddelete")
		public String nboarddelete(NboardVO vo) {
			seemoomapper.nboarddelete(vo);
			return "redirect:/noticeView?n_no=" + vo.getN_no() ; 
		}
		
//	====================================================리뷰======================================================

	@ResponseBody
	@RequestMapping(value = "/review/ajax", method = RequestMethod.GET) // 리뷰 페이지(ajax)
	public List<ReviewVO> reviewlist(Model model, ReviewVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.reviewList();
	}
	
	@RequestMapping(value = "/admin/review", method = RequestMethod.GET) // 개인리뷰 페이지(전체조회)
	public String review(Model model, ReviewVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("reviews", seemoomapper.reviewList());
		return "seemoo/review";
	}
	
	@RequestMapping("/admin/teamreview") // 팀리뷰 페이지(전체조회)
	public String teamreview() {
		return "seemoo/teamreview";
	}
	
	@RequestMapping("/admin/reviewerite") // 개인리뷰 작성
	public String reviewerite() {
		return "seemoo/reviewerite";
	}
	
	@RequestMapping("/admin/teamreviewerite") // 팀리뷰 작성
	public String teamreviewerite() {
		return "seemoo/teamreviewerite";
	}
	
//	============================================================================================================================
	
	@RequestMapping(value = "/admin/match") //매치 페이지
	public String match(Model model, P_matchVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("match", seemoomapper.matchList(vo));
		return "seemoo/match";
	}
	
	@RequestMapping("/matchdelete")
	public String matchdelete(P_matchVO vo) {
		seemoomapper.matchdelete(vo);
		return "redirect:/match?m_no=" + vo.getM_no(); 
	}
	
	@RequestMapping(value = "/admin/field") // 경기장관리 페이지
	public String field(Model model, FieldVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		model.addAttribute("field", seemoomapper.fieldList());
		return "seemoo/field";
	}
	
	@RequestMapping(value = "/field/ajax", method = RequestMethod.GET) // 경기장관리 페이지 (ajax로 전체조회)
	@ResponseBody	
	public List<FieldVO> fieldlist(Model model, FieldVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return seemoomapper.fieldList();
	}
	
	@RequestMapping(value = "/admin/fieldinfo", method = RequestMethod.GET) // 경기장관리 페이지 (단건조회)
	@ResponseBody
	public FieldVO fieldselect(Model model, FieldVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		return  seemoomapper.fieldselect(vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/fielddelete/{f_id}", method = RequestMethod.GET) // 경기장관리 페이지 (삭제)
	public FieldVO fielddelete(@PathVariable String f_id, FieldVO vo, Model model) {
		seemoomapper.fielddelete(vo);
		return vo;
	}
	
//	@ResponseBody
//	@RequestMapping(value = "/userdelete", method = RequestMethod.GET) // 유저관리 페이지 (삭제)
//	public MembersVO usersdelete(MembersVO vo) {
//		seemoomapper.membersdelete(vo);
//		return vo;
//	}
//  -------------------------------------------------------------------------------------------------------------

	@RequestMapping("/admin/sales") // 매출수익통계 페이지
	public String sales() {
		return "seemoo/sales";
	}

	@RequestMapping("/admin/point") // 쿠폰&포인트 관리페이지(김도은)
	public String point() {
		return "seemoo/point";
	}
	
	@RequestMapping("/admin/tournament") // 토너먼트 페이지
	public String tournament() {
		return "seemoo/tournament";
	}

	@RequestMapping("/admin/community") // 커뮤니티 페이지
	public String community() {
		return "seemoo/community";
	}
	
	@RequestMapping("/admin/aa") // 커뮤니티 페이지
	@ResponseBody
	public List<FwboardVO> aa(Model model, FwboardVO vo, HttpServletRequest request, HttpServletResponse reponse) {
		vo.setNum(request.getParameter("num"));
		return seemoomapper.rcommList(vo);
	}
	
	@RequestMapping("/blackCancle") //블랙 권한 취소
	public String blackCancle(TeamVO teamVO){
		hyendongmapper.blackCancle(teamVO);
		return "redirect:admin/blackteam";
	}
	

	
}

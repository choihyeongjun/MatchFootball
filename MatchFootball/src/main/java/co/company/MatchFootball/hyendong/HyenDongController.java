package co.company.MatchFootball.hyendong;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import co.company.MatchFootball.mapper.HyendongMapper;
import co.company.MatchFootball.mapper.HyeongjunMapper;
import co.company.MatchFootball.vo.ComeInviteVO;
import co.company.MatchFootball.vo.FieldmanagerVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.Paging;
import co.company.MatchFootball.vo.TeamVO;
import co.company.MatchFootball.vo.TeamlistVO;
import co.company.MatchFootball.vo.TeammatchVO;
import co.company.MatchFootball.vo.TgalleryVO;
import co.company.MatchFootball.vo.TinviteVO;
import co.company.MatchFootball.vo.TnoticeVO;
import co.company.MatchFootball.vo.TournamentTeamVO;
import co.company.MatchFootball.vo.TournamentVO;
import co.company.MatchFootball.vo.WriterVO;

@Controller
public class HyenDongController {
	@Autowired
	HyendongMapper hyendongMapper;
	HyeongjunMapper dao;
		
	@RequestMapping("/mainmenu")
	public String mainMenu(HttpSession session, MembersVO membersVO) {
		membersVO = hyendongMapper.scoutInvite(membersVO);
		session.setAttribute("scout", membersVO.getSel());
		System.out.println(membersVO.getSel());
		return "";
	}

	// 팀생성
	@RequestMapping("/teamMake")
	public String teamMake(HttpServletRequest request, TeamVO teamVO, MembersVO membersVO, HttpSession session,
			Model model) {
		String id = (String) session.getAttribute("id");
		membersVO.setId(id);
		model.addAttribute("member", hyendongMapper.memberSelect(membersVO));
		membersVO = hyendongMapper.scoutInvite(membersVO);
		session.setAttribute("scout", membersVO.getSel());
		return "hyendong/teamMake";
	}

	// 팀생성처리
	@RequestMapping("/teamMakeInsert")
	public String insert(HttpServletRequest request, TeamVO teamVO, MembersVO membersVO, HttpSession session,
			Model model, TeamlistVO teamlistVO) {
		// request miltipart로 캐스팅
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 이미지파일
		MultipartFile multipartFile = multipartRequest.getFile("file"); // input타입의 name값
		if (!multipartFile.isEmpty() && multipartFile.getSize() > 0) {
			try {
				String path = request.getSession().getServletContext().getRealPath("/images"); // /images폴더 위치 mvc에 추가
				System.out.println("pp" + path);
				multipartFile.transferTo(new File(path, multipartFile.getOriginalFilename()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			teamVO.setT_logo(multipartFile.getOriginalFilename());
		}
		String id = (String) session.getAttribute("id"); // 세션 id 들고와서
		membersVO.setId(id); // 아이디 vo에 담고
		model.addAttribute("member", hyendongMapper.memberSelect(membersVO)); // 전체멤버 조회하는거 member 객체 생성

		if(teamVO.getT_hidden() == null) {
			teamVO.setT_hidden("N");
		}
		hyendongMapper.teamInsert(teamVO); // 팀 생성 처리하면 팀vo에 팀 정보 담음
		membersVO.setT_num(teamVO.getT_num()); // 팀 번호를 멤버vo의 팀 num에 넣음
		hyendongMapper.tNumUpdate(membersVO); // 팀 번호 변경 처리하고 멤버vo에 담음
		teamlistVO.setId(id);
		teamlistVO.setT_num(teamVO.getT_num());
		teamlistVO.setT_author("팀장");
		hyendongMapper.teamListInsert(teamlistVO); // 팀 만든 사람 정보 팀 리스트에 추가
		session.setAttribute("t_num", membersVO.getT_num());
		return "redirect:/teamInfo?t_num=" + teamVO.getT_num();
	}

	// 팀정보
	@RequestMapping("/teamInfo")
	public String teamInfo(Model model, TeamVO teamVO, MembersVO membersVO, HttpSession session, TeamlistVO teamlistVO,
			TinviteVO tinviteVO, Paging paging) {
		String id = (String) session.getAttribute("id");
		membersVO.setId(id);
		model.addAttribute("members", hyendongMapper.memberSelect(membersVO)); // 멤버 단건 조회
		model.addAttribute("teamInfo", hyendongMapper.getTeam(teamVO));
		paging.setPageUnit(10);
		paging.setPageSize(5);
		teamlistVO.setFirst(paging.getFirst());
		teamlistVO.setLast(paging.getLast());
		paging.setTotalRecord(hyendongMapper.getCount2(teamlistVO));
		model.addAttribute("teamMembers", hyendongMapper.getTeamMembers(teamlistVO));
		model.addAttribute("paging", paging);
		teamlistVO.setId(id);
		model.addAttribute("updateButton", hyendongMapper.getTeamMemberss(teamlistVO));
		String idd = (String) session.getAttribute("id");
		membersVO.setId(idd);
		model.addAttribute("hh", hyendongMapper.memberTnum(membersVO));
		tinviteVO.setId(idd);
		model.addAttribute("where", hyendongMapper.whereJoin(tinviteVO));
		model.addAttribute("count", hyendongMapper.selectCount(teamlistVO));
		model.addAttribute("avgAge", hyendongMapper.avgAge(membersVO));
		return "hyendong/teamInfo";
	}

	// 팀원 추방
	@RequestMapping("/memberOut")
	public String memberOut(Model model, TeamVO teamVO, MembersVO membersVO, HttpSession session,
			TeamlistVO teamlistVO) {
		hyendongMapper.teamMemberOut(teamlistVO);
		membersVO.setId(teamlistVO.getId());
		model.addAttribute("members", hyendongMapper.memberSelect(membersVO)); // 멤버 단건 조회
		hyendongMapper.tNumNullUpdate(membersVO);
		String tNum = (String) session.getAttribute("t_num");
		membersVO.setT_num(tNum);
		return "redirect:/teamInfo?t_num=" + membersVO.getT_num();
	}

	// 팀 가입하기
	@RequestMapping("/teamlistInsert")
	public String teamlistInsert(Model model, TeamVO teamVO, MembersVO membersVO, HttpSession session,
			TeamlistVO teamlistVO) {
		String id = (String) session.getAttribute("id");
		membersVO.setId(id);
		model.addAttribute("members", hyendongMapper.memberSelect(membersVO)); // 멤버 단건 조회
		model.addAttribute("teamInfo", hyendongMapper.getTeam(teamVO));
		model.addAttribute("teamMembers", hyendongMapper.getTeamMembers(teamlistVO));
		teamlistVO.setId(id);
		teamlistVO.setT_num(teamVO.getT_num());
		teamlistVO.setT_author("팀원");
		hyendongMapper.teamListInsert(teamlistVO);
		hyendongMapper.tNumUpdate(membersVO);
		return "redirect:/teamInfo?t_num=" + teamVO.getT_num();
	}

	// 팀수정
	@RequestMapping("/teamUpdate")
	public String teamUpdate(Model model, TeamVO teamVO) {
		model.addAttribute("teamUpdate", hyendongMapper.getTeam(teamVO));
		return "hyendong/teamUpdate";
	}

	// 팀수정처리
	@RequestMapping(value = "/teamUpdateUpdate")
	public String teamUpdateUpdate(HttpServletRequest request, Model model, TeamVO teamVO) {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 이미지파일
		MultipartFile multipartFile = multipartRequest.getFile("file"); // input타입의 name값 : uploadFile
		if (!multipartFile.isEmpty() && multipartFile.getSize() > 0) {
			try {
				String path = request.getSession().getServletContext().getRealPath("/images"); // /images폴더 위치 mvc에 추가
				System.out.println("pp" + path);
				multipartFile.transferTo(new File(path, multipartFile.getOriginalFilename()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			teamVO.setT_logo(multipartFile.getOriginalFilename());
		}
		if(teamVO.getT_hidden() == null) {
			teamVO.setT_hidden("N");
		}
		hyendongMapper.teamUpdate(teamVO);
		return "redirect:/teamInfo?t_num=" + teamVO.getT_num();
	}

	// 팀갤러리
	@RequestMapping("/teamGallery")
	public String teamGallery(Model model, TgalleryVO tgalleryVO, MembersVO membersVO, HttpSession session,
			TeamVO teamVO, Paging paging) {
		String id = (String) session.getAttribute("id");
		membersVO.setId(id);
		model.addAttribute("member", hyendongMapper.memberSelect(membersVO));
		model.addAttribute("teamInfo", hyendongMapper.getTeam(teamVO));
		paging.setPageUnit(8);
		paging.setPageSize(5);
		tgalleryVO.setFirst(paging.getFirst());
		tgalleryVO.setLast(paging.getLast());
		paging.setTotalRecord(hyendongMapper.getCount4(tgalleryVO));
		model.addAttribute("teamGallery", hyendongMapper.picSelect(tgalleryVO));
		model.addAttribute("paging", paging);
		return "hyendong/teamGallery";
	}

	// 팀갤러리 등록 처리
	@RequestMapping("/teamGalleryInsert")
	public String teamGallery(HttpServletRequest request, Model model, TgalleryVO tgalleryVO, MembersVO membersVO,
			HttpSession session, TeamVO teamVO) {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 이미지파일
		MultipartFile multipartFile = multipartRequest.getFile("file"); // input타입의 name값 : uploadFile
		if (!multipartFile.isEmpty() && multipartFile.getSize() > 0) {
			try {
				String path = request.getSession().getServletContext().getRealPath("/images"); // /images폴더 위치 mvc에 추가
				System.out.println("pp" + path);
				multipartFile.transferTo(new File(path, multipartFile.getOriginalFilename()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			tgalleryVO.setImg(multipartFile.getOriginalFilename());
		}
		String id = (String) session.getAttribute("id");
		membersVO.setId(id);
		model.addAttribute("member", hyendongMapper.memberSelect(membersVO));
		model.addAttribute("teamInfo", hyendongMapper.getTeam(teamVO));

		hyendongMapper.picInsert(tgalleryVO);
		return "redirect:/teamGallery?t_num=" + teamVO.getT_num();
	}

	// 팀공지
	@RequestMapping("/teamNotice")
	public String teamNotice(Model model, TnoticeVO tNoticeVO, HttpSession session, TeamlistVO teamlistVO,
			TeamVO teamVO) {
		model.addAttribute("teamNotice", hyendongMapper.NoticeSelect(tNoticeVO));
		String id = (String) session.getAttribute("id");
		teamlistVO.setId(id);
		model.addAttribute("teamInfo", hyendongMapper.getTeam(teamVO));
		model.addAttribute("updateButton", hyendongMapper.getTeamMemberss(teamlistVO));
		return "hyendong/teamNotice";
	}

	// 팀 공지 확인
	@RequestMapping("/teamNoticeInfo")
	public String teamNoticeInfo(Model model, TnoticeVO tNoticeVO, HttpSession session, TeamlistVO teamlistVO,
			TeamVO teamVO, WriterVO writerVO) {
		model.addAttribute("teamNoticeInfo", hyendongMapper.NoticeSelectInfo(tNoticeVO));
		String id = (String) session.getAttribute("id");
		teamlistVO.setId(id);
		model.addAttribute("teamInfo", hyendongMapper.getTeam(teamVO));
		model.addAttribute("updateButton", hyendongMapper.getTeamMemberss(teamlistVO));
		model.addAttribute("writer", hyendongMapper.writerSelect(writerVO));
		return "hyendong/teamNoticeInfo";
	}

	// 팀 공지 등록
	@RequestMapping("/teamNoticeInsert")
	public String teamNoticeInsert(HttpSession session, TeamVO teamVO, Model model) {
		model.addAttribute("teamInfo", hyendongMapper.getTeam(teamVO));
		return "hyendong/teamNoticeInsert";
	}

	// 팀 공지 등록 처리
	@RequestMapping("/teamNoticeInsertt")
	public String tNoticeInsert(TnoticeVO tNoticeVO) {
		hyendongMapper.NoticeInsert(tNoticeVO);
		return "redirect:/teamNoticeInfo?t_num=" + tNoticeVO.getT_num() + "&n_no=" + tNoticeVO.getN_no();
	}

	// 팀 공지 수정
	@RequestMapping("/teamNoticeUpdate")
	public String tNoticeUpdate(Model model, TnoticeVO tNoticeVO, HttpSession session, TeamlistVO teamlistVO,
			TeamVO teamVO) {
		model.addAttribute("teamNoticeInfo", hyendongMapper.NoticeSelectInfo(tNoticeVO));
		String id = (String) session.getAttribute("id");
		teamlistVO.setId(id);
		model.addAttribute("teamInfo", hyendongMapper.getTeam(teamVO));
		model.addAttribute("updateButton", hyendongMapper.getTeamMemberss(teamlistVO));
		return "hyendong/teamNoticeUpdate";
	}

	// 팀 공지 수정 처리
	@RequestMapping("/teamNoticeUpdatee")
	public String tNoticeUpdatee(TnoticeVO tNoticeVO) {
		hyendongMapper.NoticeUpdate(tNoticeVO);
		return "redirect:/teamNoticeInfo?t_num=" + tNoticeVO.getT_num() + "&n_no=" + tNoticeVO.getN_no();
	}

	// 팀 공지 삭제 처리
	@RequestMapping("/teamNoticeDelete")
	public String tNoticeDelete(TnoticeVO tNoticeVO) {
		hyendongMapper.NoticeDelete(tNoticeVO);
		return "redirect:/teamNotice?t_num=" + tNoticeVO.getT_num();
	}

	// 공지 댓글 등록 처리
	@RequestMapping("/writerInsert")
	public String noticeWriterInsert(WriterVO writerVO) {
		hyendongMapper.writerInsert(writerVO);
		return "redirect:/teamNoticeInfo?t_num=" + writerVO.getT_num() + "&n_no=" + writerVO.getN_no();
	}

	// 공지 댓글 등록 처리
	@RequestMapping("/writerDelete")
	public String noticeWriterDelete(WriterVO writerVO) {
		hyendongMapper.writerDelete(writerVO);
		return "redirect:/teamNoticeInfo?t_num=" + writerVO.getT_num() + "&n_no=" + writerVO.getN_no();
	}

	// 팀 초대
	@RequestMapping("/teamInvite")
	public String teamInvite(Model model, HttpSession session, TinviteVO tinviteVO, TeamlistVO teamlistVO,
			TeamVO teamVO, MembersVO membersVO, Paging paging, ComeInviteVO comeInviteVO) {
		String id = (String) session.getAttribute("id");
		tinviteVO.setId(id);
		teamlistVO.setId(id);
		model.addAttribute("updateButton", hyendongMapper.getTeamMemberss(teamlistVO));
		model.addAttribute("members", hyendongMapper.getMembers());
		String tNum = (String) session.getAttribute("t_num");
		teamVO.setT_num(tNum);
		model.addAttribute("tname", hyendongMapper.getTeam(teamVO));
		paging.setPageUnit(5);
		paging.setPageSize(10);
		tinviteVO.setFirst(paging.getFirst());
		tinviteVO.setLast(paging.getLast());
		paging.setTotalRecord(hyendongMapper.getCount3(tinviteVO));
		model.addAttribute("tinvite", hyendongMapper.teamInviteSelect(tinviteVO));
		model.addAttribute("paging", paging);
		comeInviteVO.setT_num(tNum);
		model.addAttribute("select2", hyendongMapper.inviteSelect2(comeInviteVO));
		return "hyendong/teamInvite";
	}

	// 팀장이 멤버 초대하는 처리
	@RequestMapping("/teamInviteStatus")
	public String teamInviteStatus(HttpSession session, TinviteVO tinviteVO) {
		String tNum = (String) session.getAttribute("t_num");
		tinviteVO.setId(tNum);
		return "teamInviteStatus";
	}

	// 팀 초대 처리 인바이트로
	@RequestMapping("/teamInviteInsert")
	public String teamInviteInsert(Model model, TeamVO teamVO, MembersVO membersVO, HttpSession session,
			TinviteVO tinviteVO) {
		String id = (String) session.getAttribute("id");
		membersVO.setId(id);
		model.addAttribute("members", hyendongMapper.memberSelect(membersVO)); // 멤버 단건 조회
		hyendongMapper.teamInvite(tinviteVO);
		return "redirect:/teamInfo?t_num=" + teamVO.getT_num();
	}

	// 팀 초대 승락
	@RequestMapping("/teamListInsert")
	public String teamListInsert(TeamlistVO teamlistVO, TeamVO teamVO, Model model, MembersVO membersVO,
			HttpSession session, TinviteVO tinviteVO) {
		model.addAttribute("member", hyendongMapper.memberSelect(membersVO)); // 전체멤버 조회하는거 member 객체 생성
		hyendongMapper.teamListInsert(teamlistVO);
		membersVO.setId(teamlistVO.getId());
		hyendongMapper.tNumUpdate(membersVO);
		hyendongMapper.teamInviteDelete(tinviteVO);
		return "redirect:/teamInvite?t_num=" + teamVO.getT_num();
	}

	// 팀 초대 거절
	@RequestMapping("/teamInviteDelete")
	public String teamInviteDelete(TinviteVO tinviteVO, TeamVO teamVO) {
		hyendongMapper.teamInviteDelete(tinviteVO);
		return "redirect:/teamInvite?t_num=" + teamVO.getT_num();
	}

	// 팀 초대 취소
	@RequestMapping("/teamInviteCancle")
	public String teamInviteCancle(TinviteVO tinviteVO, TeamVO teamVO) {
		hyendongMapper.teamInviteDelete(tinviteVO);
		return "redirect:/teamInfo?t_num=" + teamVO.getT_num();
	}

	// 팀 탈퇴
	@RequestMapping("/teamListOut")
	public String teamListOut(TeamlistVO teamlistVO, MembersVO membersVO, HttpSession session) {
		String id = (String) session.getAttribute("id");
		membersVO.setId(id);
		hyendongMapper.memberSelect(membersVO); // 멤버 단건 조회
		teamlistVO.setId(membersVO.getId());
		hyendongMapper.teamListOut(teamlistVO);
		hyendongMapper.tNumNullUpdate(membersVO);

		return "redirect:/teamInfo?t_num=" + membersVO.getT_num();
	}

	@ResponseBody
	@RequestMapping(value = "/teamInvite/ajax")
	public List<MembersVO> ajaxMembers(Model model) {
		return hyendongMapper.getMembers();
	}

	// 팀 매치 내역 페이지
	@RequestMapping("/teamMatchList")
	public String teamMatchList(Model model, TeammatchVO teammatchVO, HttpSession session, TeamlistVO teamlistVO) {
		String tNum = (String) session.getAttribute("t_num");
		String id = (String) session.getAttribute("id");
		teammatchVO.setT_num(tNum);
		model.addAttribute("match", hyendongMapper.teamMatchWait(teammatchVO));
		teammatchVO.setSo_num(tNum);
		model.addAttribute("match2", hyendongMapper.teamMatchVS(teammatchVO));
		teamlistVO.setT_num(tNum);
		teamlistVO.setId(id);
		model.addAttribute("author", hyendongMapper.getTeamMemberss(teamlistVO));
		return "hyendong/teamMatchList";
	}

	// 팀 매치 삭제 처리
	@RequestMapping("/teamMatchDelete")
	public String teamMatchDelete(TeammatchVO teammatchVO) {
		hyendongMapper.teamMatchDelete(teammatchVO);
		return "redirect:/teamMatchList";
	}

	// 팀 초대 현황 페이지
	@RequestMapping("/teamMatchStatus")
	public String teamMatchStatus(ComeInviteVO comeInviteVO, Model model, HttpSession session, MembersVO membersVO) {
		String id = (String) session.getAttribute("id");
		comeInviteVO.setId(id);
		model.addAttribute("select", hyendongMapper.inviteSelect(comeInviteVO));
		membersVO.setId(id);
		model.addAttribute("members", hyendongMapper.memberSelect(membersVO));
		return "hyendong/teamMatchStatus";
	}

	// 팀 초대 하기 처리
	@RequestMapping("/inviteComeon")
	public String inviteComeon(ComeInviteVO comeInviteVO, TeamVO teamVO, HttpSession session) {
		String tNum = (String) session.getAttribute("t_num");
		teamVO.setT_num(tNum);
		hyendongMapper.teamInviteStatus(comeInviteVO);
		return "redirect:/teamInvite?t_num=" + teamVO.getT_num();
	}

	// 팀 초대 수락 처리
	@RequestMapping("/inviteOk")
	public String inviteOk(ComeInviteVO comeInviteVO, TeamlistVO teamlistVO, MembersVO membersVO, HttpSession session) {
		hyendongMapper.teamListInsert(teamlistVO);
		membersVO.setId(teamlistVO.getId());
		hyendongMapper.tNumUpdate(membersVO);
		hyendongMapper.invitePass(comeInviteVO);
		session.setAttribute("t_num", membersVO.getT_num());
		return "redirect:/teamMatchStatus";
	}

	// 팀 초대 거절 처리
	@RequestMapping("/invitePass")
	public String invitePass(ComeInviteVO comeInviteVO) {
		hyendongMapper.invitePass(comeInviteVO);
		return "redirect:/teamMatchStatus";
	}

	// 전체 팀 보기
	@RequestMapping(value = "/teamList")
	public String teamList(Model model, Paging paging, TeamVO teamVO, HttpServletResponse response,
			HttpServletRequest request, HttpSession session, MembersVO membersVO, TeamlistVO teamlistVO) {
		paging.setPageUnit(5);
		paging.setPageSize(10);
		teamVO.setFirst(paging.getFirst());
		teamVO.setLast(paging.getLast());
		paging.setTotalRecord(hyendongMapper.getCount1(teamVO));
		model.addAttribute("teamList", hyendongMapper.teamListSelect(teamVO)); // 페이징할때 VO 받아와야함
		model.addAttribute("paging", paging);
		String id = (String) session.getAttribute("id");
		membersVO.setId(id);
		model.addAttribute("member", hyendongMapper.memberSelect(membersVO));
		membersVO = hyendongMapper.scoutInvite(membersVO);
		session.setAttribute("scout", membersVO.getSel());
		return "hyendong/teamList";
	}

	// 토너먼트 생성
	@RequestMapping("/tournamentInsert")
	public String tournamentInsert() {
		return "seemoo/tournament";
	}

	// 토너먼트 생성처리
	@RequestMapping("/admin/tournamentInsertt")
	public String tournamentInsertt(TournamentVO tournamentVO, HttpServletRequest request) {
		// request miltipart로 캐스팅
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 이미지파일
		MultipartFile multipartFile = multipartRequest.getFile("file"); // input타입의 name값
		if (!multipartFile.isEmpty() && multipartFile.getSize() > 0) {
			try {
				String path = request.getSession().getServletContext().getRealPath("/images"); // /images폴더 위치 mvc에 추가
				System.out.println("pp" + path);
				multipartFile.transferTo(new File(path, multipartFile.getOriginalFilename()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			tournamentVO.setImg(multipartFile.getOriginalFilename());
		}
		hyendongMapper.tournament(tournamentVO);
		return "seemoo/tournament";
	}

	// 관리자 토너먼트 리스트
	@RequestMapping("/admin/tournamentList")
	public String adminTournamentList(Model model) {
		model.addAttribute("tournamentList", hyendongMapper.tournamentListSelect());
		return "seemoo/tournamentList";
	}

	// 토너먼트 리스트
	@RequestMapping("/tournamentList")
	public String tournamentList(Model model) {
		model.addAttribute("tournamentList", hyendongMapper.tournamentListSelect());
		return "hyendong/tournamentList";
	}

	// 토너먼트 상세
	@RequestMapping("/tournamentInfo")
	public String tournamentInfo(TeamVO teamVO, TournamentVO tournamentVO, MembersVO membersVO, HttpSession session,
			TeamlistVO teamlistVO, Model model, TournamentTeamVO tt) {
		model.addAttribute("tournamentTeam", hyendongMapper.getTournament(tournamentVO));
		String id = (String) session.getAttribute("id");
		String t_num = (String) session.getAttribute("t_num");
		membersVO.setId(id);
		model.addAttribute("members", hyendongMapper.memberSelect(membersVO)); // 멤버 단건 조회
		teamlistVO.setId(id);
		teamlistVO.setT_num(t_num);
		model.addAttribute("updateButton", hyendongMapper.getTeamMemberss(teamlistVO));

		String t_num2 = (String) session.getAttribute("t_num");
		teamVO.setT_num(t_num2);
		System.out.println(teamVO.getT_num());
		model.addAttribute("hh", hyendongMapper.joinTeamTournament(teamVO));
		model.addAttribute("count", hyendongMapper.selectCount(teamlistVO));
		return "hyendong/tournamentInfo";
	}

	// 토너먼트 상세
	@RequestMapping("/admin/tournamentInfo")
	public String adminTournamentInfo(TeamVO teamVO, TournamentVO tournamentVO, MembersVO membersVO,
			HttpSession session, TeamlistVO teamlistVO, Model model, TournamentTeamVO tt) {
		model.addAttribute("tournamentTeam", hyendongMapper.getTournament(tournamentVO));
		String id = (String) session.getAttribute("id");
		String t_num = (String) session.getAttribute("t_num");
		membersVO.setId(id);
		model.addAttribute("members", hyendongMapper.memberSelect(membersVO)); // 멤버 단건 조회
		teamlistVO.setId(id);
		teamlistVO.setT_num(t_num);
		model.addAttribute("updateButton", hyendongMapper.getTeamMemberss(teamlistVO));

		String t_num2 = (String) session.getAttribute("t_num");
		teamVO.setT_num(t_num2);
		System.out.println(teamVO.getT_num());
		model.addAttribute("hh", hyendongMapper.joinTeamTournament(teamVO));
		return "seemoo/tournamentInfo";
	}

	// 토너먼트 대진표
	@RequestMapping("/tournamentPVP")
	public String tournamentPVP(Model model, TournamentTeamVO tournamentTeamVO, TeamVO teamVO) {
		model.addAttribute("tournamentPVP", hyendongMapper.tournamentPVP(tournamentTeamVO));
		return "hyendong/tournamentPVP";
	}

	// 토너먼트 대진표
	@RequestMapping("/admin/tournamentPVP")
	public String adminTournamentPVP(Model model, TournamentTeamVO tournamentTeamVO, TeamVO teamVO) {
		model.addAttribute("tournamentPVP", hyendongMapper.tournamentPVP(tournamentTeamVO));
		return "seemoo/tournamentPVP";
	}

	// 토너먼트 참가 처리
	@RequestMapping("/teamTournaInsert")
	public String teamTournaInsert(TournamentTeamVO tournamentTeamVO, MembersVO membersVO, HttpSession session,
			TournamentVO tournamentVO) {
		hyendongMapper.teamTournaInsert(tournamentTeamVO);
		hyendongMapper.getTournament(tournamentVO);
		hyendongMapper.payTournament(membersVO);
		hyendongMapper.plusTournament(tournamentVO);
		return "redirect:/tournamentInfo?t_no=" + tournamentVO.getT_no();
	}

	// 8강 처리
	@ResponseBody
	@RequestMapping("/oneWin")
	public TournamentTeamVO oneWin(TournamentTeamVO tournamentTeamVO) {
		hyendongMapper.oneWin(tournamentTeamVO);
		return tournamentTeamVO;
	}

	// 4강 처리
	@ResponseBody
	@RequestMapping("/twoWin")
	public TournamentTeamVO twoWin(TournamentTeamVO tournamentTeamVO) {
		hyendongMapper.twoWin(tournamentTeamVO);
		return tournamentTeamVO;
	}

	// 결승 처리
	@ResponseBody
	@RequestMapping("/threeWin")
	public TournamentTeamVO threeWin(TournamentTeamVO tournamentTeamVO) {
		hyendongMapper.threeWin(tournamentTeamVO);
		return tournamentTeamVO;
	}

	// 토너먼트 상금 전달 처리
	@RequestMapping("/admin/winTournament")
	public String winTournament(MembersVO membersVO, TournamentVO tournamentVO) {
		hyendongMapper.getTournament(tournamentVO);
		hyendongMapper.winTournament(membersVO);
		return "redirect:/admin/tournamentPVP?t_no=" + tournamentVO.getT_no();
	}

	// 구장관리자 회원가입 폼
	@RequestMapping("/fieldRegister")
	public String fieldRegister() {
		return "hyendong/fieldRegister";
	}

	// 구장관리자 처리
	@RequestMapping("/fieldRegisterr")
	public String fieldRegisterr(FieldmanagerVO fieldmanagerVO) {
		int result = hyendongMapper.fmIdCheck(fieldmanagerVO);
		try {
			if(result == 1) {
				return "hyendong/fieldRegister";
			}else if(result==0) {
				hyendongMapper.fieldRegister(fieldmanagerVO);
				
			}} catch (Exception e) {
				throw new RuntimeException();
			}
		return "redirect:/";
	}
	
	// 구장관리자 로그인 처리
	@RequestMapping("/fieldLogin")
	public String fieldLogin(FieldmanagerVO fieldmanagerVO, HttpServletRequest req, HttpSession session) {
		fieldmanagerVO = hyendongMapper.fieldLogin(fieldmanagerVO);
		if (fieldmanagerVO != null) {
			session.setAttribute("id", fieldmanagerVO.getF_id());
			session.setAttribute("pw", fieldmanagerVO.getPw());
			session.setAttribute("name", fieldmanagerVO.getName());
			session.setAttribute("pnum", fieldmanagerVO.getPnum());
			session.setAttribute("point", fieldmanagerVO.getPoint());
			session.setAttribute("f","1");
			return "redirect:/match";
		} else {
			return "hyeongjun/login";
		}
	}
	
	// 구장관리자 아이디 중복체크
	@RequestMapping(value="/fmIdCheck", method = RequestMethod.POST)
	public int fmIdCheck(FieldmanagerVO fVO) {
		int result = hyendongMapper.fmIdCheck(fVO);
		return result;
	}
}

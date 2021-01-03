package co.company.MatchFootball.hyendong;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import co.company.MatchFootball.mapper.HyendongMapper;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.TeamVO;

@Controller
public class HyenDongController {
	@Autowired
	HyendongMapper hyendongMapper;
	
	//팀생성
	@RequestMapping("/teamMake")
	public String teamMake() {
		return "hyendong/teamMake";
	}
	//팀생성처리
	@PostMapping("/teamMakeInsert")
	public String insert(HttpServletRequest request, TeamVO teamVO) {
		// request miltipart로 캐스팅
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
		hyendongMapper.teamInsert(teamVO);
		return "hyendong/teamInfo";
	}
	//팀정보
	@RequestMapping("/teamInfo")
	public String teamInfo(Model model, TeamVO teamVO) {
		model.addAttribute("teamInfo", hyendongMapper.getTeam(teamVO));
		model.addAttribute("teamMembers", hyendongMapper.getTeamMembers(teamVO));
		model.addAttribute("members", hyendongMapper.getMembers());
		return "hyendong/teamInfo";
	}
	//팀수정
	@RequestMapping("/teamUpdate")
	public String teamUpdate(Model model, TeamVO teamVO) {
		model.addAttribute("teamUpdate", hyendongMapper.getTeam(teamVO));
		return "hyendong/teamUpdate";
	}
	//팀수정처리
	@RequestMapping(value="/teamUpdateUpdate")
	public String teamUpdateUpdate(Model model, TeamVO teamVO) {
		model.addAttribute("teamParameter", hyendongMapper.getTeam(teamVO));
		hyendongMapper.teamUpdate(teamVO);
		return "hyendong/teamInfo";
	}
	//팀갤러리
	@RequestMapping("/teamGallery")
	public String teamGallery() {
		return "hyendong/teamGallery";
	}
	//팀공지
	@RequestMapping("/teamNotice")
	public String teamNotice() {
		return "hyendong/teamNotice";
	}
	//팀 공지 확인
	@RequestMapping("/teamNoticeInfo")
	public String teamNoticeInfo() {
		return "hyendong/teamNoticeInfo";
	}
	//팀 공지 등록
	@RequestMapping("/teamNoticeInsert")
	public String teamNoticeInsert() {
		return "hyendong/teamNoticeInsert";
	}
	//팀 초대
	@RequestMapping("/teamInvite")
	public String teamInvite() {
		return "hyendong/teamInvite";
	}
	  @ResponseBody
	   @RequestMapping(value="/teamInvite/ajax")
	   public List<MembersVO>ajaxMembers(Model model){
	      return hyendongMapper.getMembers();
	   }
	//전체 팀 보기
	@RequestMapping(value="/teamList")
	public String teamList(Model model) {
		model.addAttribute("teamList", hyendongMapper.teamListSelect());
		return "hyendong/teamList";
	}
	//토너먼트 리스트
	@RequestMapping("/tournamentList")
	public String tournamentList(Model model) {
		model.addAttribute("tournamentList", hyendongMapper.tournamentListSelect());
		return "hyendong/tournamentList";
	}
	//토너먼트 상세
	@RequestMapping("/tournamentInfo")
	public String tournamentInfo(Model model) {
		model.addAttribute("tournamentList", hyendongMapper.tournamentListSelect());
		return "hyendong/tournamentInfo";
	}
	//토너먼트 대진표
	@RequestMapping("/tournamentPVP")
	public String tournamentPVP() {
		return "hyendong/tournamentPVP";
	}
}

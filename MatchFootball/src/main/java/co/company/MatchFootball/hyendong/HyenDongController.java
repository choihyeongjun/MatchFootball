package co.company.MatchFootball.hyendong;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.company.MatchFootball.mapper.HyendongMapper;

@Controller
public class HyenDongController {
	@Autowired
	HyendongMapper hyendongMapper;
	
	//팀생성
	@RequestMapping("/teamMake")
	public String teamMake() {
		return "hyendong/teamMake";
	}
	//팀정보
	@RequestMapping("/teamInfo")
	public String teamInfo() {
		return "hyendong/teamInfo";
	}
	//팀수정
	@RequestMapping("/teamUpdate")
	public String teamUpdate() {
		return "hyendong/teamUpdate";
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
	//전체 팀 보기
	@RequestMapping(value="/teamList")
	public String teamList(Model model) {
		model.addAttribute("teamList", hyendongMapper.teamListSelect());
		return "hyendong/teamList";
	}
	//토너먼트 리스트
	@RequestMapping("/tournamentList")
	public String tournamentList() {
		return "hyendong/tournamentList";
	}
	//토너먼트 상세
	@RequestMapping("/tournamentInfo")
	public String tournamentInfo() {
		return "hyendong/tournamentInfo";
	}
	//토너먼트 대진표
	@RequestMapping("/tournamentPVP")
	public String tournamentPVP() {
		return "hyendong/tournamentPVP";
	}
}

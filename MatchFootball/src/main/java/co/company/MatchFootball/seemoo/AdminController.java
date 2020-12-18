package co.company.MatchFootball.seemoo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("/admin") // 관리자 메인페이지
	public String admin() {
		return "seemoo/index";
	}

	@RequestMapping("/admin/user") // 유저관리 페이지
	public String user() {
		return "seemoo/user";
	}

	@RequestMapping("/admin/team") // 팀관리 페이지
	public String team() {
		return "seemoo/team";
	}

	@RequestMapping("/admin/manager") // 매니저관리 페이지
	public String manager() {
		return "seemoo/manager";
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

}

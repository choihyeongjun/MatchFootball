package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.BlackTeamListVO;
import co.company.MatchFootball.vo.ManagerapplyVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.NoticeVO;
import co.company.MatchFootball.vo.ReviewVO;
import co.company.MatchFootball.vo.TeamVO;

public interface SeemooMapper {

	public List<MembersVO> memberListmap();			// 유저(ajax) 전체조회
	public List<MembersVO> memberList();			// 유저 전체조회
	public MembersVO memberselect(MembersVO vo); 		// 유저 단건조회
	public int membersupdate(MembersVO vo); 		// 유저 수정
	public int membersdelete(MembersVO vo); 		// 유저 삭제

	public List<TeamVO> teamListmap(); 				// 팀(ajax) 전체조회
	public List<TeamVO> teamList(); 				// 팀 전체조회
	public TeamVO teamselect(TeamVO vo); 				// 팀 단건조회
	public int teamsupdate(TeamVO vo); 				// 팀 수정
	public int teamsdelete(TeamVO vo);				// 팀 삭제
	
	public List<TeamVO> blackteamList();	// 블랙팀 전체조회
	
	public List<BlackTeamListVO> blackteamList(BlackTeamListVO vo);	// 블랙팀 전체조회

	public List<MembersVO> managerList(); 			// 매니저(ajax) 전체조회
	public MembersVO managerselect(MembersVO vo); 		// 매니저 단건조회	
	
	public int managerupdate(MembersVO vo);			// 매니저 수정 X
	
	
	public List<ManagerapplyVO> managerapplyList(); // 매니저 승인|대기 전체조회
	
	
	public List<NoticeVO> noticeList(); 			// 공지사항조회
	public NoticeVO noticeselect(NoticeVO vo);		// 공지사항단건조회
	public int noticeinsert(NoticeVO vo);			// 공지사항입력
	public int noticedelete(NoticeVO vo); 			// 공지사항삭제
	public List<NoticeVO> noticeselect(); 
	
	public List<ReviewVO> reviewList();	// 리뷰조회
	public List<ReviewVO> review();
}

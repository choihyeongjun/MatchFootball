package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.BlackTeamListVO;
import co.company.MatchFootball.vo.ManagerapplyVO;
import co.company.MatchFootball.vo.ManagersVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.NoticeVO;
import co.company.MatchFootball.vo.TeamVO;

public interface SeemooMapper {

	public List<MembersVO> memberListmap();			// 유저(ajax) 전체조회
	public List<MembersVO> memberList();			// 유저 전체조회
	public MembersVO members(MembersVO mvo); 		// 유저 단건조회
	public MembersVO membersupdate(MembersVO vo); 	// 유저 수정
	public MembersVO membersdelete(MembersVO vo); 	// 유저 삭제

	public List<TeamVO> teamListmap(); 				// 팀(ajax) 전체조회
	public List<TeamVO> teamList(); 				// 팀 전체조회
	public TeamVO teams(TeamVO mvo); 				// 팀 단건조회
	public TeamVO teamsupdate(TeamVO vo); 			// 팀 수정
	public TeamVO teamsdelete(TeamVO vo);			// 팀 삭제
	
	public List<BlackTeamListVO> blackteamList(BlackTeamListVO vo);	// 블랙팀 전체조회
	
	public List<ManagersVO> managerList(); 			// 매니저(ajax) 전체조회
	public List<ManagerapplyVO> managerapplyList(); // 매니저 승인|대기 전체조회
	
	public List<NoticeVO> noticeList(); 			//조회
	public NoticeVO noticeinsert(NoticeVO vo);		//입력
	public NoticeVO noticedelete(NoticeVO vo); 		//삭제
}

package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.BlackTeamListVO;
import co.company.MatchFootball.vo.FieldVO;
import co.company.MatchFootball.vo.FwboardVO;
import co.company.MatchFootball.vo.ManagerapplyVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.NboardVO;
import co.company.MatchFootball.vo.NoticeVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.ReviewVO;
import co.company.MatchFootball.vo.TeamVO;

public interface SeemooMapper {

	public List<MembersVO> memberListmap();			// 유저(ajax) 전체조회
	public List<MembersVO> memberList();			// 유저 전체조회(용병X)
	
	public List<MembersVO> membersListmap();		// 유저(ajax) 전체조회
	public List<MembersVO> membersList();			// 유저 전체조회(용병)
	
	public MembersVO memberselect(MembersVO vo); 	// 유저 단건조회
	public int membersupdate(MembersVO vo); 		// 유저 수정
	public int membersdelete(MembersVO vo); 		// 유저 삭제
	
// ============================================================================================
	
	public List<TeamVO> teamListmap(); 				// 팀(ajax) 전체조회
	public List<TeamVO> teamList(); 				// 팀 전체조회
	public TeamVO teamselect(TeamVO vo); 			// 팀 단건조회
	
	public int teamsupdate(TeamVO vo); 				// 팀 수정
	
	public List<BlackTeamListVO> blackteamList(BlackTeamListVO vo);	// 블랙팀(ajax) 전체조회
	public List<TeamVO> blackteamList();							// 블랙팀 전체조회
	public int blackteamupdate(TeamVO vo); 							//블랙팀 권한수정
	public int teamsdelete(TeamVO vo);								// 블랙팀 삭제
	
// ============================================================================================
	
	public List<MembersVO> managerList(); 				// 매니저(ajax) 전체조회
	public MembersVO managerselect(MembersVO vo); 		// 매니저 단건조회	
	public int managerupdate(MembersVO vo);				// 매니저권한(정지) 줄 수정
	
	
	public List<ManagerapplyVO> managerapplyList(); 	// 매니저 승인|대기 전체조회
	
	public int managerapplyupdate(MembersVO vo);		// 매니저 권한 수정
	
	public List<MembersVO> stopmanagerList(); // 정지매니저
	
// ============================================================================================
	
	public List<NoticeVO> noticeList(); 					// 공지사항조회
	public List<NoticeVO> noticeList(NoticeVO noticeVO); 	// 유저 공지 조회
	public NoticeVO noticeselect(NoticeVO vo);				// 공지사항단건조회
	public int noticeinsert(NoticeVO vo);					// 공지사항입력
	public int noticedelete(NoticeVO vo); 					// 공지사항삭제
	public int noticeupdate(NoticeVO vo);					// 공지사항수정
	public List<NoticeVO> noticeselect(); 

// ============================================================================================
	
	public List<ReviewVO> reviewList();	// 리뷰조회
	public List<ReviewVO> review();
	
	public int nboardinsert(NboardVO vo); 			 	// 댓글 등록
	public List<NboardVO> nboardselect(NboardVO nvo);	// 댓글 조회
	public int nboarddelete(NboardVO vo);				// 댓글 삭제

	
// ============================================================================================

	public List<FwboardVO> rcommList(FwboardVO vo); // 조회
	public List<P_matchVO> matchList(P_matchVO vo); // 매치조회
	
	public List<FieldVO> fieldList(); 			// 경기장 전체조회
	public FieldVO fieldselect(FieldVO vo); 	// 경기장 단건조회
	public int fielddelete(FieldVO vo);			// 경기장 삭제
	
}

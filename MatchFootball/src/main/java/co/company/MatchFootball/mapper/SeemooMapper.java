package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.ManagerapplyVO;
import co.company.MatchFootball.vo.ManagersVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.TeamVO;

public interface SeemooMapper {

	public List<MembersVO> memberList(); // 유저 전체조회
	public List<MembersVO> memberListmap(); // 유저 전체조회//

	public MembersVO members(MembersVO mvo); // 유저 단건조회

	public List<TeamVO> teamList(); // 팀 전체조회
	public TeamVO teams(TeamVO mvo); // 팀 단건조회

	public List<ManagersVO> managerList(); // 매니저 전체조회
	public List<ManagerapplyVO> managerapplyList(); // 매니저 승인|대기 전체조회
	public boolean membersdelete(MembersVO vo);
}

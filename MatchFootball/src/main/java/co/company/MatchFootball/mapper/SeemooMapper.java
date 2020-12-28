package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.TeamVO;

public interface SeemooMapper {
	
	public List<MembersVO> memberList(); //유저 부분조회
	public MembersVO members(MembersVO vo); // 유저 단건조회
	
	
	public List<TeamVO> teamList(); //팀 부분조회
}

package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.TeamVO;
import co.company.MatchFootball.vo.TeamlistVO;
import co.company.MatchFootball.vo.TournamentVO;

public interface HyendongMapper {
	public List<TeamVO> teamListSelect(); //전체 팀 조회
	public List<MembersVO>getMembers(); //멤버 리스트 조회
	
	public List<TeamlistVO> getTeamMembers(TeamVO teamVO); //팀원 조회
	public int teamInsert(TeamVO teamVO); //팀 생성
	public TeamVO getTeam(TeamVO teamVO); //팀 단건 정보 조회
	public int teamUpdate(TeamVO teamVO); //팀 수정
	
	public List<TournamentVO> tournamentListSelect(); //토너먼트 리스트 조회
}

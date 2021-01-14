package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.ManageraplyVO;
import co.company.MatchFootball.vo.MatchMember;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.PlayersVO;
import co.company.MatchFootball.vo.PointVO;
import co.company.MatchFootball.vo.PplayersVO;
import co.company.MatchFootball.vo.TeamVO;
import co.company.MatchFootball.vo.TeamlistVO;
import co.company.MatchFootball.vo.TeammatchVO;

public interface SungjunMapper {

	public List<P_matchVO> pmatchselect(P_matchVO p_match);	
	public List<PointVO> pointconselect(PointVO pointvo);
	public List<P_matchVO> pmatchlist(P_matchVO p_match);
	public int getCount1(P_matchVO p_match);
	public MembersVO memberselect(MembersVO membersvo);
	public List<PointVO> pointallselect(PointVO p_point);
	public P_matchVO pmatchlist1(P_matchVO p_match);
	public List<MatchMember> matchmember(MatchMember matchmember);
	public int mapply(ManageraplyVO manageraply);
	public P_matchVO pmatchlist3(P_matchVO p_match);
		//	개인 매치 신청후 실행 쿼리 3개 //
	public int pointminus(MembersVO membersvo);
	public int matchapply(PplayersVO pplayers);
	public int pointcomm(PointVO pointvo);
	// 팀 매치 신청 쿼리//
	public int teammatchin(PlayersVO players);
	public int teammatchup(TeammatchVO teammatch);
	//해당 매니저  팀 경기 내역  //
	public List<TeammatchVO> tmatchlist(TeammatchVO t_match);
	// 해당 날 팀 매치 리스트 뽑기//
	public List<TeammatchVO> tmatchselect(TeammatchVO teammatch);
	//팀 조회
	public TeamVO teamselect(TeamVO teamvo);
	//해당 팀 매치 정보 
	public TeammatchVO teammatchinfo(TeammatchVO teammatch);
	//신청 팀 등록 선수 조회//
	public List<PlayersVO> playerselect(PlayersVO players);
	//팀장 조회
	public TeamlistVO capselect(TeamlistVO cap);
	//자기 팀 선수 조회
	public List<MembersVO> teamlist(MembersVO membersvo);
	//팀 매칭 신청자 팀 이름 조회
	public MembersVO teamname(MembersVO membersvo);
	//팀매치 등록
	public int teammatchRegi(TeammatchVO teammatch);
	//pplayers 참여 인원 조회
	public PplayersVO pplayersselect(PplayersVO pplayers);
	//로그인 한사람 포인트 조회
	public int pointssss(MembersVO membersvo);
	
	
}

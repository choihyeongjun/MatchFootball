package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.ManageraplyVO;
import co.company.MatchFootball.vo.MatchMember;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.PointVO;
import co.company.MatchFootball.vo.PplayersVO;
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
	public List<TeammatchVO> tmatchlist(TeammatchVO t_match);
	public P_matchVO pmatchlist3(P_matchVO p_match);
		//	개인 매치 신청후 실행 쿼리 3개 //
	public int pointminus(MembersVO membersvo);
	public int matchapply(PplayersVO pplayers);
	public int pointcomm(PointVO pointvo);
	
}

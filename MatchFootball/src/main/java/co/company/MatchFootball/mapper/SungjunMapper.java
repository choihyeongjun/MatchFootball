package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.PointVO;

public interface SungjunMapper {

	public List<P_matchVO> pmatchselect(P_matchVO p_match);	
	public List<PointVO> pointconselect(PointVO p_point);
	public List<P_matchVO> pmatchlist(P_matchVO p_match);
	public int getCount1(P_matchVO p_match);
	public MembersVO memberselect(MembersVO membersvo);
	public List<PointVO>  pointallselect(PointVO p_point);
	
}

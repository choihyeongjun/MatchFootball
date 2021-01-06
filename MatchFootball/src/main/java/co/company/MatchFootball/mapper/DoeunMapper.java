package co.company.MatchFootball.mapper;

import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.PointVO;

public interface DoeunMapper {
	public MembersVO getUser(MembersVO members);
	public int insertMem (MembersVO members);
	public int upMem(MembersVO mem);
	public PointVO selTpo(PointVO po);
}

package co.company.MatchFootball.mapper;

import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.MessageVO;
import co.company.MatchFootball.vo.PointVO;

public interface DoeunMapper {
	public MembersVO getUser(MembersVO members); // 멤버 정보 조회
	public int insertMem (MembersVO members);
	public int upMem(MembersVO mem);
	public PointVO selTpo(PointVO po);
	public MembersVO myPoint(MembersVO members);
	public int sendMsg(MessageVO msg);
	public MessageVO tomsgList(MessageVO msg);
}

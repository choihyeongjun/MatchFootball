package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.MessageVO;
import co.company.MatchFootball.vo.PointVO;
import co.company.MatchFootball.vo.TeamVO;

public interface DoeunMapper {
	public MembersVO getUser(MembersVO members); // 멤버 정보 조회
	public int insertMem (MembersVO members);
	public int upMem(MembersVO mem);
	public PointVO selTpo(PointVO po);
	public MembersVO myPoint(MembersVO members);
	public int sendMsg(MessageVO msg);
	public List<MessageVO> tomsgList(MessageVO msg);
	public int getCount1(MessageVO msg);
	public List<MessageVO> sendmsgList(MessageVO msg);
	public int getCount2(MessageVO msg);

}

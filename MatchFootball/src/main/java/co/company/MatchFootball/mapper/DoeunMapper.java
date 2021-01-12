package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.MessageVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.PointVO;

public interface DoeunMapper {
	public MembersVO getUser(MembersVO members); // 멤버 정보 조회
	public int insertMem (MembersVO members); //메세지 
	public int upMem(MembersVO mem); //회원 수정
	public List<PointVO> pointList(PointVO po); //포인트 사용 내역 조회
	public int getPoCnt(PointVO po); // 포인트 페이징
	public MembersVO myPoint(MembersVO members); //
	public int sendMsg(MessageVO msg); // 보낸 메세지 조회
	public List<MessageVO> tomsgList(MessageVO msg); //메세지함
	public int getCount1(MessageVO msg);
	public List<MessageVO> sendmsgList(MessageVO msg);
	public int getCount2(MessageVO msg);
	public MessageVO reviewMsg(MessageVO msg);
	public List<P_matchVO> p_matchedList(P_matchVO pmat);
	public int Pcharge(PointVO pay);
}

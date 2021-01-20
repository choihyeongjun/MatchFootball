package co.company.MatchFootball.mapper;

import java.util.List;
import java.util.Map;

import co.company.MatchFootball.vo.CuponVO;
import co.company.MatchFootball.vo.FboardVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.MessageVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.PointVO;
import co.company.MatchFootball.vo.TeammatchVO;

public interface DoeunMapper {
	public MembersVO getUser(MembersVO members); // 멤버 정보 조회
	public int insertMem (MembersVO members); //메세지 
	public int upMem(MembersVO mem); //회원 수정
	public List<PointVO> pointList(PointVO po); //포인트 사용 내역 조회
	public int getPoCnt(PointVO po); // 포인트 페이징
	public int sendMsg(MessageVO msg); // 보낸 메세지 조회
	public List<MessageVO> tomsgList(MessageVO msg); //메세지함
	public int getCount1(MessageVO msg); //수신 페이징
	public List<MessageVO> sendmsgList(MessageVO msg);
	public int getCount2(MessageVO msg); //발신 페이징
	public MessageVO viewMsg(MessageVO msg); // 받은 메세지 확인
	public void delMsg(MessageVO msg);//메세지 삭제
	public List<P_matchVO> AppPmatList(P_matchVO pmat);//개인 매치 신청 조회
	public List<P_matchVO> p_matchedList(P_matchVO pmat); // 개인매치이력 조회
	public int getPmatCnt(P_matchVO pmat);                                                                             
	public List<Map<String, Object>> AppTmatList(TeammatchVO tmat); //팀매치 신청 조회
	public int getTmatCnt(TeammatchVO tmat);
	public int Pcharge(PointVO pay); // 포인트 충전
	public int Autocpup(CuponVO cp);// 충전 시 쿠폰 자동 등록
	public List<CuponVO> selectCp(CuponVO cp); // 내 쿠폰 조회
	public int unusedCp(CuponVO cp);// 쿠폰 유효기간 경과시 사용불가로 변경
	public int Mchg(MessageVO msg);// 받은 메세지 확인 시 수신여부 변경
	public int Mypoint(PointVO point);//내 포인트 업데이트?
	public void delPMatchProc(P_matchVO pmat); // 프로시저
	public List<FboardVO> myWriteList(FboardVO mywt);//내가 쓴 글 조회
}

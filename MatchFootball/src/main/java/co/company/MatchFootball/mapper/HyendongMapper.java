package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.ComeInviteVO;
import co.company.MatchFootball.vo.InviteVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.TeamVO;
import co.company.MatchFootball.vo.TeamlistVO;
import co.company.MatchFootball.vo.TeammatchVO;
import co.company.MatchFootball.vo.TgalleryVO;
import co.company.MatchFootball.vo.TinviteVO;
import co.company.MatchFootball.vo.TnoticeVO;
import co.company.MatchFootball.vo.TournamentTeamVO;
import co.company.MatchFootball.vo.TournamentVO;

public interface HyendongMapper {
	public int getCount1(TeamVO teamVO); //페이징 count와 list는 매개 같아야함 /팀리스트 페이징
	public int getCount2(TeamlistVO teamlistVO); //팀원수 페이징
	public int getCount3(TinviteVO tinviteVO); //팀 초대 페이징
	public int getCount4(TgalleryVO tgalleryVO); //팀 사진 페이징
	
	public List<TeamVO> teamListSelect(TeamVO teamVO); //전체 팀 조회
	public List<MembersVO>getMembers(); //멤버 리스트 조회
	public TeamlistVO getTeamMemberss(TeamlistVO teamlistVO); //팀의 팀원들 조회
	public TeamlistVO selectCount(TeamlistVO teamlistVO); //팀원수 조회
	public MembersVO memberSelect(MembersVO membersVO); //멤버 단건 조회
	
	public List<TeamlistVO> getTeamMembers(TeamlistVO teamlistVO); //팀원 조회
	public int teamInsert(TeamVO teamVO); //팀 생성
	public TeamVO getTeam(TeamVO teamVO); //팀 단건 정보 조회
	public MembersVO myTeam(MembersVO membersVO); //마이 팀 정보 조회
	public int teamUpdate(TeamVO teamVO); //팀 수정
	public int teamInvite(TinviteVO tinviteVO); //팀 가입 신청
	public int teamListInsert(TeamlistVO teamlistVO); //팀 초대 승인
	public List<TinviteVO> teamInviteSelect (TinviteVO tinviteVO); //팀 초대 조회
	public int teamInviteDelete(TinviteVO tinviteVO); //팀 초대 거절
	public TinviteVO teamInviteSelectt(TinviteVO tinviteVO); //tinvite id 셀렉트
	public int tNumUpdate(MembersVO membersVO); //팀번호 변경
	public int tNumNullUpdate(MembersVO membersVO); //팀번호 널로 변경
	public int teamMemberOut(TeamlistVO teamlistVO); //팀원 추방
	public int teamListOut(TeamlistVO teamlistVO); //팀 탈퇴
	public MembersVO memberTnum(MembersVO membersVO); //멤버 팀 팀넘버 조인 조회
	public int countSelect(TeamVO teamVO);
	
	public int tournament(TournamentVO tournamentVO); //토너먼트 생성
	public List<TournamentVO> tournamentListSelect(); //토너먼트 리스트 조회
	public TournamentVO getTournament(TournamentVO tournamentVO); //토너먼트 정보 단건 조회
	public List<TournamentTeamVO> tournamentPVP(TournamentTeamVO tournamentTeamVO); //토너먼트 대진표 조회
	public int teamTournaInsert(TournamentTeamVO tournamentVO); //토너먼트 참가
	public int teamTournaCount(TournamentTeamVO tournamentVO); //토너먼트  팀 참가 수
	public int payTournament(MembersVO membersVO); //토너먼트 참가비 지불
	public int plusTournament(TournamentVO tournamentVO); //토너먼트 상금 플러스
	public TeamVO joinTeamTournament(TeamVO teamVO); //팀이랑 팀토너먼트 조인 조회
	
	public TeamVO idTeamSelect(MembersVO membersVO); //아이디의 소속된 팀 조회
	
	public int NoticeInsert(TnoticeVO tNoticeVO); //팀 공지 등록
	public List<TnoticeVO> NoticeSelect(TnoticeVO tNoticeVO); //팀 공지 조회
	public TnoticeVO NoticeSelectInfo(TnoticeVO tNoticeVO); //팀 공지 상세 조회
	public int NoticeUpdate(TnoticeVO tNoticeVO); //팀 공지 수정
	public int NoticeDelete(TnoticeVO tNoticeVO); //팀 공지 삭제
	
	public List<TgalleryVO> picSelect(TgalleryVO tgalleryVO); //팀 사진 조회
	public int picInsert(TgalleryVO tgalleryVO); //팀 사진 등록
	
	public TinviteVO whereJoin(TinviteVO tinviteVO); //어느팀에 가입신청 했는지 조회
	
	public int teamInviteStatus(ComeInviteVO comeInviteVO); //팀 초대 하기
	public List<ComeInviteVO> inviteSelect(ComeInviteVO comeInviteVO); //팀 초대온거 조회
	public List<ComeInviteVO> inviteSelect2(ComeInviteVO comeInviteVO);//팀장이 초대한거 조회
	public int invitePass(ComeInviteVO comeInviteVO); //팀 온거 거절
	
	public List<TeammatchVO> teamMatchWait(TeammatchVO teammatchVO); //팀매치 신청 내역
	public int teamMatchDelete(TeammatchVO teammatchVO); //팀매치 신청 삭제
	
	public MembersVO avgAge(MembersVO membersVO); //팀 평균 나이
	public MembersVO scoutInvite(MembersVO membersVO); //스카웃 테이블 있고없고 셀렉트
	
	public int oneWin(TournamentTeamVO tournamentTeamVO); //4강 진출 업뎃
	public int twoWin(TournamentTeamVO tournamentTeamVO); //결승 진출 업뎃
	public int threeWin(TournamentTeamVO tournamentTeamVO); //우승 업뎃
	public int winTournament(MembersVO membersVO); //우승자 포인트 업뎃
	
	public int blackCancle(TeamVO teamVO); //팀 블랙 권한 취소
	public TournamentTeamVO tournamentTeamCount(TournamentTeamVO tournamentTeamVO); //토너먼트 참가 팀 카운트
}

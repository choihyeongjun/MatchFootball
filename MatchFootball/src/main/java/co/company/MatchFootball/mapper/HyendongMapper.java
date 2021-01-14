package co.company.MatchFootball.mapper;

import java.util.List;

import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.TeamVO;
import co.company.MatchFootball.vo.TeamlistVO;
import co.company.MatchFootball.vo.TgalleryVO;
import co.company.MatchFootball.vo.TinviteVO;
import co.company.MatchFootball.vo.TnoticeVO;
import co.company.MatchFootball.vo.TournamentTeamVO;
import co.company.MatchFootball.vo.TournamentVO;

public interface HyendongMapper {
	public List<TeamVO> teamListSelect(TeamVO teamVO); //전체 팀 조회
	public int getCount1(TeamVO teamVO); //페이징 count와 list는 매개 같아야함
	public List<MembersVO>getMembers(); //멤버 리스트 조회
	public TeamlistVO getTeamMemberss(TeamlistVO teamlistVO);
	public TeamlistVO selectCount(TeamlistVO teamlistVO);
	public MembersVO memberSelect(MembersVO membersVO); //멤버 단건 조회
	
	public List<TeamlistVO> getTeamMembers(TeamVO teamVO); //팀원 조회
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
}

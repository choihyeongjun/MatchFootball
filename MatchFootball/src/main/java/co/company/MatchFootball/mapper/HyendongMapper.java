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
	public MembersVO memberSelect(MembersVO membersVO); //멤버 단건 조회
	
	public List<TeamlistVO> getTeamMembers(TeamVO teamVO); //팀원 조회
	public int teamInsert(TeamVO teamVO); //팀 생성
	public TeamVO getTeam(TeamVO teamVO); //팀 단건 정보 조회
	public MembersVO myTeam(MembersVO membersVO); //마이 팀 정보 조회
	public int teamUpdate(TeamVO teamVO); //팀 수정
	public int teamInvite(TinviteVO tinviteVO); //팀 가입 신청
	public int teamListInsert(TeamlistVO teamlistVO); //팀 가입 승인
	public TinviteVO teamInviteSelect (TinviteVO tinviteVO); //팀 가입 조회
	public int tNumUpdate(MembersVO membersVO); //팀번호 변경
	public int countSelect(TeamlistVO teamlistVO);
	
	public List<TournamentVO> tournamentListSelect(); //토너먼트 리스트 조회
	public TournamentVO getTournament(TournamentVO tournamentVO); //토너먼트 정보 단건 조회
	public List<TournamentTeamVO> tournamentPVP(TournamentTeamVO tournamentTeamVO); //토너먼트 대진표 조회
	
	public TeamVO idTeamSelect(MembersVO membersVO); //아이디의 소속된 팀 조회
	
	public int NoticeInsert(TnoticeVO tNoticeVO); //팀 공지 등록
	public List<TnoticeVO> NoticeSelect(TnoticeVO tNoticeVO); //팀 공지 조회
	public TnoticeVO NoticeSelectInfo(TnoticeVO tNoticeVO); //팀 공지 상세 조회
	public int NoticeUpdate(TnoticeVO tNoticeVO); //팀 공지 수정
	public int NoticeDelete(TnoticeVO tNoticeVO); //팀 공지 삭제
	
	public List<TgalleryVO> picSelect(TgalleryVO tgalleryVO); //팀 사진 조회
	public int picInsert(TgalleryVO tgalleryVO); //팀 사진 등록
}

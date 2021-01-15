package co.company.MatchFootball.mapper;

import java.util.List;
import java.util.Map;

import co.company.MatchFootball.vo.FboardVO;
import co.company.MatchFootball.vo.FieldVO;
import co.company.MatchFootball.vo.InviteVO;
import co.company.MatchFootball.vo.LikeitVO;
import co.company.MatchFootball.vo.MembernInvite;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.PlayersVO;
import co.company.MatchFootball.vo.RfieldVO;
import co.company.MatchFootball.vo.TeammatchVO;

public interface HyeongjunMapper {
public List<MembersVO>getbollowlist();
public InviteVO invitestore(Map param);
public MembersVO bollowsearch(MembersVO vo);
public FieldVO fieldinsert(FieldVO vo);
public MembersVO login(MembersVO vo);
public List<FieldVO> fieldlist();
public List<RfieldVO> fieldselect(RfieldVO vo);
public List<RfieldVO> fielddetailinsert(RfieldVO vo);
public List<FboardVO> fboardlist(FboardVO vo);
public List<RfieldVO> fielddetailupdate(RfieldVO vo);
public List<RfieldVO> fielddetailupdate1(RfieldVO vo);
public RfieldVO fielddetaildelete(RfieldVO vo);
public FboardVO freeinsert(FboardVO vo);
//public List<FboardVO> freelist();
public FboardVO freeselect(FboardVO vo);
public FboardVO freedelete(FboardVO vo);
public FboardVO freeupdate(FboardVO vo);
public FboardVO freecntupdate(FboardVO vo);
public LikeitVO heartinsert(LikeitVO vo);
public LikeitVO heartupdate(LikeitVO vo);
public InviteVO bollowinsert(InviteVO vo);
public List<InviteVO>invitelist(InviteVO vo);
public List<InviteVO>inviteselect(MembersVO vo);
public InviteVO deleteinvite();
public InviteVO updateinvite(InviteVO vo);
public InviteVO updateinvite1(InviteVO vo);
public List<TeammatchVO>selectmatch(TeammatchVO vo);
public MembernInvite playerinsert(MembernInvite vo);
public Map<String,Object> likecheck(Map<String,Object>map);
public FboardVO heartcntin(LikeitVO vo);
public FboardVO heartcntdn(LikeitVO vo);
public FboardVO heartdelete(LikeitVO vo);
public List<TeammatchVO> teammatchinsert(TeammatchVO vo);
public String fieldprice(String vo);
public String teamname(String vo);
public String mtnum(String vo);
public String fieldname(String vo);
public String fieldaddress(String vo);
public List<P_matchVO>pmatchinsert(P_matchVO vo);
}

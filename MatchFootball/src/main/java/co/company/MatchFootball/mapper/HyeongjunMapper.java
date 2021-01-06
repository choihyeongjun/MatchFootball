package co.company.MatchFootball.mapper;

import java.util.List;
import java.util.Map;

import co.company.MatchFootball.vo.FboardVO;
import co.company.MatchFootball.vo.FieldVO;
import co.company.MatchFootball.vo.InviteVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.RfieldVO;

public interface HyeongjunMapper {
public List<MembersVO>getbollowlist();
public InviteVO invitestore(Map param);
public MembersVO bollowsearch(MembersVO vo);
public FieldVO fieldinsert(FieldVO vo);
public MembersVO login(MembersVO vo);
public List<FieldVO> fieldlist();
public List<RfieldVO> fieldselect(RfieldVO vo);
public List<RfieldVO> fielddetailinsert(RfieldVO vo);
public List<FboardVO> fboardlist();
public List<RfieldVO> fielddetailupdate(RfieldVO vo);
public List<RfieldVO> fielddetailupdate1(RfieldVO vo);
public RfieldVO fielddetaildelete(RfieldVO vo);
public FboardVO freeinsert(FboardVO vo);
public List<FboardVO> freelist();
public FboardVO freeselect(FboardVO vo);
}

package co.company.MatchFootball.hyeongjun;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import co.company.MatchFootball.mapper.HyeongjunMapper;
import co.company.MatchFootball.mapper.SungjunMapper;
import co.company.MatchFootball.vo.FboardVO;
import co.company.MatchFootball.vo.FieldVO;
import co.company.MatchFootball.vo.InviteVO;
import co.company.MatchFootball.vo.LikeitVO;
import co.company.MatchFootball.vo.MembernInvite;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.MmatchlistVO;
import co.company.MatchFootball.vo.Mmatchlistnmember;
import co.company.MatchFootball.vo.MmatchnmatchVO;
import co.company.MatchFootball.vo.P_matchVO;
import co.company.MatchFootball.vo.PointVO;
import co.company.MatchFootball.vo.RfieldVO;
import co.company.MatchFootball.vo.TeammatchVO;

@Controller
public class HyeongjunController {

	@Autowired
	HyeongjunMapper hyeongjunMapper;
	@Autowired
	SungjunMapper dao;

	@ResponseBody
	@RequestMapping(value = "/bollow/ajax")
	public List<MembersVO> ajaxbollow(Model model) {
		return hyeongjunMapper.getbollowlist();
	}

	@ResponseBody
	@RequestMapping(value = "/bollowsearch/ajax")
	public List<InviteVO> ajaxbollowseach(Model model, MembersVO vo, InviteVO vo1, HttpSession session) {
		// vo1.setR_id(vo.getId());
		// vo1.setC_id((String) session.getAttribute("id"));
		hyeongjunMapper.bollowinsert(vo1);
		return hyeongjunMapper.invitelist(vo1);
	}

	@RequestMapping("/bollow")
	public String bollow(Model model, TeammatchVO vo, HttpSession session) {
		// model.addAttribute("list",hyeongjunMapper.getbollowlist());
		vo.setId((String) session.getAttribute("id"));
		model.addAttribute("matchlist", hyeongjunMapper.selectmatch(vo));
		return "hyeongjun/bollowlist";
	}

	@RequestMapping("/inviteselect") // 초대리스트
	public String inviteselect(Model model, MembersVO vo, HttpSession session) {

		vo.setId((String) session.getAttribute("id"));
		model.addAttribute("invite", hyeongjunMapper.inviteselect(vo));
		return "hyeongjun/invitelist";
	}

	@RequestMapping("/updateinvite/{c_id}/{t_num}/{m_no}") // 수락
	public String updateinvite(InviteVO vo, MembernInvite vo1, HttpSession session, @PathVariable String c_id,
			@PathVariable String t_num, @PathVariable String m_no) {
		vo.setR_id((String) session.getAttribute("id"));
		vo.setC_id(c_id);
		vo1.setT_num(t_num);
		vo1.setM_no(m_no);
		vo1.setId((String) session.getAttribute("id"));
		hyeongjunMapper.playerinsert(vo1);
		hyeongjunMapper.updateinvite(vo);
		return "redirect:/inviteselect";
	}

	@RequestMapping("/updateinvite1/{c_id}") // 거절
	public String updateinvite1(InviteVO vo, HttpSession session, @PathVariable String c_id) {
		vo.setR_id((String) session.getAttribute("id"));
		vo.setC_id(c_id);
		hyeongjunMapper.updateinvite(vo);
		hyeongjunMapper.updateinvite1(vo);
		return "redirect:/inviteselect";
	}

	@RequestMapping("/fieldcommit")
	public String userjoin(HttpServletRequest request, FieldVO vo) throws IllegalStateException, IOException {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 이미지 파일
		MultipartFile multipartFile = multipartRequest.getFile("uploadFile");

		if (!multipartFile.isEmpty() && multipartFile.getSize() > 0) {
			String path = request.getSession().getServletContext().getRealPath("/images");
			System.out.println("path=" + path);
			multipartFile.transferTo(new File(path, multipartFile.getOriginalFilename()));
			vo.setImg(multipartFile.getOriginalFilename());
		}
		hyeongjunMapper.fieldinsert(vo);
		return "hyeongjun/fieldlist";
	}

	@RequestMapping("/fieldinsert")
	public String fieldinsert() {
		return "hyeongjun/fieldcommit";
	}

	@ResponseBody
	@RequestMapping("/fielddetailmanagerlist")
	public List<Mmatchlistnmember> fielddetailmanagerlist(Mmatchlistnmember vo) {
		return hyeongjunMapper.matchmanagerlist(vo);
	}

	@ResponseBody
	@RequestMapping("/fielddetailinsert")
	public List<RfieldVO> fielddetailinsert(RfieldVO vo, Model model, MembersVO vo1, HttpSession session, PointVO vo2,
			HttpServletRequest request) {

		vo2.setP_con(vo.getType());
		vo2.setP_id(vo.getId());
		vo2.setNpoint("-" + vo.getPrice());
		System.out.println(vo2);
		hyeongjunMapper.pointinsert(vo2);
		vo.setM_no("1");
		vo1.setId(vo.getId());
		vo1.setPoint(vo.getPrice());
		hyeongjunMapper.mpointupdate(vo1);
		return hyeongjunMapper.fielddetailinsert(vo);
	}

	@ResponseBody
	@RequestMapping("/matchinsert")
	public RfieldVO matchinsert(TeammatchVO vo, RfieldVO vo1, Model model) {

		vo1.setBackgroundcolor(vo.getBackgroundcolor());
		vo1.setComm(vo.getM_info());
		vo1.setEndtime(vo.getM_hour());
		vo1.setF_id(vo.getF_id());
		vo1.setId(vo.getT_cap());
		vo1.setM_id(vo.getId());
		vo1.setStarttime(vo.getM_date());
		vo1.setTitle(vo.getTitle());
		vo1.setType(vo.getMtype());
		vo.setT_num(hyeongjunMapper.mtnum(vo.getT_cap()));
		vo.setF_name(hyeongjunMapper.fieldname(vo.getF_id()));
		vo.setT_name(hyeongjunMapper.teamname(hyeongjunMapper.mtnum((vo.getT_cap()))));
		vo.setF_address(hyeongjunMapper.fieldaddress(vo.getF_id()));
		hyeongjunMapper.teammatchinsert(vo);
		vo1.setM_no(vo.getM_no());
		hyeongjunMapper.fielddetailinsert(vo1);
		return vo1;
	}

	@ResponseBody
	@RequestMapping("/pmatchinsert")
	public boolean pmatchinsert(P_matchVO vo, RfieldVO vo1, Model model, HttpSession session) {
		vo.setF_name(hyeongjunMapper.fieldname(vo.getF_id()));
		vo.setF_address(hyeongjunMapper.fieldaddress(vo.getF_id()));
		hyeongjunMapper.pmatchinsert(vo);
		vo1.setBackgroundcolor(vo.getBackgroundcolor());
		vo1.setEndtime(vo.getM_hour());
		vo1.setF_id(vo.getF_id());
		vo1.setComm(vo.getM_info());
		vo1.setId((String) session.getAttribute("id"));
		vo1.setM_id(vo.getId());
		vo1.setStarttime(vo.getM_date());
		vo1.setTitle(vo.getTitle());
		vo1.setType(vo.getM_type());
		vo1.setM_no(vo.getM_no());
		hyeongjunMapper.fielddetailinsert(vo1);

		return true;
	}

	@RequestMapping("/fieldlist")
	public String fieldlist(Model model, FieldVO vo) {
		model.addAttribute("list", hyeongjunMapper.fieldlist());
		return "hyeongjun/fieldlist";
	}

	@RequestMapping("/fieldlist/fielddetail/{f_id}")
	public String fieldselect(@PathVariable String f_id, Model model, RfieldVO vo, HttpSession session,MembersVO vo1) {
		vo1.setId((String)session.getAttribute("id"));
		model.addAttribute("author",hyeongjunMapper.memauthor(vo1));
		session.setAttribute("field", f_id);
		System.out.println(hyeongjunMapper.fieldprice(f_id));
		model.addAttribute("price", hyeongjunMapper.fieldprice(f_id));
		model.addAttribute("f_id", f_id);
		model.addAttribute("list", hyeongjunMapper.fieldselect(vo));
		return "hyeongjun/fielddetail";
	}

	@ResponseBody
	@RequestMapping("/fieldselect")
	public List<RfieldVO> fielddetail(RfieldVO vo,Model model,HttpSession session) {
		return hyeongjunMapper.fieldselect(vo);
	}

	@ResponseBody
	@RequestMapping("/teammatchupdate")
	public int teammatchupdate(TeammatchVO vo, RfieldVO vo1, MmatchlistVO vo2) {
		vo1.setComm(vo.getM_info());
		vo1.setM_id(vo.getId());
		hyeongjunMapper.fielddetailupdate3(vo1);
		vo2.setId(vo.getId());
		vo2.setMatch_info(vo.getM_no());
		hyeongjunMapper.updatemmatch(vo2);
		return hyeongjunMapper.teammatchupdate(vo);
	}

	@ResponseBody
	@RequestMapping("/pmatchupdate")
	public int pmatchupdate(P_matchVO vo, RfieldVO vo1, MmatchlistVO vo2) {
		vo1.setM_no(vo.getM_no());
		vo1.setM_id(vo.getM_id());
		vo2.setId(vo.getM_id());
		vo2.setMatch_info(vo.getM_no());
		hyeongjunMapper.updatemmatch(vo2);
		hyeongjunMapper.fielddetailupdate3(vo1);

		return hyeongjunMapper.pmatchupdate(vo);
	}

	@RequestMapping("/free/freedetail/{num}/{cnt}")
	public String freeselect(@PathVariable String num, @PathVariable String cnt, Model model, FboardVO vo,
			HttpSession session) {
		vo.setNum(num);
		vo.setCnt(cnt);
		if (session.getAttribute("id") != null) {
			vo.setId((String) session.getAttribute("id"));
		}
		hyeongjunMapper.freecntupdate(vo);
		model.addAttribute("select", hyeongjunMapper.freeselect(vo));
		return "hyeongjun/freeread";
	}

	@RequestMapping("/free")
	public String freeboard(Model model, FboardVO vo, HttpSession session, HttpServletRequest request) {
		if(session.getAttribute("id")!=null) {
			vo.setId((String)session.getAttribute("id"));
		}

		if (request.getParameter("first") != null) {
			if (request.getParameter("first").equals("1")) {
				model.addAttribute("list", hyeongjunMapper.fboardlist1(vo));
				return "hyeongjun/freeboard";
			} else if (request.getParameter("first").equals("2")) {
				model.addAttribute("list", hyeongjunMapper.fboardlist2(vo));
				return "hyeongjun/freeboard";
			} else {
				model.addAttribute("list", hyeongjunMapper.fboardlist(vo));
				return "hyeongjun/freeboard";
			}
		} else {
			model.addAttribute("list", hyeongjunMapper.fboardlist(vo));
			return "hyeongjun/freeboard";
		}

	}

	@ResponseBody
	@RequestMapping("/likecheck/{clickstate}")
	public int likecheck(LikeitVO vo1, FboardVO vo, Model model, @PathVariable int clickstate) {
		Map<String, Object> idxMap = new HashMap<>();
		idxMap.put("id", vo.getId());
		idxMap.put("num", vo.getNum());
		vo1.setId(vo.getId());
		vo1.setNum(vo.getNum());

		Map<String, Object> likecheckMap = hyeongjunMapper.likecheck(idxMap);
		if (clickstate == 1) {
			if (likecheckMap == null) {
				vo1.setLikeit("1");
				hyeongjunMapper.heartinsert(vo1);
				hyeongjunMapper.heartcntin(vo1);
			} else {
				vo1.setLikeit("1");
				hyeongjunMapper.heartupdate(vo1);
				hyeongjunMapper.heartcntin(vo1);
			}
			// model.addAttribute("likecheck",1);
		} else {
			vo1.setLikeit("0");
			hyeongjunMapper.heartcntdn(vo1);
			hyeongjunMapper.heartdelete(vo1);
			// model.addAttribute("likecheck",0);
		}

		return clickstate;
	}

	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping("/login")
	public String loginpage() {
		return "hyeongjun/login";
	}

	@RequestMapping(value = "/logincheck")
	public String login(MembersVO vo, HttpServletRequest req, HttpSession session) {
		vo = hyeongjunMapper.login(vo);
		if (vo != null) {
			session.setAttribute("id", vo.getId());
			session.setAttribute("pw", vo.getPw());
			session.setAttribute("name", vo.getName());
			session.setAttribute("t_num", vo.getT_num());
			session.setAttribute("author", vo.getAuthor());
			session.setAttribute("point", vo.getPoint());
			MembersVO dd = dao.cappp(vo);
			if (dd != null) {
				session.setAttribute("cap", 1);
			}

			System.out.println(vo.getT_num());
			return "redirect:/match";
		} else {
			session.setAttribute("login", "아이디 또는 비밀번호가 맞지않습니다");
			return "hyeongjun/login";
		}
		// return "redirect:/sungjun/match";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {

		session.invalidate();
		return "home";
	}

	@RequestMapping("/invitelist")
	public String invitelist() {
		return "hyeongjun/invitelist";
	}

	@RequestMapping("/productlist")
	public String productlist() {
		return "hyeongjun/productlist";
	}

	@RequestMapping("/productdetail")
	public String productdetail() {
		return "hyeongjun/productdetail";
	}

	@RequestMapping("/bollow/invite")
	public String invitestore(Model model) {
		return "hyeongjun/bollow";
	}

	@RequestMapping("/bollow/invite/list")
	public void inviteinsert(Model model, InviteVO vo, HttpServletRequest req, HttpSession session) {
		Map param = new HashMap();
		param.put("title", req.getAttribute("title"));
		param.put("comm", req.getAttribute("comm"));
		param.put("id", session.getAttribute("id"));
		param.put("check1", "초대중..");
		hyeongjunMapper.invitestore(param);
	}

	@ResponseBody
	@RequestMapping("/fielddetailupdate")
	public List<RfieldVO> fieldupdate(RfieldVO vo) {
		return hyeongjunMapper.fielddetailupdate(vo);
	}

	@ResponseBody
	@RequestMapping("/fielddetailupdate1")
	public List<RfieldVO> fieldupdate1(RfieldVO vo) {
		return hyeongjunMapper.fielddetailupdate1(vo);
	}

	@ResponseBody
	@RequestMapping("/fielddetaildelete")
	public RfieldVO fielddetaildelete(RfieldVO vo) {
		return hyeongjunMapper.fielddetaildelete(vo);
	}

	@RequestMapping("/freewriter")
	public String freewriter() {
		return "hyeongjun/freeboardwrite";
	}

	@RequestMapping("/freeinsert")
	public String freeinsert(FboardVO vo, Model model) {
		hyeongjunMapper.freeinsert(vo);
		return "redirect:/free";
	}

	@RequestMapping("/freedelete")
	public String freedelete(FboardVO vo, Model model) {
		hyeongjunMapper.freedelete(vo);
		return "redirect:/free";
	}

	@RequestMapping("/freeupdate")
	public String freeupdate(FboardVO vo, Model model) {
		hyeongjunMapper.freeupdate(vo);
		return "redirect:/free";
	}

	@RequestMapping("/managerresult")
	public String managerresult(MmatchlistVO vo, MmatchnmatchVO vo1, Model model, HttpSession session) {
		List<MmatchlistVO> list = hyeongjunMapper.mmatchsearch((String) session.getAttribute("id"));
		for (MmatchlistVO v1 : list) {
			System.out.println(v1);
			vo1.setM_no(v1.getMatch_info());
			vo1.setId(v1.getId());
			if (hyeongjunMapper.teammatchsearch(v1.getMatch_info()) != null) {
				model.addAttribute("list", hyeongjunMapper.matchresult(vo1));
			} else {
				model.addAttribute("list", hyeongjunMapper.matchresult1(vo1));
			}
		}

		return "hyeongjun/managerresult";
	}

}
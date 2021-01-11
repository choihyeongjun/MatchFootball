package co.company.MatchFootball.hyeongjun;

import java.io.File;
import java.io.IOException;
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
import co.company.MatchFootball.vo.FboardVO;
import co.company.MatchFootball.vo.FieldVO;
import co.company.MatchFootball.vo.InviteVO;
import co.company.MatchFootball.vo.LikeitVO;
import co.company.MatchFootball.vo.MembersVO;
import co.company.MatchFootball.vo.RfieldVO;

@Controller
public class HyeongjunController {

	@Autowired
	HyeongjunMapper hyeongjunMapper;

	@ResponseBody
	@RequestMapping(value = "/bollow/ajax")
	public List<MembersVO> ajaxbollow(Model model) {
		return hyeongjunMapper.getbollowlist();
	}

	@ResponseBody
	@RequestMapping(value = "/bollowsearch/ajax")
	public List<InviteVO> ajaxbollowseach(Model model, MembersVO vo,InviteVO vo1,HttpSession session) {
	//	vo1.setR_id(vo.getId());
		//vo1.setC_id((String) session.getAttribute("id"));
		hyeongjunMapper.bollowinsert(vo1);
		return hyeongjunMapper.invitelist(vo1);
	}

	@RequestMapping("/bollow")
	public String bollow(Model model) {
		// model.addAttribute("list",hyeongjunMapper.getbollowlist());
		return "hyeongjun/bollowlist";
	}
	@RequestMapping("/inviteselect")
	public String inviteselect(Model model,MembersVO vo,HttpSession session) {
		
		vo.setId((String)session.getAttribute("id"));
		model.addAttribute("invite",hyeongjunMapper.inviteselect(vo));
		return "hyeongjun/invitelist";
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
	@RequestMapping("/fielddetailinsert")
	public List<RfieldVO> fielddetailinsert(RfieldVO vo, Model model) {
		return hyeongjunMapper.fielddetailinsert(vo);
	}

	@RequestMapping("/fieldlist")
	public String fieldlist(Model model, FieldVO vo) {
		model.addAttribute("list", hyeongjunMapper.fieldlist());
		return "hyeongjun/fieldlist";
	}

	@RequestMapping("/fieldlist/fielddetail/{f_id}")
	public String fieldselect(@PathVariable String f_id,Model model,RfieldVO vo) {
		model.addAttribute("f_id",f_id);
		model.addAttribute("list",hyeongjunMapper.fieldselect(vo));
		return "hyeongjun/fielddetail";
	}
	@ResponseBody
	@RequestMapping("/fieldselect")
	public List<RfieldVO> fielddetail(RfieldVO vo) {
		return hyeongjunMapper.fieldselect(vo);
	}
	@RequestMapping("/free/freedetail/{num}/{cnt}")
	public String freeselect(@PathVariable String num,@PathVariable String cnt,Model model,FboardVO vo) {
		vo.setNum(num);
		vo.setCnt(cnt);
		hyeongjunMapper.freecntupdate(vo);
		model.addAttribute("select",hyeongjunMapper.freeselect(vo));
		return "hyeongjun/freeread";
	}
	@RequestMapping("/free")
	public String freeboard(Model model,FboardVO vo) {
		model.addAttribute("list",hyeongjunMapper.fboardlist());
		return "hyeongjun/freeboard";
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
			session.setAttribute("pw",vo.getPw());
			session.setAttribute("name", vo.getName());
			session.setAttribute("t_num",vo.getT_num());
			System.out.println(vo.getT_num());
		} else {
			session.setAttribute("login", "아이디 또는 비밀번호가 맞지않습니다");
			return "";
		}
		return "sungjun/match";
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
	public String freeinsert(FboardVO vo,Model model)  {
		 hyeongjunMapper.freeinsert(vo);
		 model.addAttribute("list",hyeongjunMapper.fboardlist());
		 return "hyeongjun/freeboard";
	}
	@RequestMapping("/freedelete")
	public String freedelete(FboardVO vo,Model model) {
		hyeongjunMapper.freedelete(vo);
		 model.addAttribute("list",hyeongjunMapper.fboardlist());
		 return "hyeongjun/freeboard";
	}
	@RequestMapping("/freeupdate")
	public String freeupdate(FboardVO vo,Model model) {
		hyeongjunMapper.freeupdate(vo);
		 model.addAttribute("list",hyeongjunMapper.fboardlist());
		 return "hyeongjun/freeboard";
	}
	@ResponseBody
	@RequestMapping("insertheart")
	public LikeitVO heartinsert(LikeitVO vo,Model model) {
		return hyeongjunMapper.heartinsert(vo);
	}
	@ResponseBody
	@RequestMapping("deleteheart")
	public LikeitVO deleteinsert(LikeitVO vo,Model model) {
		return hyeongjunMapper.heartdelete(vo);
	}

}
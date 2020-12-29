package co.company.MatchFootball.hyeongjun;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.company.MatchFootball.mapper.HyeongjunMapper;
import co.company.MatchFootball.vo.InviteVO;
import co.company.MatchFootball.vo.MembersVO;

@Controller
public class HyeongjunController {

   @Autowired HyeongjunMapper hyeongjunMapper;
   
   @ResponseBody
   @RequestMapping(value="/bollow/ajax")
   public List<MembersVO>ajaxbollow(Model model){
      return hyeongjunMapper.getbollowlist();
   }
   
   @ResponseBody
   @RequestMapping(value="/bollowsearch/ajax")
   public MembersVO ajaxbollowseach(Model model,MembersVO vo){
      return hyeongjunMapper.bollowsearch(vo);
   }
   
   @RequestMapping("/bollow")
   public String bollow(Model model) {
      //model.addAttribute("list",hyeongjunMapper.getbollowlist());
      return "hyeongjun/bollowlist";
   }
   @RequestMapping("/dd")
   public String userjoin() {
      return "hyeongjun/fieldcommit";
   }

   @RequestMapping("/fieldlist")
   public String fieldlist() {
      return "hyeongjun/fieldlist";
   }
   @RequestMapping("/free")
   public String freeboard() {
      return "hyeongjun/freeboard";
   }
   @RequestMapping("/login")
   public String loginpage() {
      return "hyeongjun/login";
   }
   @RequestMapping(value="/logincheck")
   public String login(MembersVO vo,HttpServletRequest req,HttpSession session) {
      vo=hyeongjunMapper.login(vo);
      
      if(vo!=null) {
         session.setAttribute("id",vo.getId());
         session.setAttribute("name",vo.getName());
      }
      else {
         session.setAttribute("login","아이디 또는 비밀번호가 맞지않습니다");
         return "hyeongjun/login";
      }
      return "home";
   }
   @RequestMapping("/logout")
   public String logout(HttpSession session) {
      session.invalidate();
      return "home";
   }
   @RequestMapping("/invite")
   public String invitepage() {
      return "hyeongjun/invite";
   }
   @RequestMapping("/invitelist")
   public String invitelist() {
      return "hyeongjun/invitelist";
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
   public void inviteinsert(Model model,InviteVO vo,HttpServletRequest req,HttpSession session) {
      Map param=new HashMap();
      param.put("title",req.getAttribute("title"));
      param.put("comm",req.getAttribute("comm"));
      param.put("id",session.getAttribute("id"));
      param.put("check1","초대중..");
      hyeongjunMapper.invitestore(param);
   }


}
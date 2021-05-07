package com.site.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.site.Util.Email;
import com.site.dto.DeclarationMember;
import com.site.dto.MemberDto;
import com.site.dto.MypageDto;
import com.site.service.Service;

@Controller

public class MemberController {
	
	@Autowired
	Service service;
	@Autowired
	Email email;
	
	@RequestMapping("/adminMenu")
	public String adminMenu() {
		return "member/adminMenu";
	}
	
	@RequestMapping("/mypage")
	public String mypage() {
		return "member/mypage";
	}
	
//	@RequestMapping("/main")
//	public String main() {
//		return "main";
//	}

	@RequestMapping("/join")
	public String join() {
		return "member/join";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		return "member/logout";
	}
	
	@RequestMapping("/usersearch")
	public String usersearch() {
		return "member/usersearch";
	}
	
	@RequestMapping("/ifo_modify")
	public String ifo_modify() {
		return "member/ifo_modify";
	}
	
	@RequestMapping("/reservationStatus")
	public String reservationStatus(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("user_id"));
		String id =(String) session.getAttribute("user_id");
		ArrayList<MypageDto> list =service.getReserve(id);
		model.addAttribute("list",list);
		
		return "member/reservationStatus";
	}
	
	//신고
	   @RequestMapping("/declarationmember")
	   public String declarationmember(String id,String dec_id,String[] dec_reason,Model model) {
	      
		   
		  DeclarationMember dto = new DeclarationMember();
		  String sort = "";
		  System.out.println("test:"+dec_reason.length);
		  for(int i=0;i<dec_reason.length;i++) {
			  System.out.println(dec_reason[i]);
		  }
		  if(dec_reason!=null) {
			  for(int i=0;i<dec_reason.length;i++) {
				  if(!dec_reason[i].equals("")) {
					  if(i==0) {
						  sort = sort + dec_reason[i];
					  }else {
						  sort = sort + "," + dec_reason[i];
					  }
				  }
			  }
		  }
		  dto.setId(id);
		  dto.setDec_id(dec_id);
		  dto.setDec_reason(sort);
	      int chk = service.dec_member(dto);
	      model.addAttribute("chk", chk);
	      return "member/dec_chk";
	   }

	
	//관리자 회원관리 
	@RequestMapping("/memberControl")
	public String memberControl(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		ArrayList<MemberDto> list =  service.memberList();
		System.out.println(list);
		System.out.println(list.size());
		System.out.println(list.isEmpty());
		map.put("list", list);
		model.addAttribute("map",map);
		System.out.println(map);
		return "member/memberControl";
	}
	
	//회원삭제
	@RequestMapping("/member_del")
	@ResponseBody
	public int member_del(String id) {
		System.out.println("controller:"+id);
		int chk=service.memberDel(id);
		return chk;
	}
	
	//로그인 확인
	@RequestMapping("/loginCheck")
	@ResponseBody
	public Map<String, Object> loginCheck(HttpServletRequest request, String id, String pw) {
		Map<String, Object> map = new HashMap<String, Object>();
		HttpSession session = request.getSession();
		System.out.println(id);
		System.out.println(pw);
		map = service.login(id,pw);
		System.out.println(map);
		if((int)map.get("chk")==1) {
			session.setAttribute("login_flag", "succes");
			session.setAttribute("user_id",  ((MemberDto) map.get("user_dto")).getId());
			System.out.println("로그인한 유저 아이디"+session.getAttribute("user_id"));
			session.setAttribute("user_email",  ((MemberDto) map.get("user_dto")).getEmail());
			session.setAttribute("user_name",  ((MemberDto) map.get("user_dto")).getName());
		}else {
			session.setAttribute("login_flag", "fail");
		}
		System.out.println(1);
		for(String key : map.keySet()){
		    String value = map.get(key).toString();
		    System.out.println(key+" : "+value);
		}
		System.out.println("끝");
		return map;
	}
	
	//회원가입
	@RequestMapping("/joinChk")
		public String joinChk(HttpServletRequest request,MemberDto memberDto,Model model) {
			service.join(memberDto);
			return "member/joinChk";
		}
	
	//회원정보수정
	@RequestMapping("/modifyChk")
		public String modifyChk(HttpServletRequest request,MemberDto memberDto,Model model) {
			int chk = service.modify(memberDto);
			model.addAttribute("chk",chk);
			return "member/modifyChk";
		}
	
	//ID 중복확인
	@RequestMapping("/idCheck")
	@ResponseBody
	public int idCheck(String id) {
		System.out.println("controller_idcheck"+id);
		int chk = service.idCheck(id);
		return chk;
	}//아이디 중복 찾기
	
	//아이디 찾기
	@RequestMapping("/idsearch")
	@ResponseBody
	public Map<String, Object> idsearch(String name,String email) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("controller_idser_name:"+name);
		System.out.println("controller_idser_mail:"+email);
		MemberDto memberDto = service.idSearch(name,email);
		map.put("memberDto", memberDto);
		System.out.println("controller_id:"+memberDto.getId());
		return map;
	}//아이디 찾기
	
	//비밀번호 찾기
	@RequestMapping("/pwsearch")
	@ResponseBody
	public Map<String, Object> pw_search(String id,String pw_mail) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("controller_pwser:"+id);
		System.out.println("controller_pwser:"+pw_mail);
		MemberDto memberDto = service.pwSearch(id,pw_mail);
		map.put("memberDto", memberDto);
		System.out.println("controller_id:"+memberDto.getPw());
		return map;
	}//비밀번호 찾기
	
	//비밀번호 변경
		@RequestMapping("/pwchange")
		@ResponseBody
		public int pwchange(String id,String pw) {
			System.out.println(id);
			System.out.println(pw);
			int chk = service.pwChange(id,pw);
			return chk;
		}//비밀번호 변경
	
	//이메일 인증
	@RequestMapping("/email_cer")
	@ResponseBody
	public HashMap<String, Object> EmailCheck(String emailAdr) {
		System.out.println("emailADr"+emailAdr);
		HashMap<String, Object> map = new HashMap<String, Object>();
		String randomNum = email.emailCheck(emailAdr);
		System.out.println(randomNum);
		if (randomNum.equals("false")) {
			map.put("result","false");
		}else {
			map.put("result", "true");
		}
		map.put("randomNum", randomNum);
		return map;
	}//이메일 인증
	
	//회원탈퇴
	@RequestMapping("/member_quit")
	public String member_quit(HttpServletRequest request,Model model) {
		HttpSession session =  request.getSession();
		String id =(String)session.getAttribute("user_id");
		System.out.println("controller_quit_id:"+id);
		int chk = service.quit(id);
		model.addAttribute("chk",chk);
		return "member/quit_chk";
	}//회원탈퇴
	
	//삭제명단
	   @RequestMapping("/dec_list")
	   public String declarationmember(Model model) {
	      ArrayList<DeclarationMember> list = service.dec_memberlist();
	      System.out.println(list);
	      model.addAttribute("list", list);
	      return "member/dec_list";
	   }
	
	
}//class

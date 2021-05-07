package com.site.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.site.dto.DeclarationMember;
import com.site.dto.MemberDto;
import com.site.dto.MypageDto;
import com.site.mapper.MemberMapper;

@org.springframework.stereotype.Service
public class ServiceImpl implements Service {
	
	@Autowired
	MemberMapper membermapper;
	
	//로그인
	@Override
	public Map<String, Object> login(String id, String pw) {
		int chk=-1;
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("serviceImpl:"+id);
		System.out.println("serviceImpl:"+pw);
		MemberDto memberDto = membermapper.login(id,pw);
		if(memberDto!=null) {
			chk=1;
		}
		System.out.println("IMPL:"+chk);
		System.out.println(memberDto);
		map.put("user_dto", memberDto);
		map.put("chk", chk);
		return map;
	}
	//회원가입
	@Override
	public void join(MemberDto memberDto) {
		membermapper.join(memberDto);
		return;
	}
	
	//회원정보 수정
		@Override
		public int modify(MemberDto memberDto) {
			int chk = membermapper.memberModify(memberDto);
			return chk;
		}
	
	//중복확인
	@Override
	public int idCheck(String id) {
		int id_chk=-1;
		System.out.println("serviceImpl id_check:" + id);
		MemberDto dto  = membermapper.idCheck(id);
		if(dto!=null) {
			id_chk=1;
		}
		System.out.println("id_chk:"+id_chk);
		return id_chk;
	}
	
	//아이디 찾기
	@Override
	public MemberDto idSearch(String name, String email) {
		System.out.println("Impl:"+name);
		System.out.println("Impl:"+email);
		MemberDto dto = membermapper.idSearch(name,email);
		System.out.println("Impl:"+dto.getId());
		return dto;
	}

	//비밀번호 찾기
	@Override
	public MemberDto pwSearch(String id, String email) {
		MemberDto dto = membermapper.pwSearch(id,email);
		System.out.println("Impl:"+dto.getPw());
		return dto;
	}
	//비밀번호 변경
	@Override
	public int pwChange(String id, String pw) {
		int chk = membermapper.pwChange(id,pw);
		return chk;
	}
	
	//관리자 회원 리스트
	@Override
	public ArrayList<MemberDto> memberList() {
		ArrayList<MemberDto> list = membermapper.memberList();
		return list;
	}
	
	//회원 삭제
	@Override
	public int memberDel(String id) {
		int chk = membermapper.memberDel(id);
		return chk;
	}
	
	//회원탈퇴
	@Override
	public int quit(String id) {
		int chk = membermapper.memberQuit(id);
		return chk;
	}
	
	//신고
	   @Override
	   public int dec_member(DeclarationMember dto) {
	      int chk = membermapper.dec_member(dto);
	      return chk;
	   }
	   
	   @Override
	   public ArrayList<DeclarationMember> dec_memberlist() {
	      ArrayList<DeclarationMember> list = membermapper.dec_member_list();
	      return list;
	   }
	@Override
	public ArrayList<MypageDto> getReserve(String id) {
		// TODO Auto-generated method stub
		ArrayList<MypageDto> list = membermapper.getmypage(id);
		return list;
	}
	
	
	

}

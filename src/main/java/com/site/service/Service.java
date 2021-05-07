package com.site.service;

import java.util.ArrayList;
import java.util.Map;

import com.site.dto.DeclarationMember;
import com.site.dto.MemberDto;
import com.site.dto.MypageDto;

public interface Service {

	Map<String, Object> login(String id, String pw);

	void join(MemberDto memberDto);

	int idCheck(String id);

	MemberDto idSearch(String name, String email);

	MemberDto pwSearch(String id, String email);

	int pwChange(String id, String pw);

	ArrayList<MemberDto> memberList();

	int memberDel(String id);

	int modify(MemberDto memberDto);

	int quit(String id);

	int dec_member(DeclarationMember dto);

	ArrayList<DeclarationMember> dec_memberlist();

	ArrayList<MypageDto> getReserve(String id);

}

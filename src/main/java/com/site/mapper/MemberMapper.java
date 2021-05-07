package com.site.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.site.dto.DeclarationMember;
import com.site.dto.MemberDto;
import com.site.dto.MypageDto;

@Mapper
public interface MemberMapper {

	MemberDto login(@Param("id") String id,@Param("pw") String pw);

	void join(MemberDto memberDto);

	MemberDto idCheck(String id);

	MemberDto idSearch(@Param("name") String name,@Param("email") String email);

	MemberDto pwSearch(@Param("id") String id, @Param("email") String email);

	int pwChange(@Param("id") String id, @Param("pw") String pw);

	ArrayList<MemberDto> memberList();

	int memberDel(String id);

	int memberModify(MemberDto memberDto);

	int memberQuit(String id);

	int dec_member(DeclarationMember dto);

	ArrayList<DeclarationMember> dec_member_list();

	ArrayList<MypageDto> getmypage(String id);
	
	

}

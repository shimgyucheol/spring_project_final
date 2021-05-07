package com.site.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberDto {
		
	private String name;
	private String id;
	private String pw;
	private String email;
	private String birthday;
	private String gender;
	private String post;
	private String addr1;
	private String addr2;
	
}

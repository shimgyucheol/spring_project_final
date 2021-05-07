package com.site.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MypageDto {
	private String id;
	private String rid;
	private String mname;
	private String name;
	private String seat;
	private Date reservedate;
}

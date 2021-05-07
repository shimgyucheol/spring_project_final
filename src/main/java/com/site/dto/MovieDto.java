package com.site.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Alias("MovieDto")
public class MovieDto {
	
	private String mname; 
	private String genre; 
	private String grade; 
	private String info; 
	private String director;
	private String actor;
	private String poster;
	private String mrate;
	private String attendance;
	private String age;
	private int mid; 
	private String playtime; //input에서 null일때 int에 안담겨서 string으로 바꿈
	private Timestamp openingdate; 
	private Timestamp endingdate; 
	private String openingdate2;
	private String endingdate2;
	private String dsavepid;
	private String asavepid;
	private int count;
}

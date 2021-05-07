package com.site.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommentDto {
	
	private int mid;
	private String id;
	private int cid;
	private String grade;
	private String txtcomment;
	private Timestamp cdate;
	private int goodnumber;
	private int checkdata; //이건 조인을통해서 다른 테이블의 값을 가져올때 그 코맨트의 체크여부를 판단하기위해 넣어둠 mcommentboard db랑 다름
}

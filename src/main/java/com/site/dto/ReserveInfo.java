package com.site.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("Reserve")
public class ReserveInfo {
	private int rid;
	private int id;
	private int mid;
	private int tid;
	private int sid;
	private String seat;
	private Date reserveDate;
	private String reserveTimestamp;
	
}

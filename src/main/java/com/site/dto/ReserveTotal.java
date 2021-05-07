package com.site.dto;

import java.sql.Timestamp;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Alias("Rtotal")
public class ReserveTotal {
	private int rid;
	private int id;
	private int mid;
	private int tid;
	private int sid;
	private String seat;
	private Date reserveDate;
	private String reserveTimestamp;
	private Date openingdate;
	private Date endingdate;
	private Date starttime;
	private Date endtime;
	private int playtime;
	private int remainseat;
	private int hallseat;
	private String locA;
	private String locB;
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
	private int hall;
	private String playdate;
	private String playedate;

}

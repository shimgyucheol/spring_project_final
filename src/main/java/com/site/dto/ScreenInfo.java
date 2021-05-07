package com.site.dto;

import java.text.SimpleDateFormat;
import java.util.Date;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ScreenInfo {
	
	private int sid;
	private int mid;
	private int tid;
	private Date openingdate;
	private Date endingdate;
	private int screentime;
	private int playtime;
	private int remainseat;
	private int hallseat;
	
}

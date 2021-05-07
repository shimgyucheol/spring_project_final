package com.site.dto;

import java.text.SimpleDateFormat;
import java.util.Date;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Theater {
	private int tid;
	private String locA;
	private String locB;
//	private String column;
//	private String row;
	private String seat;
}

package com.site.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PreferenceDto {
	
	private int mid;
	private double man;
	private double woman;
	private double age10;
	private double age20;
	private double age30;
	private double age40;
	
}

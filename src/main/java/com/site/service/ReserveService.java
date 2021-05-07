package com.site.service;

import java.util.Date;
import java.util.List;

import com.site.dto.MovieDto;
import com.site.dto.ReserveInfo;
import com.site.dto.ReserveTotal;
import com.site.dto.ScreenInfo;

public interface ReserveService {

	void add(ReserveInfo reserve);

	

	ReserveInfo getseat(int sid);



	List<ReserveTotal> movieinfo(int mid, String locB, Date starttime);



	void remain(ScreenInfo screen);



	ReserveTotal getAllinfo(int sid);



	List<ReserveTotal> getMovieList();



	List<ReserveTotal> getMovieCheck(String locB);



	List<MovieDto> movielist();



	List<ReserveTotal> infotoday(String locB, String mname, String playdate, String playedate);

}

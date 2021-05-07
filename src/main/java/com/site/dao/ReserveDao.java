package com.site.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.site.dto.MovieDto;
import com.site.dto.ReserveInfo;
import com.site.dto.ReserveTotal;
import com.site.dto.ScreenInfo;

@Mapper
public interface ReserveDao {

	void add(ReserveInfo reserve);

	void list(int sid);

	ReserveInfo getseat(int sid);

	List<ReserveTotal> movieinfo(int mid, String locB, Date starttime);

	void remain(ScreenInfo screen);

	ReserveTotal getAllinfo(int sid);

	List<ReserveTotal> getMovieList();

	List<ReserveTotal> getMovieCheck(String locB);

	List<MovieDto> movielist();

	List<ReserveTotal> infotoday(String locB, String mname, String playdate, String playedate);

}

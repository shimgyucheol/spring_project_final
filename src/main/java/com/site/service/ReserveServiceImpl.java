package com.site.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.dao.ReserveDao;
import com.site.dto.MovieDto;
import com.site.dto.ReserveInfo;
import com.site.dto.ReserveTotal;
import com.site.dto.ScreenInfo;


@Service
public class ReserveServiceImpl implements ReserveService {

	@Autowired
	ReserveDao dao;
	
	@Override
	public void add(ReserveInfo reserve) {
		// TODO Auto-generated method stub
		dao.add(reserve);
	}

	@Override
	public ReserveInfo getseat(int sid) {
		// TODO Auto-generated method stub
		return dao.getseat(sid);
	}

	

	@Override
	public void remain(ScreenInfo screen) {
		// TODO Auto-generated method stub
		dao.remain(screen);
	}

	@Override
	public ReserveTotal getAllinfo(int sid) {
		// TODO Auto-generated method stub
		return dao.getAllinfo(sid);
	}

	@Override
	public List<ReserveTotal> movieinfo(int mid, String locB, Date starttime) {
		// TODO Auto-generated method stub
		return dao.movieinfo(mid, locB, starttime);
	}

	@Override
	public List<ReserveTotal> getMovieList() {
		// TODO Auto-generated method stub
		return dao.getMovieList();
	}

	@Override
	public List<ReserveTotal> getMovieCheck(String locB) {
		// TODO Auto-generated method stub
		return dao.getMovieCheck(locB);
	}

	@Override
	public List<MovieDto> movielist() {
		// TODO Auto-generated method stub
		return dao.movielist();
	}

	@Override
	public List<ReserveTotal> infotoday(String locB, String mname, String playdate, String playedate) {
		// TODO Auto-generated method stub
		System.out.println("123414"+playdate+playedate);
		return dao.infotoday(locB, mname,playdate,playedate);
	}


}

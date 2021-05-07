package com.site.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.site.dto.MovieDto;
import com.site.dto.ReserveInfo;
import com.site.dto.ReserveTotal;
import com.site.dto.ScreenInfo;
import com.site.dto.Theater;
import com.site.service.ReserveService;

@Controller
@RequestMapping("/reserve")
public class ReserveController {
	
	final String path ="/reserve";
	
	@Autowired
	ReserveService service;
	
	@RequestMapping("/reservemovie")
	String index(Model model, ReserveInfo reserve, ScreenInfo screen, Theater teather ) {
		
		
		return path+"/reservemovie";
	}
	@RequestMapping("/test")
	String index2(Model model, Integer mid, String locB, Date starttime) {
		
		if(mid == null) 
		mid=0;
		
		List<ReserveTotal> movieinfo = service.movieinfo(mid, locB, starttime);
		List<MovieDto> movielist =service.movielist();
		model.addAttribute("movieList", movielist);
		model.addAttribute("movieinfo", movieinfo);
		int i;
		for(i=0; i<movieinfo.size(); i++) {
		System.out.println("movie:  "+movieinfo.get(i));
			}
		
		return path+"/test";
	}
	@RequestMapping("/seat")
	String seat(Model model, ReserveInfo reserve, ScreenInfo screen, Theater teather, int sid, ReserveTotal total) {
		System.out.println(sid);
		
		total = service.getAllinfo(sid);
		reserve = service.getseat(sid);
		model.addAttribute("seat", reserve);
		System.out.println(total);
		model.addAttribute("allinfo",total);
		
		return path+"/reserveseat"; 	
	}
	@RequestMapping(value="/add", method= RequestMethod.POST)
	String reserve( ReserveInfo reserve , ScreenInfo screen, HttpSession session) {
		System.out.println(reserve.getSeat()+"jjj"+reserve.getReserveTimestamp());
		System.out.println(screen.getRemainseat()+"mmm"+screen.getSid());
		service.add(reserve);
		
		service.remain(screen);
		
		
		return "redirect:/main";
	}
	@RequestMapping("/getMovieList")
	@ResponseBody
	List<ReserveTotal> getMovieList() throws Exception{
		
		return service.getMovieList();
		
	}
	@RequestMapping("/getMovieCheck")
	@ResponseBody
	List<ReserveTotal> getMovieCheck(String locB) {
		int i;
		for(i=0; i<service.getMovieCheck(locB).size(); i++) {
			System.out.println("dfdfdfdff"+service.getMovieCheck(locB).get(i));
				
		}
		return service.getMovieCheck(locB);
	}
	@RequestMapping("/screeninfotoday")
	@ResponseBody
	List<ReserveTotal> infotoday(String locB, String mname, String playdate,String playedate) {
		System.out.println(locB+"wwww"+mname+"oooo"+ playdate+"mmmm"+playedate);
		
		
		return service.infotoday( locB, mname, playdate, playedate);
	}
}

package com.site.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.site.dto.AllimgDto;
import com.site.dto.CommentDto;
import com.site.dto.MovieDto;
import com.site.dto.MovieimgDto;
import com.site.dto.PreferenceDto;
import com.site.service.MovieService;

@Controller
public class MovieController {
	
	@Autowired
	MovieService movieservice;
	
	Map<String, Object> map;
	
	@RequestMapping("/modifysavedata")
	public String modifysavedata(MovieDto dto,Model model,String dsavepidmodify,String asavepidmodify,
			String modifydirector,String modifyactor) {
		ArrayList<AllimgDto> list = movieservice.moviepersonalldirector();
		model.addAttribute("list",list);
		model.addAttribute("moviedto",dto);
		model.addAttribute("dsavepidmodify", dsavepidmodify);
		model.addAttribute("asavepidmodify", asavepidmodify);
		model.addAttribute("modifydirector", modifydirector);
		model.addAttribute("modifyactor", modifyactor);
		return "movie/modifydirectorform";
	}
	@RequestMapping("/modifyactorsavedata")
	public String modifyactorsavedata(MovieDto dto,Model model,String dsavepidmodify,String asavepidmodify,
			String modifydirector,String modifyactor) {
		ArrayList<AllimgDto> list = movieservice.moviepersonnotdirector();
		model.addAttribute("list",list);
		model.addAttribute("moviedto",dto);
		model.addAttribute("dsavepidmodify", dsavepidmodify);
		model.addAttribute("asavepidmodify", asavepidmodify);
		model.addAttribute("modifydirector", modifydirector);
		model.addAttribute("modifyactor", modifyactor);
		return "movie/modifyactorform";
	}
	@RequestMapping("/savedata")
	public String savedata(MovieDto dto,Model model) {
		ArrayList<AllimgDto> list = movieservice.moviepersonalldirector();
		System.out.println("test입니다mid"+dto.getMid());
		System.out.println("test입니다dto "+dto.getMname());
		System.out.println("test입니다dto "+dto.getGenre());
		System.out.println("test입니다dto "+dto.getGrade());
		System.out.println("test입니다dto예매율 "+dto.getMrate());
		System.out.println("test입니다dto나이제한 "+dto.getAge());
		System.out.println("test입니다dto상영시간 "+dto.getPlaytime());
		model.addAttribute("list",list);
		model.addAttribute("moviedto",dto);
		return "movie/directorpersonform";
	}
	@RequestMapping("/actorsavedata")
	public String actorsavedata(MovieDto dto,Model model) {
		ArrayList<AllimgDto> list = movieservice.moviepersonnotdirector();
		model.addAttribute("list",list);
		model.addAttribute("moviedto",dto);
		/* model.addAttribute("dsavepid", dto.getDsavepid()); */
		return "movie/actorpersonform";
	}
	@RequestMapping("/modifydirectorpersonsave")
	public String modifydirectorpersonsave(int pid,Model model,MovieDto dto,String dsavepidmodify,String asavepidmodify,
			String modifydirector,String modifyactor) {
		String name = movieservice.moviepersonname(pid);
		String dsavepid = "";
		String directorname = "";
		if(dsavepidmodify!=null && dsavepidmodify!="") {
			dsavepid = dsavepidmodify+","+pid;
		}else {
			dsavepid = ""+pid;
		}
		
		if(modifydirector!=null && modifydirector!="") {
			directorname = modifydirector+","+name;
		}else {
			directorname = name;
		}
		
		Map map = new HashMap<String, Object>();
		map.put("moviedto", dto);
		model.addAttribute("map",map);
		model.addAttribute("dsavepidmodify", dsavepid);
		model.addAttribute("asavepidmodify", asavepidmodify);
		model.addAttribute("modifydirector", directorname);
		model.addAttribute("modifyactor", modifyactor);
		return "movie/moviemodifyview";
	}
	@RequestMapping("/modifyactorpersonsave")
	public String modifyactorpersonsave(int pid,Model model,MovieDto dto,String dsavepidmodify,String asavepidmodify,
			String modifydirector,String modifyactor) {
		String name = movieservice.moviepersonname(pid);
		String asavepid = "";
		String actorname = "";
		
		if(asavepidmodify!=null && asavepidmodify!="") {
			asavepid = asavepidmodify+","+pid;
		}else {
			asavepid = ""+pid;
		}
		
		if(modifyactor!=null && modifyactor!="") {
			actorname = modifyactor+","+name;
		}else {
			actorname = name;
		}
		
		Map map = new HashMap<String, Object>();
		map.put("moviedto", dto);
		model.addAttribute("map",map);
		model.addAttribute("dsavepidmodify", dsavepidmodify);
		model.addAttribute("asavepidmodify", asavepid);
		model.addAttribute("modifydirector", modifydirector);
		model.addAttribute("modifyactor", actorname);
		return "movie/moviemodifyview";
	}
	@RequestMapping("/directorpersonsave")
	public String directorpersonsave(int pid,Model model,MovieDto dto) {
		String name = movieservice.moviepersonname(pid);
		String dsavepid = "";
		String directorname = "";
		if(dto.getDsavepid()!=null && dto.getDsavepid()!="") {
			dsavepid = dto.getDsavepid()+","+pid;
		}else {
			dsavepid = ""+pid;
		}
		dto.setDsavepid(dsavepid);
		if(dto.getDirector()!=null && dto.getDirector()!="") {
			directorname = dto.getDirector()+","+name;
		}else {
			directorname = name;
		}
		dto.setDirector(directorname);
		model.addAttribute("dto",dto);
		return "movie/movieinsertall";
	}
	@RequestMapping("/actorpersonsave")
	public String actorpersonsave(int pid,Model model,MovieDto dto) {
		String name = movieservice.moviepersonname(pid);
		String asavepid = "";
		String actorname = "";
		if(dto.getAsavepid()!=null && dto.getAsavepid()!="") {
			asavepid = dto.getAsavepid()+","+pid;
		}else {
			asavepid = ""+pid;
		}
		dto.setAsavepid(asavepid);
		if(dto.getActor()!=null && dto.getActor()!="") {
			actorname = dto.getActor()+","+name;
		}else {
			actorname = name;
		}
		dto.setActor(actorname);
		model.addAttribute("dto",dto);
		return "movie/movieinsertall";
	}
	
	
	
	@RequestMapping("/movieinsertall")
	public String movieinsertall() {
		return "movie/movieinsertall";
	}
	@RequestMapping("/moviepersonform")
	public String moviepersonform() {
		return "movie/moviepersonform";
	}
	@RequestMapping("/main")
	public String main(Model model) {
		Map<String, Object> map = movieservice.movielist();
		model.addAttribute("map", map);
		return "main";
	}
	@RequestMapping("/movieinfo")
	public String movieinfo(@RequestParam("mid") @Nullable int mid
			,Model model,HttpServletRequest request) {
		System.out.println("test입니다"+mid);
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("user_id");
		MovieDto moviedto = new MovieDto();
		Map<String, Object> map = movieservice.movieinfo(mid);
		ArrayList<CommentDto> list = movieservice.mcommentlist(mid,id);
		double count = movieservice.mcommentlistcount(mid);
		double grade = movieservice.mcommentlistgrade(mid);
		double result = 0;
		double result1 = 0;
		if(count!=0) {
			result = grade/count;
			result1 = Math.round(result*10)/10.0;
		}
		map.put("gradeavg", result1);
		map.put("count", ((int)count));
		map.put("clist", list);
		model.addAttribute("map",map);
		
		return "movie/movieinfo";
	}
	
	@RequestMapping("/searchpage")
	public String searchpage(HttpServletRequest request,Model model) {
		String category = request.getParameter("category");
		String search = request.getParameter("search");
		String page = request.getParameter("page");
		String all_genre = request.getParameter("all-genre");
		String[] genre = request.getParameterValues("genre");
		String hgenre = null;
		String dgenre = null;
		
		if(genre!=null && all_genre==null) {
			for(int i=0;i<genre.length;i++) {
				if(genre[i].equals("사극")) {
					hgenre = "사극";
				}
				if(genre[i].equals("드라마")) {
					dgenre = "드라마";
				}
			}
		}
		
		map = movieservice.searchdata(page,category,search,hgenre,dgenre,all_genre);
		map.put("category", category);
		map.put("search", search);
		map.put("all_genre", all_genre);
		map.put("hgenre", hgenre);
		map.put("dgenre", dgenre);
		model.addAttribute("map",map);
		
		return "movie/searchpage";
	}
//	여기서부터 영화등록 클릭시 실행되는 메소드 순서
	@RequestMapping("/insertmovie")
	public String insertmovie(MovieDto dto,MultipartFile file,Model model) {
		int chk = movieservice.insertmovie(dto,file);
		model.addAttribute("chk", chk);
		model.addAttribute("mname",dto.getMname());
		return "movie/movieinsertall";
	}
	@RequestMapping("/insertmovieimg")
	public String insertmovieimg(@RequestParam String mname,
			MultipartFile swiperimg1,MultipartFile swiperimg2,
			MultipartFile swiperimg3,MultipartFile trailer1,
			MultipartFile trailer2,MultipartFile trailer3,
			MultipartFile poster1,MultipartFile poster2,
			MultipartFile poster3,MultipartFile poster4,
			MultipartFile trailervideo1,MultipartFile trailervideo2,MultipartFile trailervideo3,
			Model model) {
		
		int chk = movieservice.insertmovieimg(mname,swiperimg1,swiperimg2,
				swiperimg3,trailer1,trailer2,trailer3,
				poster1,poster2,poster3,poster4,
				trailervideo1,trailervideo2,trailervideo3);
		model.addAttribute("chk2", chk);
		model.addAttribute("mname", mname);
		return "movie/movieinsertall";
	}
	@RequestMapping("/insertmoviepreference")
	public String insertmoviepreference(@RequestParam String mname,PreferenceDto dto,Model model) {
		
		int chk = movieservice.insertmoviepreference(mname,dto);
		model.addAttribute("chk3", chk);
		return "movie/movieinsertall";
	}
//	여기까지 영화등록 클릭시 실행되는 메소드 순서 끝	
	@RequestMapping("/insertmovieperson")
	public String insertmovieperson(AllimgDto dto,MultipartFile file,Model model) {
		int chk = movieservice.insertmovieperson(dto,file);
		model.addAttribute("chk",chk);
		return "movie/moviepersonform";
	}
	@RequestMapping("/moviedeleteinfo")
	public String moviedeleteinfo(Model model) {
		ArrayList<MovieDto> list = movieservice.moviedeleteinfo();
		model.addAttribute("list",list);
		return "movie/moviedeleteinfo";
	}
	@RequestMapping("/moviedelete")
	@ResponseBody
	public int moviedelete(int mid) {
		int chk = movieservice.moviedelete(mid);
		return chk;
	}
	@RequestMapping("/moviemodifyview")
	public String moviemodifyview(int mid,Model model) {
		Map<String, Object> map = movieservice.moviemodifyview(mid);
		
//		System.out.println(((MovieDto)(map.get("moviedto"))).getEndingdate());
		
		model.addAttribute("map", map);
		return "movie/moviemodifyview";
	}
	@RequestMapping("/updatemovie")
	public String updatemovie(MovieDto dto,Model model,MultipartFile file,
			String modifydirector,String modifyactor,
			String dsavepidmodify,String asavepidmodify) {
		if(modifydirector!=null && (!modifydirector.equals(""))) {
			dto.setDirector(modifydirector);
		}
		if(modifyactor!=null && (!modifyactor.equals(""))) {
			dto.setActor(modifyactor);
		}
		if(dsavepidmodify!=null && (!dsavepidmodify.equals(""))) {
			dto.setDsavepid(dsavepidmodify);
		}
		if(asavepidmodify!=null && (!asavepidmodify.equals(""))) {
			dto.setAsavepid(asavepidmodify);
		}
		
		SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
		
		if(dto.getOpeningdate2()==null || dto.getOpeningdate2().equals("")) {
			dto.setOpeningdate2(simple.format(dto.getOpeningdate()));
		}
		if(dto.getEndingdate2()==null || dto.getEndingdate2().equals("")) {
			dto.setEndingdate2(simple.format(dto.getEndingdate()));
		}
		
		int chk = movieservice.updatemovie(file,dto);
		Map<String, Object> map = movieservice.moviemodifyview(dto.getMid());
		map.put("chk", chk);
		model.addAttribute("map", map);
		return "movie/moviemodifyview";
	}
	@RequestMapping("/updatemovieimg")
	public String updatemovieimg(MovieimgDto dto,
			MultipartFile swiperimg11,MultipartFile swiperimg22,
			MultipartFile swiperimg33,MultipartFile trailer11,
			MultipartFile trailer22,MultipartFile trailer33,
			MultipartFile poster11,MultipartFile poster22,
			MultipartFile poster33,MultipartFile poster44,
			MultipartFile trailervideo11,MultipartFile trailervideo22,MultipartFile trailervideo33,
			Model model) {
		
		int chk = movieservice.updatemovieimg(dto,swiperimg11,swiperimg22,swiperimg33,trailer11,trailer22,trailer33,poster11,poster22,poster33,poster44
				,trailervideo11,trailervideo22,trailervideo33);
		Map<String, Object> map = movieservice.moviemodifyview(dto.getMid());
		map.put("chk2", chk);
		model.addAttribute("map", map);
		
		return "movie/moviemodifyview";
	}
	@RequestMapping("/updatemoviepreference")
	public String updatemoviepreference(PreferenceDto dto,Model model) {
		
		int chk = movieservice.updatemoviepreference(dto);
		Map<String, Object> map = movieservice.moviemodifyview(dto.getMid());
		map.put("chk3", chk);
		model.addAttribute("map", map);
		
		return "movie/moviemodifyview";
	}
	@RequestMapping("/moviepersonlist")
	public String moviepersonlist(Model model) {
		
		ArrayList<AllimgDto> list = movieservice.moviepersonall();
		model.addAttribute("list", list);
		return "movie/moviepersonlist";
	}
	@RequestMapping("/moviepersondelete")
	@ResponseBody
	public int moviepersondelete(String pid) {
		int chk = movieservice.moviepersondelete(pid);
		return chk;
	}
	@RequestMapping("/moviepersonmodifyview")
	public String moviepersonmodifyview(String pid,Model model) {
		AllimgDto dto = movieservice.moviepersonmodifyview(pid);
		model.addAttribute("dto", dto);
		return "movie/moviepersonmodifyview";
	}
	@RequestMapping("/modifymovieperson")
	public String modifymovieperson(String savename,AllimgDto dto,MultipartFile file,Model model) {
		int chk = movieservice.modifymovieperson(dto,file,savename);
		model.addAttribute("chk", chk);
		return "movie/moviepersonmodifyview";
	}
	
	@RequestMapping("/commentsave")
	@ResponseBody
	public Map<String, Object> commentsave(CommentDto dto) {
		map = movieservice.commentsave(dto);
		return map;
	}
	@RequestMapping("/commentdelete")
	@ResponseBody
	public int commentdelete(int cid) {
		int chk = movieservice.commentdelete(cid);
		return chk;
	}
	@RequestMapping("/commentUpdate_check")
	@ResponseBody
	public Map<String, Object> commentUpdate_check(CommentDto dto) {
		map = movieservice.commentUpdate_check(dto); 
		return map;
	}
	@RequestMapping("/goodclick")
	@ResponseBody
	public Map goodclick(int mid,int cid,String id) {
		int chk = movieservice.goodclick(mid,cid,id);
		Map map = new HashMap<String, Object>();
		map.put("chk", chk);
		map.put("cid", cid);
		return map;
	}
	
}
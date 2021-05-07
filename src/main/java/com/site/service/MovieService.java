package com.site.service;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import com.site.dto.AllimgDto;
import com.site.dto.CommentDto;
import com.site.dto.MovieDto;
import com.site.dto.MovieimgDto;
import com.site.dto.PreferenceDto;

public interface MovieService {

	Map movieinfo(int mid);

	Map searchdata(String page, String category, String search, String hgenre, String dgenre, String all_genre);

	int insertmovie(MovieDto dto, MultipartFile file);


	int insertmoviepreference(String mname, PreferenceDto dto);

	int insertmovieperson(AllimgDto dto, MultipartFile file);

	Map<String, Object> movielist();

	int moviecheck(String mname);

	ArrayList<MovieDto> moviedeleteinfo();

	int moviedelete(int mid);

	Map<String, Object> moviemodifyview(int mid);

	int updatemovie(MultipartFile file, MovieDto dto);

	int updatemoviepreference(PreferenceDto dto);

	ArrayList<AllimgDto> moviepersonall();

	int moviepersondelete(String pid);

	AllimgDto moviepersonmodifyview(String pid);

	int modifymovieperson(AllimgDto dto, MultipartFile file, String savename);

	Map<String, Object> commentsave(CommentDto dto);

	int commentdelete(int cid);

	int mcommentlistcount(int mid);

	Map<String, Object> commentUpdate_check(CommentDto dto);

	int insertmovieimg(String mname, MultipartFile swiperimg1, MultipartFile swiperimg2, MultipartFile swiperimg3,
			MultipartFile trailer1, MultipartFile trailer2, MultipartFile trailer3, MultipartFile poster1,
			MultipartFile poster2, MultipartFile poster3, MultipartFile poster4, MultipartFile trailervideo1,
			MultipartFile trailervideo2, MultipartFile trailervideo3);

	int updatemovieimg(MovieimgDto dto, MultipartFile swiperimg11, MultipartFile swiperimg22, MultipartFile swiperimg33,
			MultipartFile trailer11, MultipartFile trailer22, MultipartFile trailer33, MultipartFile poster11,
			MultipartFile poster22, MultipartFile poster33, MultipartFile poster44, MultipartFile trailervideo11,
			MultipartFile trailervideo22, MultipartFile trailervideo33);

	ArrayList<AllimgDto> moviepersonalldirector();

	String moviepersonname(int pid);

	ArrayList<AllimgDto> moviepersonnotdirector();

	int mcommentlistgrade(int mid);

	ArrayList<CommentDto> mcommentlist(int mid, String id);

	int goodclick(int mid, int cid, String id);


	


	


}

package com.site.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.site.dto.AllimgDto;
import com.site.dto.CommentDto;
import com.site.dto.MovieDto;
import com.site.dto.MovieimgDto;
import com.site.dto.PreferenceDto;

@Mapper
public interface MovieMapper {

	MovieDto selectmovieinfo(int mid);


	int listCount();


	List<MovieDto> selectsearchdata(@Param("startrow") int startrow,@Param("endrow") int endrow);


	int listCountTitle(String search);

	int listCountSearchAll(String search);

	int listCountActor(String search);

	int listCountDirector(String search);

	int listCountDirectorhgenre(@Param("search") String search,@Param("hgenre") String hgenre);

	int listCountDirectordgenre(@Param("search") String search,@Param("dgenre") String dgenre);


	List<MovieDto> selectsearchdatatitle(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("search") String search);


	List<MovieDto> selectsearchdatadirector(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("search") String search);


	List<MovieDto> selectsearchdataAll(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("search") String search);


	List<MovieDto> selectsearchdataActor(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("search") String search);


	List<MovieDto> selectsearchdatadirectorhgenre(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("search") String search,@Param("hgenre") String hgenre);


	List<MovieDto> selectsearchdatadirectordgenre(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("search") String search,@Param("dgenre") String dgenre);


	List<MovieDto> selectsearchdataAllhgenre(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("search") String search,@Param("hgenre") String hgenre);
	
	
	List<MovieDto> selectsearchdataAlldgenre(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("search") String search,@Param("dgenre") String dgenre);
	
	MovieimgDto selectmovieimg(int mid);


	AllimgDto selectallimg(String pid);


	PreferenceDto selectpreference(int mid);


	int insertmoviemapper(MovieDto dto);


	int insertmovieimg(@Param("mname")String mname,@Param("dto") MovieimgDto dto);


	int insertmoviepreferencemapper(@Param("mname")String mname,@Param("dto") PreferenceDto dto);


	int insertmoviepersonmapper(@Param("dto") AllimgDto dto);


	List<MovieDto> selectsearchdatadirectorhgenredgenre(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("search") String search,@Param("hgenre") String hgenre,@Param("dgenre") String dgenre);


	List<MovieDto> selectsearchdataAllhgenredgenre(@Param("startrow") int startrow,@Param("endrow") int endrow,@Param("search") String search,@Param("hgenre") String hgenre,@Param("dgenre") String dgenre);


	int listCountDirectorhgenredgenre(@Param("search") String search,@Param("hgenre") String hgenre,@Param("dgenre") String dgenre);


	int listCountSearchAllhgenredgenre(@Param("search") String search,@Param("hgenre") String hgenre,@Param("dgenre") String dgenre);


	int listCountSearchAllhgenre(@Param("search") String search,@Param("hgenre") String hgenre);


	int listCountSearchAlldgenre(@Param("search") String search,@Param("dgenre") String dgenre);


	List<MovieDto> movielist();


	int moviecount();


	MovieDto moviecheckmapper(String mname);


	ArrayList<MovieDto> moviedeleteinfoAll();


	int moviedeletemapper(int mid);


	void moviedeleteimg(int mid);


	void moviedeletepreference(int mid);


	int updatemoviemapper(MovieDto dto);


	int updatemovieimgmapper(MovieimgDto dto);


	int updatemoviepreferencemapper(PreferenceDto dto);


	ArrayList<AllimgDto> moviepersonallmapper();


	int moviepersondeletemapper(String pid);


	AllimgDto moviepersonmodifyviewmapper(String name);


	int modifymoviepersonmapper(@Param("dto") AllimgDto dto,@Param("savename") String savename);


	int insertcomment(CommentDto dto);


	CommentDto selectcommentone(int cid);

	int commentdeletemapper(int cid);


	int mcommentlistcountmapper(int mid);


	int commentupdatemapper(CommentDto dto);


	ArrayList<AllimgDto> moviepersonalldirectormapper();


	AllimgDto moviepersonnamemapper(int pid);


	ArrayList<AllimgDto> moviepersonnotdirectormapper();


	int[] mcommentlistgrademapper(int mid);


	ArrayList<CommentDto> selectmcommentlist(@Param("mid") int mid,@Param("id") String id);


	Integer goodclickcheck(@Param("mid") int mid,@Param("cid") int cid,@Param("id") String id);


	void goodclickminus(int cid);


	void goodcheckdelete(int cid);


	void goodclickplus(int cid);


	void goodcheckinsert(@Param("mid") int mid,@Param("cid") int cid,@Param("id") String id);


}

package com.site.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.site.dto.AllimgDto;
import com.site.dto.CommentDto;
import com.site.dto.MovieDto;
import com.site.dto.MovieimgDto;
import com.site.dto.PreferenceDto;
import com.site.mapper.MovieMapper;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	MovieMapper moviemapper;

	List<MovieDto> list;

	Map<String, Object> map;

	@Autowired
	PageNumber pagenumber;

	@Override
	public Map<String, Object> movieinfo(int mid) {
		// info기본정보 받아오기
		MovieDto moviedto = new MovieDto();
		moviedto = moviemapper.selectmovieinfo(mid);

		// info에서쓰이는 img데이터가져오기
		MovieimgDto movieimgdto = new MovieimgDto();
		movieimgdto = moviemapper.selectmovieimg(mid);

		// info에서쓰이는 member의 데이터 가져오기
		String allmemberpid = moviedto.getDsavepid()+","+moviedto.getAsavepid();
		String[] split = allmemberpid.split(",");
		ArrayList<AllimgDto> list = new ArrayList<AllimgDto>();
		for (int i = 0; i < split.length; i++) {
			AllimgDto imgdto = new AllimgDto();
			imgdto = moviemapper.selectallimg(split[i]);
			list.add(imgdto);
		}

		// info에서쓰이는 선호도 데이터 가져오기
		PreferenceDto predto = new PreferenceDto();
		predto = moviemapper.selectpreference(mid);

		// 선호도에서 나이별 예매 퍼센트 데이터중에서 1위를 계산함
		double[] calcul = new double[4];
		double max = predto.getAge10();
		calcul[0] = predto.getAge10();
		calcul[1] = predto.getAge20();
		calcul[2] = predto.getAge30();
		calcul[3] = predto.getAge40();
		for (int i = 0; i < calcul.length; i++) {
			if (max < calcul[i]) {
				max = calcul[i];
			}
		}

		String result = "";
		for (int i = 0; i < calcul.length; i++) {
			if (max == calcul[i]) {
				result = "age" + (i + 1) + "0";
			}
		}
		map = new HashMap<String, Object>();
		map.put("moviedto", moviedto);
		map.put("movieimgdto", movieimgdto);
		map.put("list", list);
		map.put("predto", predto);
		map.put("result", result);

		return map;
	}

	@Override
	public Map searchdata(String listpage, String category, String search, String hgenre, String dgenre,
			String all_genre) {

		int page = 1;
		int limit = 8;
		if (listpage != null && listpage != "") {
			page = Integer.parseInt(listpage);
		}
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;

		if (category == null || category.equals("")) {
			list = moviemapper.selectsearchdata(startrow, endrow);
		} else if (category.equals("title")) {
			list = moviemapper.selectsearchdatatitle(startrow, endrow, search);
		} else if (category.equals("director")) {
			if (all_genre != null) {
				list = moviemapper.selectsearchdatadirector(startrow, endrow, search);
			} else if (hgenre != null && dgenre != null) {
				list = moviemapper.selectsearchdatadirectorhgenredgenre(startrow, endrow, search, hgenre, dgenre);
			} else if (hgenre != null && dgenre == null) {
				list = moviemapper.selectsearchdatadirectorhgenre(startrow, endrow, search, hgenre);
			} else if (hgenre == null && dgenre != null) {
				list = moviemapper.selectsearchdatadirectordgenre(startrow, endrow, search, dgenre);
			}
		} else if (category.equals("all")) {
			if (all_genre != null) {
				list = moviemapper.selectsearchdataAll(startrow, endrow, search);
			} else if (hgenre != null && dgenre != null) {
				list = moviemapper.selectsearchdataAllhgenredgenre(startrow, endrow, search, hgenre, dgenre);
			} else if (hgenre != null && dgenre == null) {
				list = moviemapper.selectsearchdataAllhgenre(startrow, endrow, search, hgenre);
			} else if (hgenre == null && dgenre != null) {
				list = moviemapper.selectsearchdataAlldgenre(startrow, endrow, search, dgenre);
			}

		}

		else if (category.equals("actor")) {
			list = moviemapper.selectsearchdataActor(startrow, endrow, search);
		}

		// dto.getAge()에 값이없으면 오류가뜸
		for (int i = 0; i < list.size(); i++) {
			MovieDto dto = list.get(i);
			if (dto.getAge().equals("전체")) {
				dto.setAge("all");
			}
		}

//		map = pagenumber2.pageNumber2(page, limit, category,list.size());
		map = pagenumber.pageNumber(page, limit, category, search, hgenre, dgenre, all_genre);
		map.put("list", list);
		return map;
	}

	@Override
	public int insertmovie(MovieDto dto, MultipartFile file) {

		if (file.getSize() != 0) {
			// 원본파일이름
			String fileName = file.getOriginalFilename();
			// 파일 저장위치
			String fileUrl = "C:/workspace/Spring_project_hap_ism/src/main/resources/static/images/movie_info/";
			// 신규파일이름
			File f = new File(fileUrl + fileName);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 파일이름저장
			dto.setPoster(fileName);
		} else {
			dto.setPoster("");
		}

		int chk = moviemapper.insertmoviemapper(dto);
		return chk;

	}

	@Override
	public int insertmoviepreference(String mname, PreferenceDto dto) {

		int chk = moviemapper.insertmoviepreferencemapper(mname, dto);

		return chk;
	}

	@Override
	public int insertmovieperson(AllimgDto dto, MultipartFile file) {

		if (file.getSize() != 0) {
			// 원본파일이름
			String fileName = file.getOriginalFilename();
			// 파일 저장위치
			String fileUrl = "C:/workspace/Spring_project_hap_ism/src/main/resources/static/images/person/";

			File f = new File(fileUrl + fileName);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 파일이름저장
			dto.setImg("images/person/" + fileName);
		} else {
			dto.setImg("images/movienoimage/no_image.png");
		}
		int chk = moviemapper.insertmoviepersonmapper(dto);
		return chk;
	}

	@Override
	public Map<String, Object> movielist() {

		list = moviemapper.movielist();
		int count = moviemapper.moviecount();

		map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);

		return map;
	}

	@Override
	public int moviecheck(String mname) {
		int chk = 0;
		MovieDto dto = moviemapper.moviecheckmapper(mname);
		return 0;
	}

	@Override
	public ArrayList<MovieDto> moviedeleteinfo() {
		ArrayList<MovieDto> list = new ArrayList<MovieDto>();
		list = moviemapper.moviedeleteinfoAll();
		return list;
	}

	@Override
	public int moviedelete(int mid) {
		int chk = moviemapper.moviedeletemapper(mid);
		moviemapper.moviedeleteimg(mid);
		moviemapper.moviedeletepreference(mid);
		return chk;
	}

	@Override
	public Map<String, Object> moviemodifyview(int mid) {

		// info기본정보 받아오기
		MovieDto moviedto = new MovieDto();
		moviedto = moviemapper.selectmovieinfo(mid);

		// info에서쓰이는 img데이터가져오기
		MovieimgDto movieimgdto = new MovieimgDto();
		movieimgdto = moviemapper.selectmovieimg(mid);

		// info에서쓰이는 선호도 데이터 가져오기
		PreferenceDto predto = new PreferenceDto();
		predto = moviemapper.selectpreference(mid);

		map = new HashMap<String, Object>();
		map.put("moviedto", moviedto);
		map.put("movieimgdto", movieimgdto);
		map.put("predto", predto);

		return map;
	}

	@Override
	public int updatemovie(MultipartFile file, MovieDto dto) {

		if (file.getSize() != 0) {
			String fileName = file.getOriginalFilename();
			String fileUrl = "C:/workspace/Spring_project_hap_ism/src/main/resources/static/images/movie_info/";
			File f = new File(fileUrl + fileName);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 파일이름저장
			dto.setPoster(fileName);
		}

		int chk = moviemapper.updatemoviemapper(dto);

		return chk;
	}

	@Override
	public int updatemoviepreference(PreferenceDto dto) {
		int chk = moviemapper.updatemoviepreferencemapper(dto);
		return chk;
	}

	@Override
	public ArrayList<AllimgDto> moviepersonall() {
		ArrayList<AllimgDto> list = moviemapper.moviepersonallmapper();
		return list;
	}

	@Override
	public int moviepersondelete(String pid) {
		int chk = moviemapper.moviepersondeletemapper(pid);
		return chk;
	}

	@Override
	public AllimgDto moviepersonmodifyview(String pid) {
		AllimgDto dto = moviemapper.moviepersonmodifyviewmapper(pid);
		return dto;
	}

	@Override
	public int modifymovieperson(AllimgDto dto, MultipartFile file, String savename) {

		if (file.getSize() != 0) {
			// 원본파일이름
			String fileName = file.getOriginalFilename();
			// 파일 저장위치
			String fileUrl = "C:/workspace/Spring_project_hap_ism/src/main/resources/static/images/person/";
			File f = new File(fileUrl + fileName);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 파일이름저장
			dto.setImg("images/person/" + fileName);
		}

		int chk = moviemapper.modifymoviepersonmapper(dto, savename);
		return chk;
	}

	@Override
	public Map<String, Object> commentsave(CommentDto dto) {

		// 댓글 insert
		int chk = moviemapper.insertcomment(dto);
		// 위의 commentDto와 아래의 commentDto는 다르다고 생각하면됨
		// 그래서 다른 commentNo를 가져올수있게됨
		int cid = dto.getCid();

		// 저장된 insert의 cid로 dto를 불러옴
		CommentDto cdto = moviemapper.selectcommentone(cid);
		map = new HashMap<String, Object>();
		map.put("chk", chk);
		map.put("dto", cdto);
		return map;
	}

	@Override
	public int commentdelete(int cid) {
		int chk = moviemapper.commentdeletemapper(cid);
		return chk;
	}

	@Override
	public int mcommentlistcount(int mid) {
		int count = moviemapper.mcommentlistcountmapper(mid);
		return count;
	}

	@Override
	public Map<String, Object> commentUpdate_check(CommentDto dto) {

		int chk = moviemapper.commentupdatemapper(dto);
		CommentDto commentdto = moviemapper.selectcommentone(dto.getCid());
		map = new HashMap<String, Object>();
		map.put("chk", chk);
		map.put("commentdto", commentdto);
		return map;
	}

	@Override
	public int insertmovieimg(String mname, MultipartFile swiperimg1, MultipartFile swiperimg2,
			MultipartFile swiperimg3, MultipartFile trailer1, MultipartFile trailer2, MultipartFile trailer3,
			MultipartFile poster1, MultipartFile poster2, MultipartFile poster3, MultipartFile poster4,
			MultipartFile trailervideo1, MultipartFile trailervideo2, MultipartFile trailervideo3) {

		MovieimgDto dto = new MovieimgDto();

		// 원본파일이름
		String fileName = swiperimg1.getOriginalFilename();
		String fileName2 = swiperimg2.getOriginalFilename();
		String fileName3 = swiperimg3.getOriginalFilename();
		// 파일 저장위치
		String fileUrl = "C:/workspace/Spring_project_hap_ism/src/main/resources/static/images/movieimg/";
		File f = new File(fileUrl + fileName);
		File f2 = new File(fileUrl + fileName2);
		File f3 = new File(fileUrl + fileName3);
		try {
			swiperimg1.transferTo(f);
			swiperimg2.transferTo(f2);
			swiperimg3.transferTo(f3);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 파일이름저장
		dto.setSwiperimg1(fileName);
		dto.setSwiperimg2(fileName2);
		dto.setSwiperimg3(fileName3);

//		images/movieimg/${map.movieimgdto.swiperimg1 }

		// 원본파일이름
		String fileName4 = trailer1.getOriginalFilename();
		String fileName5 = trailer2.getOriginalFilename();
		String fileName6 = trailer3.getOriginalFilename();
		// 파일 저장위치
		String fileUrl2 = "C:/workspace/Spring_project_hap_ism/src/main/resources/static/images/trailer/";
		File f4 = new File(fileUrl2 + fileName4);
		File f5 = new File(fileUrl2 + fileName5);
		File f6 = new File(fileUrl2 + fileName6);
		try {
			trailer1.transferTo(f4);
			trailer2.transferTo(f5);
			trailer3.transferTo(f6);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 파일이름저장
		dto.setTrailer1("images/trailer/" + fileName4);
		dto.setTrailer2("images/trailer/" + fileName5);
		dto.setTrailer3("images/trailer/" + fileName6);

		// 원본파일이름
		String fileName7 = poster1.getOriginalFilename();
		String fileName8 = poster2.getOriginalFilename();
		String fileName9 = poster3.getOriginalFilename();
		String fileName0 = poster4.getOriginalFilename();
		// 파일 저장위치
		String fileUrl3 = "C:/workspace/Spring_project_hap_ism/src/main/resources/static/images/poster/";
		File f7 = new File(fileUrl3 + fileName7);
		File f8 = new File(fileUrl3 + fileName8);
		File f9 = new File(fileUrl3 + fileName9);
		File f0 = new File(fileUrl3 + fileName0);
		try {
			poster1.transferTo(f7);
			poster2.transferTo(f8);
			poster3.transferTo(f9);
			poster4.transferTo(f0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 파일이름저장
		dto.setPoster1("images/poster/" + fileName7);
		dto.setPoster2("images/poster/" + fileName8);
		dto.setPoster3("images/poster/" + fileName9);
		dto.setPoster4("images/poster/" + fileName0);

		// 원본파일이름
		String fileName11 = trailervideo1.getOriginalFilename();
		String fileName12 = trailervideo2.getOriginalFilename();
		String fileName13 = trailervideo3.getOriginalFilename();
		// 파일 저장위치
		String fileUrl4 = "D:/lsm/movie/";
		File f11 = new File(fileUrl4 + fileName11);
		File f12 = new File(fileUrl4 + fileName12);
		File f13 = new File(fileUrl4 + fileName13);
		try {
			trailervideo1.transferTo(f11);
			trailervideo2.transferTo(f12);
			trailervideo3.transferTo(f13);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 파일이름저장
		dto.setTrailervideo1(fileName11);
		dto.setTrailervideo2(fileName12);
		dto.setTrailervideo3(fileName13);

		int chk = moviemapper.insertmovieimg(mname, dto);

		return chk;
	}

	@Override
	public int updatemovieimg(MovieimgDto dto, MultipartFile swiperimg11, MultipartFile swiperimg22,
			MultipartFile swiperimg33, MultipartFile trailer11, MultipartFile trailer22, MultipartFile trailer33,
			MultipartFile poster11, MultipartFile poster22, MultipartFile poster33, MultipartFile poster44,
			MultipartFile trailervideo11, MultipartFile trailervideo22, MultipartFile trailervideo33) {
		
		String fileUrl = "C:/workspace/Spring_project_hap_ism/src/main/resources/static/images/movieimg/";
		String fileUrl2 = "C:/workspace/Spring_project_hap_ism/src/main/resources/static/images/trailer/";
		String fileUrl3 = "C:/workspace/Spring_project_hap_ism/src/main/resources/static/images/poster/";
		String fileUrl4 = "D:/lsm/movie/";

		if (swiperimg11.getSize() != 0) {
			String fileName = swiperimg11.getOriginalFilename();
			File f = new File(fileUrl + fileName);
			try {
				swiperimg11.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setSwiperimg1(fileName);
		}
		if (swiperimg22.getSize() != 0) {
			String fileName2 = swiperimg22.getOriginalFilename();
			File f2 = new File(fileUrl + fileName2);
			try {
				swiperimg22.transferTo(f2);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setSwiperimg2(fileName2);
		}
		if (swiperimg33.getSize() != 0) {
			String fileName3 = swiperimg33.getOriginalFilename();
			File f3 = new File(fileUrl + fileName3);
			try {
				swiperimg33.transferTo(f3);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setSwiperimg3(fileName3);
		}

		if (trailer11.getSize() != 0) {
			String fileName4 = trailer11.getOriginalFilename();
			File f4 = new File(fileUrl2 + fileName4);
			try {
				trailer11.transferTo(f4);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setTrailer1("images/trailer/" + fileName4);
		}

		if (trailer22.getSize() != 0) {
			String fileName5 = trailer22.getOriginalFilename();
			File f5 = new File(fileUrl2 + fileName5);
			try {
				trailer22.transferTo(f5);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setTrailer2("images/trailer/" + fileName5);
		}

		if (trailer33.getSize() != 0) {
			String fileName6 = trailer33.getOriginalFilename();
			File f6 = new File(fileUrl2 + fileName6);
			try {
				trailer33.transferTo(f6);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setTrailer3("images/trailer/" + fileName6);
		}

		if (poster11.getSize() != 0) {
			String fileName7 = poster11.getOriginalFilename();
			File f7 = new File(fileUrl3 + fileName7);
			try {
				poster11.transferTo(f7);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setPoster1("images/poster/" + fileName7);
		}

		if (poster22.getSize() != 0) {
			String fileName8 = poster22.getOriginalFilename();
			File f8 = new File(fileUrl3 + fileName8);
			try {
				poster22.transferTo(f8);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setPoster2("images/poster/" + fileName8);
		}

		if (poster33.getSize() != 0) {
			String fileName9 = poster33.getOriginalFilename();
			File f9 = new File(fileUrl3 + fileName9);
			try {
				poster33.transferTo(f9);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setPoster3("images/poster/" + fileName9);
		}

		if (poster44.getSize() != 0) {
			String fileName0 = poster44.getOriginalFilename();
			File f0 = new File(fileUrl3 + fileName0);
			try {
				poster44.transferTo(f0);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setPoster4("images/poster/" + fileName0);
		}

		if (trailervideo11.getSize() != 0) {
			String fileName11 = trailervideo11.getOriginalFilename();
			File f11 = new File(fileUrl4 + fileName11);
			try {
				trailervideo11.transferTo(f11);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setTrailervideo1(fileName11);
		}
		if (trailervideo22.getSize() != 0) {
			String fileName22 = trailervideo22.getOriginalFilename();
			File f22 = new File(fileUrl4 + fileName22);
			try {
				trailervideo22.transferTo(f22);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setTrailervideo2(fileName22);
		}
		if (trailervideo33.getSize() != 0) {
			String fileName33 = trailervideo33.getOriginalFilename();
			File f33 = new File(fileUrl4 + fileName33);
			try {
				trailervideo33.transferTo(f33);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dto.setTrailervideo3(fileName33);
		}
		
		int chk = moviemapper.updatemovieimgmapper(dto);

		return chk;
		
	}

	@Override
	public ArrayList<AllimgDto> moviepersonalldirector() {
		
		ArrayList<AllimgDto> list = moviemapper.moviepersonalldirectormapper();
		
		return list;
	}

	@Override
	public String moviepersonname(int pid) {
		AllimgDto dto = moviemapper.moviepersonnamemapper(pid);
		String name = dto.getName();
		return name;
	}

	@Override
	public ArrayList<AllimgDto> moviepersonnotdirector() {
		ArrayList<AllimgDto> list = moviemapper.moviepersonnotdirectormapper();
		return list;
	}

	@Override
	public int mcommentlistgrade(int mid) {
		
		int[] grade = moviemapper.mcommentlistgrademapper(mid);
		int result=0;
		for(int i=0;i<grade.length;i++) {
			result += grade[i];
		}
		return result;
	}

	@Override
	public ArrayList<CommentDto> mcommentlist(int mid, String id) {
		ArrayList<CommentDto> list = moviemapper.selectmcommentlist(mid,id);
		return list;
	}

	@Override
	public int goodclick(int mid, int cid, String id) {
		Integer chk = moviemapper.goodclickcheck(mid,cid,id);
		int result=0;
		if(chk!=null) {
			moviemapper.goodclickminus(cid);
			moviemapper.goodcheckdelete(cid);
			result=0;
		}else {
			moviemapper.goodclickplus(cid);
			moviemapper.goodcheckinsert(mid,cid,id);
			result=1;
		}
		return result;
	}
}

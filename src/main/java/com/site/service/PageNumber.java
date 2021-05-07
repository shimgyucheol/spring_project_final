package com.site.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.site.mapper.MovieMapper;

@Component
public class PageNumber {
	
	@Autowired
	MovieMapper moviemapper;

	public Map pageNumber(int page, int limit, String category, String search, String hgenre, String dgenre,
			String all_genre) {
		Map map = new HashMap<String, Object>();
		int listCount=0;
		
		if(category==null || category.equals("")) {
			listCount = moviemapper.listCount();
		}else if(category.equals("title")) {
			listCount = moviemapper.listCountTitle(search);
		}else if(category.equals("director")) {
			if(all_genre!=null) {
				listCount = moviemapper.listCountDirector(search);
			}else if(hgenre!=null && dgenre!=null) {
				listCount = moviemapper.listCountDirectorhgenredgenre(search,hgenre,dgenre);
			}else if(hgenre!=null && dgenre==null) {
				listCount = moviemapper.listCountDirectorhgenre(search,hgenre);
			}else if(hgenre==null && dgenre!=null) {
				listCount = moviemapper.listCountDirectordgenre(search,dgenre);
			}
		}else if(category.equals("all")) {
			if(all_genre!=null) {
				listCount = moviemapper.listCountSearchAll(search);
			}else if(hgenre!=null && dgenre!=null) {
				listCount = moviemapper.listCountSearchAllhgenredgenre(search,hgenre,dgenre);
			}else if(hgenre!=null && dgenre==null) {
				listCount = moviemapper.listCountSearchAllhgenre(search,hgenre);
			}else if(hgenre==null && dgenre!=null) {
				listCount = moviemapper.listCountSearchAlldgenre(search,dgenre);
			}
		}else if(category.equals("actor")) {
			listCount = moviemapper.listCountActor(search);
		}
		
		
		int maxpage= (int)((double)listCount/limit+0.95);
		int startpage = ((int)((double)page/10+0.9)-1)*10+1;
		int endpage = maxpage;
		//검색시 아무것도안뜰때 maxPage가0이되고 >> 화살표뜨는거 방지
		if(maxpage==0) {
			maxpage=1;
		}
		if(endpage>startpage+10-1) endpage = startpage+10-1;
		
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		
		return map;
		
		
		
		
		
	}

	
	
	

}

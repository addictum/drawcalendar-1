package com.project.draw.draw_site.domain;

import java.util.List;

import com.project.draw.draw_site.Draw_siteVO;

public interface Draw_siteDAO {

	public void insert_draw_site(Draw_siteVO vo);
	void update_draw_site(Draw_siteVO vo);
	void delete_draw_site(Draw_siteVO vo);
	Draw_siteVO select_draw_site(Draw_siteVO vo);	
	List<Draw_siteVO> select_draw_site_list(Draw_siteVO vo);
}
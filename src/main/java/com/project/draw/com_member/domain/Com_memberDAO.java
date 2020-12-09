package com.project.draw.com_member.domain;

import java.util.List;

import com.project.draw.com_member.Com_memberVO;

public interface Com_memberDAO {

	public void insert_com_member(Com_memberVO vo);
	void update_com_member(Com_memberVO vo);
	void delete_com_member(Com_memberVO vo);
	Com_memberVO select_com_member(Com_memberVO vo);
	List<Com_memberVO> select_com_member_list(Com_memberVO vo);
	
}
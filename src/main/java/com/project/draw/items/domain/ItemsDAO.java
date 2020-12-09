package com.project.draw.items.domain;

import java.util.List;

import com.project.draw.items.ItemsVO;

public interface ItemsDAO {
	public void insert_items(ItemsVO vo);
	void update_items(ItemsVO vo);
	void delete_items(ItemsVO vo);
	ItemsVO select_items(ItemsVO vo);
	List<ItemsVO> select_items_list(ItemsVO vo);
}
package com.project.draw.items.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.draw.items.ItemsVO;
import com.project.draw.items.domain.ItemsDAO;

@Repository
public class Items_service implements ItemsDAO {
	
	@Autowired
	SqlSessionTemplate sql;

	@Override
	public void insert_items(ItemsVO vo) {
		sql.insert("itemsDAO.insert_items",vo);
		
	}
	
	@Override
	public void update_items(ItemsVO vo) {
		sql.insert("itemsDAO.update_items",vo);		
	}
	
	@Override
	public void delete_items(ItemsVO vo) {
		sql.insert("itemsDAO.delete_items",vo);		
	}

	@Override
	public ItemsVO select_items(ItemsVO vo) {
		return sql.selectOne("itemsDAO.select_items",vo);
	}

	@Override
	public List<ItemsVO> select_items_list(ItemsVO vo) {
		return sql.selectList("itemsDAO.select_items_list",vo);
	}

}

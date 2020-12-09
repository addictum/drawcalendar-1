package com.project.draw.items.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.draw.items.ItemsVO;
import com.project.draw.items.service.Items_service;

@Controller
public class Items_controller {
 
	@Autowired
	Items_service service;
	
	@RequestMapping(value="/insert_items.do")
	public String insert_items(ItemsVO vo) {
		service.insert_items(vo);
		return "redirect:index.jsp";
	}

	@RequestMapping(value="/update_items.do")
	public String update_items(ItemsVO vo) {
		service.update_items(vo);
		return "redirect:index.jsp";
	}	

	@RequestMapping(value="/delete_items.do")
	public String delete_items(ItemsVO vo) {
		service.delete_items(vo);
		return "redirect:index.jsp";
	}

	@RequestMapping(value="/select_items.do")
	public String select_items(ItemsVO vo) {
		service.select_items(vo);
		return "redirect:index.jsp";
	}

	@RequestMapping(value="/select_items_list.do")
	public String select_items_list(ItemsVO vo) {
		service.select_items_list(vo);
		return "redirect:index.jsp";
	}

}
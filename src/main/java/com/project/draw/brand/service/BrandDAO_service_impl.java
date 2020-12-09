package com.project.draw.brand.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.draw.brand.BrandVO;
import com.project.draw.brand.domain.BrandDAO;


public class BrandDAO_service_impl implements BrandDAO_service{

	//dao bean 등록할 것
	
	
	BrandDAO dao;
	
	@Override
	public void insert_brand(BrandVO vo) {
		dao.insert_brand(vo);
	}

}

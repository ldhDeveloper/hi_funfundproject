package com.hi.funfund.item.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hi.funfund.item.model.dao.ItemDao;

@Service("itemService")
public class ItemServiceIm {

	@Autowired
	private ItemDao itemDao;
}
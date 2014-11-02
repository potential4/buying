package com.p4.buying.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.p4.buying.model.Category;

@Controller
public class MainController {
	private static final String DEFAULT_CATEGORY = "cosmetics";
	
	@RequestMapping("/items/{category}")
	public String getItemsWithCategory(@PathVariable String category, Model model) {
		model.addAttribute("category", category);
		return "main";
	}
	
	@RequestMapping("/items")
	public String getItems(Model model) {
		return getItemsWithCategory(DEFAULT_CATEGORY, model);
	}
	
	@RequestMapping("/api/categories")
	@ResponseBody
	public String[] getCategories(Category list) {
		return null;
	}
}
package com.p4.buying.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/items/{category}")
	public String getItemsWithCategory(@PathVariable String category, Model model) {
		model.addAttribute("category", category);
		return "main";
	}
	
	@RequestMapping("/items")
	public String getItems(Model model) {
		return getItemsWithCategory("cosmetics", model);
	}
}
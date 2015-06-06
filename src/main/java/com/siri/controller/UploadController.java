package com.siri.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UploadController {
	private static final String VIEW_INDEX = "upload.jsp";
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String selectUpload() {
		
		return VIEW_INDEX;
	}
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(ModelMap model) {
		
		model.addAttribute("file uploaded ");
		return VIEW_INDEX;
	}
}

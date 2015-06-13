package com.siri.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.siri.BO.FileUpload;

@Controller
public class UploadController {
	private static final String VIEW_INDEX = "upload.jsp";
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String selectUpload(ModelMap model) {
		model.addAttribute("status", false);
		return VIEW_INDEX;
	}
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(@ModelAttribute("fileUpload")FileUpload fileupload, ModelMap model) {
		String message = "file upload failed";
		model.addAttribute("status", true);
		if (fileupload != null) {
			if (fileupload.getFile() != null) {
				message = fileupload.getFile().getOriginalFilename() + " file uploaded";
			}
		}
		model.addAttribute("message", message );
		return VIEW_INDEX;
	}
}

package com.HAT.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping ("/")
	public String homepage()
	{
		return "index";
	}

	@RequestMapping("/contactus")
	public String Contact()
	{
		return "ContactUs";
	}
	
	@RequestMapping("/aboutus")
	public String aboutUs()
	{
		return "About";
	}
	
	@RequestMapping("/range")
	public String range()
	{
		return "Range";
	}
	
	@RequestMapping("/technical")
	public String Technical()
	{
		return "Technical";
	}
	
	@RequestMapping("/machinery")
	public String machinery()
	{
		return "Machinery";
	}
	
	@RequestMapping("/index")
	public String index()
	{
		return "index";
	}
	
	@RequestMapping ("/signin")
	public String signin()
	{
		return "Login";
	}


}

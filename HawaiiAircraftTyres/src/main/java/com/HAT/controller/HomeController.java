package com.HAT.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping ("/login")
	public String login( 
			@RequestParam(value="error", required = false) 
            String error, 
            @RequestParam(value="logout", required = false) 
            String logout, Model model){ 
 
		if(error != null){ model.addAttribute("error", "Invalid username and password"); 
        } 
 
		if (logout !=null){ model.addAttribute("msg", "You have been logged out successfully"); 
        } 
 
		return "newLogin"; 
		}  


}

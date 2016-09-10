package com.niit.shoppingcart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	//if you want to navigate
	
	
	@RequestMapping("/")
	public String Home()
	{
		return "Index";
	}
/*	@RequestMapping("/admin")
	public String getadmin()
	{
		return"adminPage";
	}
*/	@RequestMapping("/Index")
	public String reg()
	{
		return "Index";
	}
/*
	@RequestMapping("/login")
	public String login()
	{
		return "Login";
	}
*/	
	 
	@RequestMapping("/single.html")
	public String asdfghjk()
	{
		return "Single";
	}
	
	@RequestMapping("/contact")
	public String asdfghjk1()
	{
		return "Single";
	}
	
	@RequestMapping("/LoginPage")
	public String asdfgh1()
	{
		return "LoginPage";
	}

	/*
	@RequestMapping("/RegisterPage")
	public String asdfgh12()
	{
		return "RegisterPage";
	}
*/
	
}
	/*
	@RequestMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("message","thank you for visiting");
		return mv;
	}
	
	@RequestMapping("/Register")
	public ModelAndView register()
	{
		ModelAndView mv = new ModelAndView("Register");
		mv.addObject("user click register here", "true");
		return mv;
	}
	
	@RequestMapping("/Login")
	public ModelAndView login()
	{
	
		ModelAndView mv = new ModelAndView("Login");
		mv.addObject("user click login here", "true");
		return mv;
	}
}
*/
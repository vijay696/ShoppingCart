package com.niit.shoppingcart;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;

@Controller
public class HomeController {

@Autowired
	
	private CategoryDAO categoryDAO;
	@Autowired                       //include frm here
	private Category category;
@Autowired
	
	private ProductDAO productDAO;
	
	
	
	
	
	//if you want to navigate

	
	

@RequestMapping("/")
public String homepage(HttpSession session ,Model model,@ModelAttribute("selectedProduct")Product selectedProduct)
{
	//model.addAttribute("category", category);
	
	session.setAttribute("categoryList", categoryDAO.list());///till here
	session.setAttribute("productList", this.productDAO.list());
	
	model.addAttribute("categoryList", this.categoryDAO.list());///till here

	//ModelAndView model=new ModelAndView("/INDEX");
	if(selectedProduct!=null)
		model.addAttribute("selectedProduct", selectedProduct);
	else
	System.out.println("The object is null");

	
	
	return "Index";
}

/*


@RequestMapping("/")
public ModelAndView getPage(HttpSession session, @ModelAttribute("selectedProduct") final Product selectedProduct) {

	ModelAndView model=new ModelAndView("/Index");
	
	model.addObject("categoryList", categoryDAO.list());
	model.addObject("productList", productDAO.list());
	
	session.setAttribute("categoryList", categoryDAO.list());
	session.setAttribute("productList", productDAO.list());
	
	System.out.println("inside / mapping");

	if(selectedProduct!=null){
		System.out.println("Inside selected product not null");
		model.addObject("selectedProduct",selectedProduct);
	}
	else
		System.out.println("The object is null");
	
	return model;
	
}
*/


/* redirect pages*/

@RequestMapping("/Index")
	public String reg()
	{
		return "Index";
	}

@RequestMapping("/contact")
public String cont()
{
	return "Contact";
}

	
	
	@RequestMapping("/LoginPage")
	public String asdfgh1()
	{
		return "LoginPage";
	}
	

	@RequestMapping("/about")
	public String aaaq()
	{
		return "AboutPage";
	}

	//for the e store pages
	

@RequestMapping("/Pcgaming")
	public String reg12()
	{
		return "Pcg";
	}

	

@RequestMapping("/play4")
	public String reg123()
	{
		return "Playstation4";
				
	}


@RequestMapping("/xbox1")
	public String reg1234()
	{
		return "Xbox1";
				
	}


@RequestMapping("/xbox360")
	public String reg12345()
	{
		return "Xbox360";
				
	}

@RequestMapping("/play3")
	public String reg123456()
	{
		return "Playstation3";
				
	}

@RequestMapping("/psp")
	public String reg1234567()
	{
		return "Psp";
				
	}

/*anu*/




@RequestMapping("/Cthanks")
public String loadLoginPage3() {
	return "Cthanks";
}
@RequestMapping("/Logout")
public String loadLoginPage6() {
	return "Logout";
}

@RequestMapping("/Shipping")
public String loadLoginPage7() {
	return "Shipping";
}
@RequestMapping("/Sthanks")
public String loadLoginPage8() {
	return "Sthanks";
}




}
	
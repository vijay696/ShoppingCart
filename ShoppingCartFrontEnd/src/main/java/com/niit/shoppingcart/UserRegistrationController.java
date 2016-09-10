package com.niit.shoppingcart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.dao.UsersDetailDao;
import com.niit.shoppingcart.model.UsersDetail;


/*
 * This Controller is used to register user into the system
 */
@Controller
public class UserRegistrationController {

    @Autowired
    private UsersDetailDao usersDetailDao;
    
    /*
     * registerUserPost method is used to register user into  the system and to show registration related errors
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUserPost( @ModelAttribute("usersDetail") UsersDetail usersDetail, Model model, BindingResult result) {

        
if(result.hasErrors())
{
	return "Register";
}

        usersDetail.setEnabled(true);
//userdetails.setrole("role_adminb");

        usersDetailDao.addUser(usersDetail);

        return "Index";

    }
    
    @RequestMapping("/register")
    public String registrationUser(Model model){
    	UsersDetail usersDetail = new UsersDetail();
    	model.addAttribute("usersDetail", usersDetail);
    	return "Register";
    }

}

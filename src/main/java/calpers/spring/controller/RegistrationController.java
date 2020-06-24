package calpers.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import calpers.spring.model.User;
import calpers.spring.service.UserService;
@Controller
public class RegistrationController {
  @Autowired
  public UserService userService;
  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("register");
    mav.addObject("user", new User());
    return mav;
  }
  @RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
  @ModelAttribute("user") User user) {
  int res=userService.register(user);
  System.out.println(res);
  if(res!=0) {
	  String success="Account successfully created. Please login!";
  return new ModelAndView("home", "Success", success);
  }
  else {
	  String error="Enter the correct password";
	  return new ModelAndView("register", "error", error);
  }
	 
  }
}
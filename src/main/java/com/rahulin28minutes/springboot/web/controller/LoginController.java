package com.rahulin28minutes.springboot.web.controller;

/*import java.util.Arrays;*/

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rahulin28minutes.springboot.web.service.LoginService;


// /login=> "Hello World"
@Controller
@SessionAttributes("Name")
public class LoginController {
	
	@Autowired
	LoginService service ;
	//LoginService service = new LoginService();  Old method of creating Instance of a class, Initialing service (creating an instance of another class here). Tightly coupled, it means there is no way i can pass an instance of  LoginService to this, therefore we use Dependency Injection of spring
	
	//when we pass data from a url through a GET method and receive the data through RequestParam in controller and Send the data from controller to view with the help of model
	//Ex : http://localhost:8080/login?name=rahul
	
	//@RequestMapping("/login") [ if RequestMapping is used without RequestMethod then it will work for all request methods like POST,GET,PUT..]
	//public String loginMessage(@RequestParam String name, ModelMap model)
	//model.put("Name", name);   [model.put("key",value)]
			//System.out.println("Name is " + name);
	// return "login";
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	
	public String showLoginPage(){
		return "login";
	}
		@RequestMapping(value="/login", method = RequestMethod.POST)
		public String showWelcomePage(@RequestParam String name, ModelMap model, @RequestParam String password){
			
			boolean isValidUser = service.validateUser(name, password);
			
			if (!isValidUser){
				model.put("errorMessage", "Invalid Credentials");
				return "login";
			}
			model.put("Name", name);
			//model.put("Password", password);
			/*model.put("names", Arrays.asList("Rahul","Ranjan","Madhuri")); To pass Array as list*/
			/*model.put("message", "Login Successful");*/
			return "welcome";
		
	}
		
	
		
	}


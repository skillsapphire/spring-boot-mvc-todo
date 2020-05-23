package com.rahulin28minutes.springboot.web.service;

//import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	public boolean validateUser(String userid, String password){
		//rahul, rahulb1995
 		 return userid.equalsIgnoreCase("rahul") && password.equalsIgnoreCase("rahulb1995");
	}

	

}

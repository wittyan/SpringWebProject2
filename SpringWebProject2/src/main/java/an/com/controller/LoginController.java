package an.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	
	@RequestMapping(value="/login.do")
	public String loginFunc() {
		
		
		return "login/login";
	}
	@RequestMapping(value="/logout.do")
	public String logoutFunc() {
		
		
		return "login/logout";
	}
	@RequestMapping(value="/signup.do")
	public String signupFunc() {
		
		
		return "login/signup";
	}
	
}

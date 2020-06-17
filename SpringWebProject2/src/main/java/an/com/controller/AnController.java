package an.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AnController {
	
	
	
	@RequestMapping(value="/index.do")
	public String indexFunc(HttpSession session,Model model) {
		
		return "index";
	}
	@RequestMapping(value="/community.do")
	public String communityFunc(HttpSession session,Model model) {
		model.addAttribute("id",session.getAttribute("id"));
		
		return "pages/community";
	}
	
	@RequestMapping(value="/gallery.do")
	public String galleryFunc() {
		
		
		return "pages/gallery";
	}
	@RequestMapping(value="/mapinfo.do")
	public String mapInfoFunc() {
		
		
		return "pages/mapinfo";
	}

	
	
}


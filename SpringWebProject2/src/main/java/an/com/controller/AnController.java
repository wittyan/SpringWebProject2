package an.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AnController {
	
	@RequestMapping(value="/community.do")
	public String communityFunc() {
		
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


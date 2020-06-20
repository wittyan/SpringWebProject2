package an.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import an.com.dao.CommunityDao;

@Controller
public class AnController {

	@Autowired
	CommunityDao cDao;

	@RequestMapping(value = "/index.do")
	public String indexFunc(HttpSession session, Model model) {

		return "index";
	}

	@RequestMapping(value = "/community.do")
	public String communityFunc(HttpSession session, Model model) {
		model.addAttribute("id", session.getAttribute("id"));

		
//		cDao.selectCommunity(map);
		return "pages/community";
	}

	@RequestMapping(value = "/gallery.do")
	public String galleryFunc() {

		return "pages/gallery";
	}

	@RequestMapping(value = "/mapinfo.do")
	public String mapInfoFunc() {

		return "pages/mapinfo";
	}

}

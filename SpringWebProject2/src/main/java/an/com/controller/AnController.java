package an.com.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import an.com.bean.CommunityBean;
import an.com.bean.PageBean;
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
	public String communityFunc(HttpServletRequest request, HttpSession session, Model model) {
		model.addAttribute("id", session.getAttribute("id"));

		int pageScale = 10;
		int blockScale = 10;
		
		int currentPage = 1;
		if (request.getParameter("page") != null) {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		int totalRow = cDao.getCommunityTotalRow();

		int totalPage = totalRow % pageScale == 0 ? (totalRow / pageScale) : (totalRow / pageScale) + 1;

		int currentBlock = currentPage % blockScale == 0 ? (currentPage / blockScale) : (currentPage / blockScale) + 1;

		int startPage = 1 + (currentBlock-1) * blockScale;
		int endPage = blockScale + (currentBlock-1) * blockScale;
		
		int start = 1 + (currentPage - 1) * pageScale;
		int end = pageScale + (currentPage - 1) * pageScale;

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("start", start);
		map.put("end", end);
		
		ArrayList<CommunityBean> list = (ArrayList<CommunityBean>)cDao.selectCommunity(map);
		
		PageBean pageBean = new PageBean(currentPage,totalPage,totalRow,currentBlock,startPage,endPage);
		
		System.out.println(list);
		System.out.println(pageBean);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		
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

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

	
	@RequestMapping(value = "/mapinfo.do")
	public String mapInfoFunc() {

		return "pages/mapinfo";
	}
	
	
}

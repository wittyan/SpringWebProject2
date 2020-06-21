package an.com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import an.com.bean.CommunityBean;
import an.com.bean.PageBean;
import an.com.dao.CommunityDao;

@Controller
public class CommunityController {

	@Autowired
	CommunityDao cDao;
	String fileLocations = "C:\\Users\\premi\\git\\repository2\\SpringWebProject2\\src\\main\\webapp\\uploadFolder\\";
	
	@RequestMapping(value="/insert.do")
	public String insertFunc(HttpServletRequest request,
			@RequestParam(value = "file", required = false) MultipartFile file){
		

		String fileName = file.getOriginalFilename();
		FileOutputStream fos = null;
		
		
		if(fileName.length() > 0) {
			try {
			fos = new FileOutputStream(new File(fileLocations + fileName));
			fos.write(file.getBytes());
			
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if (fos != null)
						fos.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}else {
			fileName = "noimg.jpg";
		}
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String id = (String)request.getSession().getAttribute("id");
		
		int no = cDao.getCommunitySeq();
		CommunityBean cb = new CommunityBean(no, id==null?"anonymous":id, title, "", contents, 0, fileName, "");
		cDao.insertCommunity(cb);
		
		return "redirect:/community.do";
	}
	@RequestMapping(value = "/write.do")
	public String writeFunc() {
		
		return "pages/write";
	
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
		
		if(endPage>totalPage) {
			endPage = totalPage;
		}
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
}

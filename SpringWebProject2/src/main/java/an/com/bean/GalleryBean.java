package an.com.bean;

public class GalleryBean {
	int no;
	String writer;	
	String title;
	String password;
	String content;
	int hit;
	String filename;
	String regdate;
	
	
	public GalleryBean() {
		super();
	}


	public GalleryBean(int no, String writer, String title, String password, String content, int hit, String filename,
			String regdate) {
		super();
		this.no = no;
		this.writer = writer;
		this.title = title;
		this.password = password;
		this.content = content;
		this.hit = hit;
		this.filename = filename;
		this.regdate = regdate;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getHit() {
		return hit;
	}


	public void setHit(int hit) {
		this.hit = hit;
	}


	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}


	public String getRegdate() {
		return regdate;
	}


	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}


	@Override
	public String toString() {
		return "GalleryBean [no=" + no + ", writer=" + writer + ", title=" + title + ", password=" + password
				+ ", content=" + content + ", hit=" + hit + ", filename=" + filename + ", regdate=" + regdate + "]";
	}	

	
	
}

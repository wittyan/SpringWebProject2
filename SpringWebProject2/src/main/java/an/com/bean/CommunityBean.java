package an.com.bean;

public class CommunityBean {
	
	int no;
	String writer;
	String title;
	String password;
	String contents;
	int hit;
	String filename;
	String regdate;
	
	
	public CommunityBean() {
		super();
	}
	public CommunityBean(int no, String writer, String title, String password, String contents, int hit,
			String filename, String regdate) {
		super();
		this.no = no;
		this.writer = writer;
		this.title = title;
		this.password = password;
		this.contents = contents;
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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
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
		return "CommunityBean [no=" + no + ", writer=" + writer + ", title=" + title + ", password=" + password
				+ ", contents=" + contents + ", hit=" + hit + ", filename=" + filename + ", regdate=" + regdate + "]";
	}
	
	
	
}

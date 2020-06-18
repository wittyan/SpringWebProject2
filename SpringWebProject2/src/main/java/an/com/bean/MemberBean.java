package an.com.bean;

public class MemberBean {
	
	String id;
	String nickname;
	String password;
	String email;
	String phonenumber;
	String date;
	
	public MemberBean() {
		super();
	}
	public MemberBean(String id, String nickname, String password, String email, String phonenumber, String date) {
		super();
		this.id = id;
		this.nickname = nickname;
		this.password = password;
		this.email = email;
		this.phonenumber = phonenumber;
		this.date = date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", nickname=" + nickname + ", password=" + password + ", email=" + email
				+ ", phonenumber=" + phonenumber + ", date=" + date + "]";
	}
	
	
	
	
}

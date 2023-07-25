package Board;

public class BoardDTO {

	private int num;
	private String name;
	private String id;
	private String pwd;
	private String email;
	private String subject;
	private String content;
	private int hit;
	private String time;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num=num;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name=name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id=id;
	}

	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd=pwd;
	}

	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email=email;
	}

	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject=subject;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content=content;
	}

	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time=time;
	}
	
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit= hit;
	}
	


}


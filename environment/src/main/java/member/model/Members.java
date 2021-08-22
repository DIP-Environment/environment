package member.model;

import java.util.Date;

public class Members {
	private String id; //회원 아이디
	private String name; //회원 이름
	private String password; //회원 패스워드
	private String email; //회원 이메일
	private Date regDate; //회원등록일자
	private Date modDatePwd; //회원 비밀번호교체 마지막 날짜 및 시간
	private int errorPwd; //회원 비밀번호 틀린 횟수
	
	public Members(String id, String name, String password, String email, Date regDate, Date modDatePwd, int errorPwd) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.regDate = regDate;
		this.modDatePwd = modDatePwd;
		this.errorPwd = errorPwd;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public String getEmail() {
		return email;
	}

	public Date getRegDate() {
		return regDate;
	}

	public Date getModDatePwd() {
		return modDatePwd;
	}

	public int getErrorPwd() {
		return errorPwd;
	}

	public boolean matchPassword(String pwd) {
		return password.equals(pwd);
	}
}

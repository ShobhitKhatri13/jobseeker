package myentities;

import javax.persistence.*;

@Entity
@Table(name="userinfo")
public class NewEmployee 
{
	@Id
	@Column(name="userid")
    private int userid;
	
	@Column(name="usernm")
	private String usernm;
	
	@Column(name="password")
    private String password;
	
	@Column(name="usertype")
	private String usertype;
	
	@Column(name="email")
	private String email;
	
	@Column(name="mobileno")
	private String mobileno;
	 
   public NewEmployee()
   {
	   userid=0;
	   usernm="";
	   password="";
	   usertype="";
	   email="";
	   mobileno="";
   }
	

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsernm() {
		return usernm;
	}

	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobno) {
		this.mobileno = mobno;
	}
   
   
   
   
}

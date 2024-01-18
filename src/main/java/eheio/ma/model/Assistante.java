package eheio.ma.model;

public class Assistante {
	private String login;
	private String pwd;
	
	public Assistante(String login,String pwd) {
		this.login=login;
		this.pwd=pwd;
	}
	
	
	public boolean verify() {
		return (login.equals("admin")&&pwd.equals("admin")) ? true : false;
	}
	

}

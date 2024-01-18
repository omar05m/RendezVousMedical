package eheio.ma.model;

public class Assistante {
	private String login;
	private String pwd;
	
	public Assistante() {
		this.login="admin";
		this.pwd="admin";
	}
	
	
	public boolean verify() {
		return (login==pwd);
	}
	

}

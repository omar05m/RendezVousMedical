package eheio.ma.model;

import java.util.Date;

public class Patient {
	private String nom;
	private String prenom;
	private String email;
	private Date dateNaissance;
	private String telephone;
	private String typeConsoltation;
	public Patient(String nom, String prenom, String email, Date dateNaissance, String telephone,
			String typeConsoltation) {
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.dateNaissance = dateNaissance;
		this.telephone = telephone;
		this.typeConsoltation = typeConsoltation;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDateNaissance() {
		return dateNaissance;
	}
	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getTypeConsoltation() {
		return typeConsoltation;
	}
	public void setTypeConsoltation(String typeConsoltation) {
		this.typeConsoltation = typeConsoltation;
	}
	
	

}

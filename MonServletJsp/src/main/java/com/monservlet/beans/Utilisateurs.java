package com.monservlet.beans;

public class Utilisateurs {
//	String nom,prenom,pseudo,email,password;
	
	private String nom;
	private String prenom;
	private String pseudo;
	private String email;
	private String password;
//
	public Utilisateurs(String nom,String prenom,String pseudo,String email,String password)
	{
	this.nom = nom;
	this.prenom = prenom;
	this.pseudo = pseudo;
	this.email = email;	
	this.password = password;
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
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}

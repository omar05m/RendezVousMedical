package eheio.ma.model;

public class Appointement {
	private String[] jours = {"lundi","mardi","mercredi","jeudi","vendredi"};
	private String[] hours = {"9:00","9:30","10:00","10:30","11:00","11:30","12:00","12:30","13:00","13:30","14:00","14:30","15:00","15:30","16:00","16:30"};
	private String[][] planning;
	
	public Appointement() {
		this.planning = new String[this.jours.length][this.hours.length];
	}
	
}

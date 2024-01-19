package eheio.ma.model;

public class RendezVouss {
    private int idRendezVous;
    private int idPatient;
    private int idAssistante;
    private String nomPatient;
    private String nomAssistante;
    private String emailPatient;
    private String telephonePatient;
    private String dateRendezVous;
    private String heureRendezVous;
    private int etatRendezVous;

    public RendezVouss(int idRendezVous, int idPatient, int idAssistante, String nomPatient, String nomAssistante, String emailPatient, String telephonePatient, String dateRendezVous, String heureRendezVous, int etatRendezVous) {
        this.idRendezVous = idRendezVous;
        this.idPatient = idPatient;
        this.idAssistante = idAssistante;
        this.nomPatient = nomPatient;
        this.nomAssistante = nomAssistante;
        this.emailPatient = emailPatient;
        this.telephonePatient = telephonePatient;
        this.dateRendezVous = dateRendezVous;
        this.heureRendezVous = heureRendezVous;
        this.etatRendezVous = etatRendezVous;
    }

    public RendezVouss() {
		// TODO Auto-generated constructor stub
	}

	public int getIdRendezVous() {
        return idRendezVous;
    }

    public int getIdPatient() {
        return idPatient;
    }

    public int getIdAssistante() {
        return idAssistante;
    }

    public String getNomPatient() {
        return nomPatient;
    }

    public String getNomAssistante() {
        return nomAssistante;
    }

    public String getEmailPatient() {
        return emailPatient;
    }

    public String getTelephonePatient() {
        return telephonePatient;
    }

    public String getDateRendezVous() {
        return dateRendezVous;
    }

    public String getHeureRendezVous() {
        return heureRendezVous;
    }

    public int getEtatRendezVous() {
        return etatRendezVous;
    }
    public void setIdRendezVous(int idRendezVous) {
        this.idRendezVous = idRendezVous;
    }

    public void setIdPatient(int idPatient) {
        this.idPatient = idPatient;
    }

    public void setIdAssistante(int idAssistante) {
        this.idAssistante = idAssistante;
    }

    public void setNomPatient(String nomPatient) {
        this.nomPatient = nomPatient;
    }

    public void setNomAssistante(String nomAssistante) {
        this.nomAssistante = nomAssistante;
    }

    public void setEmailPatient(String emailPatient) {
        this.emailPatient = emailPatient;
    }

    public void setTelephonePatient(String telephonePatient) {
        this.telephonePatient = telephonePatient;
    }

    public void setDateRendezVous(String dateRendezVous) {
        this.dateRendezVous = dateRendezVous;
    }

    public void setHeureRendezVous(String heureRendezVous) {
        this.heureRendezVous = heureRendezVous;
    }

    public void setEtatRendezVous(int etatRendezVous) {
        this.etatRendezVous = etatRendezVous;
    }
}

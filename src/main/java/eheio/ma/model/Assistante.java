package eheio.ma.model;

public class Assistante {
    private int idAssistante;
    private String nom;
    private String prenom;
    private String email;
    private String password;
    private String numeroDeTelephone;

    public Assistante(int idAssistante, String nom, String prenom, String email, String password, String numeroDeTelephone) {
        this.idAssistante = idAssistante;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.password = password;
        this.numeroDeTelephone = numeroDeTelephone;
    }
    public Assistante(String email, String password) {
        this.email = email;
        this.password = password;
    }

    // Getter and Setter methods for each attribute

    public int getIdAssistante() {
        return idAssistante;
    }

    public void setIdAssistante(int idAssistante) {
        this.idAssistante = idAssistante;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNumeroDeTelephone() {
        return numeroDeTelephone;
    }

    public void setNumeroDeTelephone(String numeroDeTelephone) {
        this.numeroDeTelephone = numeroDeTelephone;
    }

    public boolean verify() {
        return email.equals("admin") && password.equals("admin");
    }
}

package eheio.ma.model;


	public class Appointment {
	    private String firstName;
	    private String lastName;
	    private String email;
	    private String phone;
	    private String dateRdv;
	    private String message;

	    // Constructor
	    public Appointment(String firstName, String lastName, String email, String phone, String dateRdv, String message) {
	        this.firstName = firstName;
	        this.lastName = lastName;
	        this.email = email;
	        this.phone = phone;
	        this.dateRdv = dateRdv;
	        this.message = message;
	    }

	    // Getters and Setters
	    public String getFirstName() {
	        return firstName;
	    }

	    public void setFirstName(String firstName) {
	        this.firstName = firstName;
	    }

	    public String getLastName() {
	        return lastName;
	    }

	    public void setLastName(String lastName) {
	        this.lastName = lastName;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public String getPhone() {
	        return phone;
	    }

	    public void setPhone(String phone) {
	        this.phone = phone;
	    }

	    public String getDateRdv() {
	        return dateRdv;
	    }

	    public void setDateRdv(String dateRdv) {
	        this.dateRdv = dateRdv;
	    }

	    public String getMessage() {
	        return message;
	    }

	    public void setMessage(String message) {
	        this.message = message;
	    }
	}



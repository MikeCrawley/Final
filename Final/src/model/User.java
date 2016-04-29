package model;

import java.sql.Date;

import dbhelpers.AddUser;
import utilities.PasswordService;

/**
 * Java representation of the User table in the database
 * @author Mike
 *
 */
public class User {

	private int id;
	private String email;
	private java.util.Date createdate;
	private String password;
	private String username;
	private String tpassword;
	
	/**
	 * Constructor
	 * @param id  the unique user ID
	 * @param username  the unique user's username
	 * @param password	the password associated with the account
	 */
	public User(int id, String email, Date createdate, String password, String username) {
		this.id = id;
		this.email = email;
		this.createdate= createdate;
		this.password = password;
		this.username = username;
		this.tpassword=password;
		
		
				
	}

	public User() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * Return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * Set a new id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * Return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * Set a new username
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * Return the user's password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * Set a new password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the createdate
	 */
	public java.util.Date getCreatedate() {
		return createdate;
	}

	/**
	 * @param createdate the createdate to set
	 */
	public void setCreatedate(java.util.Date createdate) {
		this.createdate = createdate;
	}
}

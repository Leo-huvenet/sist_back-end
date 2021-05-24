package kr.co.sist.vo;

public class LoginVO {
	private String id,pass;
	
	public LoginVO(){
		
	}

	public LoginVO(String id, String pass) {
		this.id = id;
		this.pass = pass;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the pass
	 */
	public String getPass() {
		return pass;
	}

	/**
	 * @param pass the pass to set
	 */
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	
}

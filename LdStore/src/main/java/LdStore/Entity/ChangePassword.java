package LdStore.Entity;

public class ChangePassword {
	private int id;
	private String oldpass;
	private String confirmoldpass;
	private String newppass;
	private String confirmpass;
	public ChangePassword() {
		super();
	}
	public ChangePassword(int id, String oldpass, String confirmoldpass, String newppass, String confirmpass) {
		super();
		this.id = id;
		this.oldpass = oldpass;
		this.confirmoldpass = confirmoldpass;
		this.newppass = newppass;
		this.confirmpass = confirmpass;
	}

	public String getConfirmoldpass() {
		return confirmoldpass;
	}

	public void setConfirmoldpass(String confirmoldpass) {
		this.confirmoldpass = confirmoldpass;
	}

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOldpass() {
		return oldpass;
	}
	public void setOldpass(String oldpass) {
		this.oldpass = oldpass;
	}
	public String getNewppass() {
		return newppass;
	}
	public void setNewppass(String newppass) {
		this.newppass = newppass;
	}
	public String getConfirmpass() {
		return confirmpass;
	}
	public void setConfirmpass(String confirmpass) {
		this.confirmpass = confirmpass;
	}
	
}

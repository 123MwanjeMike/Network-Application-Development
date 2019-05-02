package kayenet;

public class Admin {

  // Add business logic below. (Right-click in editor and choose
  // "Insert Code > Add Business Method")
  private String userName;
	private String passWord;

	public void setUserName(String user){
		this.userName = user;
	}
	public void setPassWord(String pass){
		this.passWord = pass;
	}
	public String getUserName(){
		return userName;
	}
	public String getPassWord(){
		return passWord;
	}
}

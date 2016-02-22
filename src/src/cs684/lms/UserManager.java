package cs684.lms;
import java.sql.ResultSet;

public class UserManager 
{
	public UserManager()
	{
		_userId = -1;
		_userName = null;
	}
	
	private int _userId;
	private String _userName;
	
	public boolean IsValidUser(String user, String password)
	{
		ResultSet rs = null;
		
        String query = String.format(
        		"SELECT * FROM Users WHERE UserName = '%1$s' AND UserPassword = '%2$s'"
        		, user
        		, password); 
        
        try {
			rs = DatabaseLayer.ExecuteSQL(query);
			
			boolean isValid = false;
			
			if(rs.next() == true){
				isValid = true;
				
				_userId = rs.getInt("UserID");
				_userName = rs.getString("UserName");
			}
			
			rs.close();
			return isValid;
        }
        catch(Exception ex){
        	ex.printStackTrace();
        	return false;
        }
	}
	
	public int GetUserId(){return _userId;}
	public String GetUserName(){return _userName;}
}

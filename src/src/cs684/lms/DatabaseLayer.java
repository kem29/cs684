package cs684.lms;
import java.sql.*;

public class DatabaseLayer 
{
	private static final String DB_USER = "cs684root";
	private static final String DB_PW = "";
	
	public static ResultSet ExecuteSQL(String sql) throws Exception
	{
		String connectionURL = "jdbc:mysql://cs684.c2rndx2gsufe.us-east-1.rds.amazonaws.com:3306/cs684";
		Connection connection = null;
		Statement statement = null;
		ResultSet rs = null;
		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		
        connection = DriverManager.getConnection(connectionURL, DB_USER, DB_PW);
        statement = connection.createStatement();
        try {
			rs = statement.executeQuery(sql);
		} catch (Exception e) {
			throw e;
		}
        
		return rs;
	}
	
	public static void ExecuteUpdate(String sql) throws Exception
	{
		String connectionURL = "jdbc:mysql://cs684.c2rndx2gsufe.us-east-1.rds.amazonaws.com:3306/cs684";
		Connection connection = null;
		Statement statement = null;
		int result;
		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		
        connection = DriverManager.getConnection(connectionURL, DB_USER, DB_PW);
        statement = connection.createStatement();
        try {
        	result = statement.executeUpdate(sql);
		} 
        catch (Exception e) {
			throw e;
		}
	}
}

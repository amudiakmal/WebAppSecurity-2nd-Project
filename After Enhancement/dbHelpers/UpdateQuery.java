/**
 * 
 */
package dbHelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Coffee;

/**
 * @author Hilmi
 *
 */
public class UpdateQuery {
	
	private Connection connection;
	
	public UpdateQuery(String dbName, String uname, String pwd) {
		
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			this.connection = DriverManager.getConnection(url, uname, pwd);
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void doUpdate(Coffee coffee) {
		String query = "Call Update_coffe_info()";//calling update procedure
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, coffee.getcofname());
			ps.setString(2, coffee.getcofdesc());
			ps.setDouble(3, coffee.getcofvalue());
			ps.setInt(4, coffee.getcofcode());
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

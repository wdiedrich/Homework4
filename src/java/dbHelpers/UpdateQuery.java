
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cars;

public class UpdateQuery {
    
    private Connection conn;
    
    public UpdateQuery(){ 
        
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String password = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url,username, password);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void doUpdate(Cars car) {
        
        try {
            String query = "UPDATE cars SET carMake = ?, carModel = ?, favColor = ?, carYear = ?, carType = ? WHERE carID = ?";
            
            PreparedStatement ps = conn.prepareStatement(query);
            
            
            ps.setString(1, car.getCarMake());
            ps.setString(2, car.getCarModel());
            ps.setString(3, car.getFavColor());
            ps.setInt(4, car.getCarYear());
            ps.setString(5, car.getCarType());
            ps.setInt(6, car.getCarID());
            
            ps.executeUpdate();
                    
                    } catch (SQLException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}

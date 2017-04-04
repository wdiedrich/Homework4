package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cars;

/**
 *
 * @author Di3drich
 */
public class SearchQuery {

    private Connection conn;
    private ResultSet results;

    public SearchQuery() {
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String password = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void doSearch(String carMake) {

        try {
            String query = "SELECT * FROM cars WHERE UPPER(carMake) LIKE ? ORDER BY carID";

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + carMake.toUpperCase() + "%");
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getHTMLTable() {
        String table = "";
        try {
            table += "<table>";

            table += "<tr>";
            table += "<th>ID</th><th>Make</th><th>Model</th><th>Color</th><th>Year</th><th>Type</th><th>Action</th>";
            table += "</tr>";

            if (!this.results.isBeforeFirst()) {
                table += "<tr>";
                table += "<td colspan='7'> Sorry, this Make does not exist in the database</td>";
                table += "</tr>";
                table += "</table>";
            } else {

                try {
                    while (this.results.next()) {

                        Cars car = new Cars();
                        car.setCarID(this.results.getInt("carID"));
                        car.setCarMake(this.results.getString("carMake"));
                        car.setCarModel(this.results.getString("carModel"));
                        car.setFavColor(this.results.getString("favColor"));
                        car.setCarYear(this.results.getInt("carYear"));
                        car.setCarType(this.results.getString("carType"));

                        table += "<tr>";
                        table += "<td>";
                        table += car.getCarID();
                        table += "</td>";

                        table += "<td>";
                        table += car.getCarMake();
                        table += "</td>";

                        table += "<td>";
                        table += car.getCarModel();
                        table += "</td>";

                        table += "<td>";
                        table += car.getFavColor();
                        table += "</td>";

                        table += "<td>";
                        table += car.getCarYear();
                        table += "</td>";

                        table += "<td>";
                        table += car.getCarType();
                        table += "</td>";

                        table += "<td>";
                        table += "<a href=update?carID=" + car.getCarID() + ">Update</a>" + "<a href=delete?carID=" + car.getCarID() + "> Delete </a>";
                        table += "</td>";

                        table += "<tr>";
                    }
                    table += "</table>";


                } catch (SQLException ex) {
                    Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    return table;
    }
}
  
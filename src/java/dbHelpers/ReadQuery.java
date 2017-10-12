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
import model.Classes;


public class ReadQuery {
    
    private Connection conn;
    private ResultSet results;
    
    public ReadQuery(){
        
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
                    } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void doRead(){
        try {
            String query = "Select * from classes";
            PreparedStatement ps = conn.prepareStatement(query);
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public String getHTMLtable(){
        String table = "";
        
        table += "<table border=1>";
        
        try {
            while (this.results.next()){
                
                Classes classes = new Classes();
                classes.setClassID(this.results.getInt("ClassID"));
                classes.setClassName(this.results.getString("ClassName"));
                classes.setProfessorName(this.results.getString("ProfessorName"));
                classes.setClassroom(this.results.getString("Classroom"));
                classes.setOccupied(this.results.getInt("Occupied"));
                
                table += "<tr>";
                table += "<td>";
                table += classes.getClassID();
                table += "</td>";
                
                table += "<td>";
                table += classes.getClassName();
                table += "</td>";
                
                table += "<td>";
                table += classes.getProfessorName();
                table += "</td>";
                
                table += "<td>";
                table += classes.getClassroom();
                table += "</td>";
                
                table += "<td>";
                table += classes.getOccupied();
                table += "</td>";
                
                table += "<td>";
                table += "<a href=update?ClassID=" + classes.getClassID() + "> Update </a>" ;
                table += "<a href=delete?ClassID=" + classes.getClassID() + "> Delete </a>";
                table += "</td>";
                 
               
             
                
                
                table += "</tr>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
         table += "</table>";
          
       
                return table;
    }
}

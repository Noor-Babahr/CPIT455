package Group10_3DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author noorbabahr
 */
public class ConnectionDB {
    String URLConnector = "jdbc:mysql://localhost:3306/Group10_3?useSSL=false";
    String UserConnector = "Group10_3";
    String PaswordConnectorDB = "Group3dng";
    Connection con = null;
    PreparedStatement preparedStmt = null;
    ResultSet resultSet = null;
    String sqlQuery = "";

    public  ConnectionDB(){
        try{
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection(URLConnector, UserConnector, PaswordConnectorDB);

        }catch(SQLException e){
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
          
    } 
    //ID, FirstName, LastName, UserName, Pssword, PhoneNum, DOB
    public int AddEnfo(int ID, String FirstName, String LastName, String UserName,String Email, String Password, int PhoneNum)  {
        sqlQuery = "insert into TableGroup(ID, FirstName, LastName,UserName,Email,Password,PhoneNum)values('" + ID +
                "','" + FirstName + "','" + LastName + "','"+UserName+"','"+Email+"','"+"','"+Password+"','"+PhoneNum+ "');";

        int i=0;
        
        try{
            Statement stmt = con.createStatement();
             i=stmt.executeUpdate(sqlQuery);

        }
        catch(SQLException e){
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;
    }
        public int AddInfoAppointment(String UserName,String Date,String Time, String VaccineType)  {
        sqlQuery = "insert into apptable(UserName, Date, Time, VaccineType)values('" + UserName +
                "','" + Date + "','" + Time + "','" +VaccineType+"');";

        int i=0;
        
        try{
            Statement stmt = con.createStatement();
             i=stmt.executeUpdate(sqlQuery);

        }
        catch(SQLException e){
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;
    }

//    public int AddEnfoappointment(int ID, String Email,int PhoneNum,int Day,String Month,int Time, String Notes,String VaccineType)  {
//        sqlQuery = "insert into Appointment(ID, Email, PhoneNum, Day, Month, Time,Notes,VaccineType)values('" + ID +
//                "','" + Email + "','" + PhoneNum + "','" +Day+ "','"+ Month +"','"+Time+"','"+Notes+"','"+VaccineType+"');";
//
//        int i=0;
//        
//        try{
//            Statement stmt = con.createStatement();
//             i=stmt.executeUpdate(sqlQuery);
//
//        }
//        catch(SQLException e){
//            //System.out.print(e);
//            e.printStackTrace();
//        }
//        return i;
//    }
        public ResultSet userExist(String UserName, String Password) {
        //sqlQuery = "SELECT * FROM TableGroup WHERE UserName='"+UserName+"' AND Password='"+Password+"';";
        sqlQuery = "SELECT * FROM TableGroup WHERE UserName='"+UserName+"' AND Password='"+Password+"';";
                try {
            preparedStmt=con.prepareStatement(sqlQuery);
            resultSet=preparedStmt.executeQuery();

        } catch (SQLException ex) {
           
        }
        return resultSet;
 }
                //------------------------------------------------------------
                        public ResultSet ShowAllRecords() {
                    sqlQuery = "SELECT * FROM TableGroup;";
                    try {
                        preparedStmt = con.prepareStatement(sqlQuery);
                        resultSet =  preparedStmt.executeQuery();
                    } catch (SQLException e) {
                    }
                    return resultSet;
                }
     
}
package DataAccess;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {
    private Connection cnx=null;
    private String db="proyecto";
    private String url="jdbc:mysql://localhost:3306/"+db;
    private String user="root";
    private String password="";
    private ResultSet rs=null;
    private Statement st=null;

    public Conexion() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cnx=DriverManager.getConnection(url,user,password);
        }catch(SQLException e){
            e.printStackTrace();
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }
    }
    private boolean getConnection ()throws SQLException{
             if(cnx!=null){
                 return true;
             }else{
                 return false;
             }
         }  
    protected ResultSet findQuery (String Query) throws SQLException{
        if(getConnection()){
            st=cnx.createStatement();
            this.rs=st.executeQuery(Query);
        }
           return rs;
    }  
    protected boolean updateQuery (String Query) throws SQLException{
    boolean validate=false;
        if(getConnection()){
            st=cnx.createStatement();
        if(st.executeUpdate(Query)!=0){
            validate=true;
            }
        }
        return validate;
    }
    public Connection getConexion(){
        return cnx;
    }
}


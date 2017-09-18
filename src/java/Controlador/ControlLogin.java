package Controlador;

import DataAccess.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ControlLogin extends Conexion {

    public ControlLogin() {
    }
    public int Loguear(String usuario, String contraseña){
        PreparedStatement ps;
        ResultSet rs;
        int cont=0;
        int level=0;
        String sentencia="SELECT codeRol from proyecto where usuario='"+usuario+"' and contraseña='"+contraseña+"'";
        try{
            ps = getConexion().prepareStatement(sentencia);
            rs = ps.executeQuery();
            while(rs.next()){
                level=rs.getInt(1);
            }
            getConexion().close();
        }catch (SQLException e){
            System.err.println("Error"+e);
        }
         return level;
    }
}

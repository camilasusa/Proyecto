package Controlador;

import Dao.RolDao;
import DataAccess.Conexion;
import Modelo.Rol;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControlRol extends Conexion implements RolDao{
    private Rol rol;
    private List<Rol> listRol = new ArrayList<Rol>();
    private ResultSet rsRol;

    public ControlRol() {
    }

    public Rol getRol() {
        return rol;
    }

    public void setRol(Rol rol) {
        this.rol = rol;
    }

    public List<Rol> getListRol() {
        return listRol;
    }

    public void setListRol(List<Rol> listRol) {
        this.listRol = listRol;
    }

    public ResultSet getRsRol() {
        return rsRol;
    }

    public void setRsRol(ResultSet rsRol) {
        this.rsRol = rsRol;
    }
    @Override
    public List<Rol> findRol(){
        String sentencia="SELECT * from Rol";
        try{
            this.rsRol = findQuery(sentencia);
            while(rsRol.next()){
                rol = new Rol();
            rol.setCodeRol(rsRol.getLong("codeRol"));
            rol.setNameRol(rsRol.getString("nameRol"));
            this.listRol.add(rol);
            }
        }catch(SQLException e){
    }
        return listRol;
    }
    @Override
    public boolean CreateRol(Rol rol){
        boolean validate=false;
        try{
            String sentencia="INSERT into Rol values("+rol.getCodeRol()+",'"+rol.getNameRol()+"')";
            if(updateQuery(sentencia)){
                validate=true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return validate;
    }
    @Override
    public boolean UpdateRol(Rol rol){
        boolean validate=false;
        try{
            String sentencia="UPDATE Rol set nameRol='"+rol.getNameRol()+"' WHERE codeRol="+rol.getCodeRol()+"";
                if(updateQuery(sentencia)){
                    validate=true;
            }
        }catch(SQLException e){
            e.printStackTrace();
    }
        return validate;
    }
}

package Controlador;

import Dao.CargoDao;
import DataAccess.Conexion;
import Modelo.Cargo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControlCargo extends Conexion implements CargoDao  {
    private Cargo cargo;
    private List<Cargo> listCargo = new ArrayList<Cargo>();
    private ResultSet rsCargo;

    public ControlCargo() {
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }

    public List<Cargo> getListCargo() {
        return listCargo;
    }

    public void setListCargo(List<Cargo> listCargo) {
        this.listCargo = listCargo;
    }

    public ResultSet getRsCargo() {
        return rsCargo;
    }

    public void setRsCargo(ResultSet rsCargo) {
        this.rsCargo = rsCargo;
    }
    @Override
    public List<Cargo> findCargo(){
        String sentencia="SELECT * from Cargo";
        try{
            this.rsCargo = findQuery(sentencia);
            while(rsCargo.next()){
                cargo = new Cargo();
            cargo.setCodePosition(rsCargo.getLong("codePosition"));
            cargo.setNamePosition(rsCargo.getString("namePosition"));
            this.listCargo.add(cargo);
            }
        }catch(SQLException e){
        }
        return listCargo;
    }
    
    @Override
    public boolean CreateCargo(Cargo cargo){
        boolean validate=false;
        try{
            String sentencia="INSERT into Cargo values("+cargo.getCodePosition()+",'"+cargo.getNamePosition()+"')";
            if(updateQuery(sentencia)){
                validate=true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return validate;
    }
    @Override
    public boolean UpdateCargo(Cargo cargo){
        boolean validate=false;
        try{
            String sentencia="UPDATE Cargo set namePosition='"+cargo.getNamePosition()+"' WHERE codePosition="+cargo.getCodePosition()+"";
                if(updateQuery(sentencia)){
                    validate=true;
            }
        }catch(SQLException e){
            e.printStackTrace();
    }
        return validate;
    }
}


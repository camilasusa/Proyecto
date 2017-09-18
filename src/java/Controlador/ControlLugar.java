package Controlador;

import Dao.LugarDao;
import DataAccess.Conexion;
import Modelo.Lugar;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControlLugar extends Conexion implements LugarDao {
    private Lugar lugar;
    private List<Lugar> listLugar = new ArrayList<Lugar>();
    private ResultSet rsLugar;

    public ControlLugar() {
    }

    public Lugar getLugar() {
        return lugar;
    }

    public void setLugar(Lugar lugar) {
        this.lugar = lugar;
    }

    public List<Lugar> getListLugar() {
        return listLugar;
    }

    public void setListLugar(List<Lugar> listLugar) {
        this.listLugar = listLugar;
    }

    public ResultSet getRsLugar() {
        return rsLugar;
    }

    public void setRsLugar(ResultSet rsLugar) {
        this.rsLugar = rsLugar;
    }
    @Override
    public List<Lugar> findLugar(){
        String sentencia="SELECT * from Lugar";
        try{
            this.rsLugar = findQuery(sentencia);
            while(rsLugar.next()){
                lugar = new Lugar();
            lugar.setCodePlace(rsLugar.getLong("codePlace"));
            lugar.setNamePlace(rsLugar.getString("namePlace"));
            lugar.setAddressPlace(rsLugar.getString("addressPlace"));
            this.listLugar.add(lugar);
            }
        }catch(SQLException e){
        }
        return listLugar;
    }
    @Override
    public boolean CreateLugar(Lugar lug){
        boolean validate=false;
        try{
            String sentencia="INSERT into Lugar values("+lug.getCodePlace()+",'"+lug.getNamePlace()+"','"+lug.getAddressPlace()+"')";
            if(updateQuery(sentencia)){
                validate=true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return validate;
    }
    @Override
    public boolean UpdateLugar(Lugar lug){
        boolean validate=false;
        try{
            String sentencia="UPDATE Lugar set namePlace='"+lug.getNamePlace()+"', addressPlace='"+lug.getAddressPlace()+"' WHERE codePlace="+lug.getCodePlace()+"";
                if(updateQuery(sentencia)){
                    validate=true;
            }
        }catch(SQLException e){
            e.printStackTrace();
    }
        return validate;
    }
}

package Controlador;

import Dao.AreaDao;
import DataAccess.Conexion;
import Modelo.Area;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControlArea extends Conexion implements AreaDao {
    private Area area;
    private List<Area> listArea = new ArrayList<Area>();
    private ResultSet rsArea;

    public ControlArea() {
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public List<Area> getListArea() {
        return listArea;
    }

    public void setListArea(List<Area> listArea) {
        this.listArea = listArea;
    }

    public ResultSet getRsArea() {
        return rsArea;
    }

    public void setRsArea(ResultSet rsArea) {
        this.rsArea = rsArea;
    }
    
    @Override
    public List<Area> findArea(){
        String sentencia="SELECT * from Area";
        try{
            this.rsArea = findQuery(sentencia);
            while(rsArea.next()){
                area = new Area();
            area.setCodeArea(rsArea.getLong("codeArea"));
            area.setNameArea(rsArea.getString("nameArea"));
            this.listArea.add(area);
            }
        }catch(SQLException e){
    }
        return listArea;
    }
    @Override
    public boolean CreateArea(Area area){
        boolean validate=false;
        try{
            String sentencia="INSERT into Area values("+area.getCodeArea()+",'"+area.getNameArea()+"')";
            if(updateQuery(sentencia)){
                validate=true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return validate;
    }
    @Override
    public boolean UpdateArea(Area area){
        boolean validate=false;
        try{
            String sentencia="UPDATE Area set nameArea='"+area.getNameArea()+"' WHERE codeArea="+area.getCodeArea()+"";
                if(updateQuery(sentencia)){
                    validate=true;
            }
        }catch(SQLException e){
            e.printStackTrace();
    }
        return validate;
    }
}

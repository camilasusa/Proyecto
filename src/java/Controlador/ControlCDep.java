package Controlador;

import Dao.CDepDao;
import DataAccess.Conexion;
import Modelo.CDep;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControlCDep extends Conexion implements CDepDao{
    private CDep cdep;
    private List<CDep> listCDep = new ArrayList<CDep>();
    private ResultSet rsCDep;

    public ControlCDep() {
    }

    public CDep getCdep() {
        return cdep;
    }

    public void setCdep(CDep cdep) {
        this.cdep = cdep;
    }

    public List<CDep> getListCDep() {
        return listCDep;
    }

    public void setListCDep(List<CDep> listCDep) {
        this.listCDep = listCDep;
    }

    public ResultSet getRsCDep() {
        return rsCDep;
    }

    public void setRsCDep(ResultSet rsCDep) {
        this.rsCDep = rsCDep;
    }
    
    @Override
    public List<CDep> findCDep(){
        String sentencia="SELECT * from CDep";
        try{
            this.rsCDep = findQuery(sentencia);
            while(rsCDep.next()){
                cdep = new CDep();
            cdep.setCodeCDep(rsCDep.getLong("codeCDep"));
            cdep.setNameCDep(rsCDep.getString("nameCDep"));
            this.listCDep.add(cdep);
            }
        }catch(SQLException e){
    }
        return listCDep;
    }
    @Override
    public boolean CreateCDep(CDep cdep){
        boolean validate=false;
        try{
            String sentencia="INSERT into CDep values("+cdep.getCodeCDep()+",'"+cdep.getNameCDep()+"')";
            if(updateQuery(sentencia)){
                validate=true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return validate;
    }
}

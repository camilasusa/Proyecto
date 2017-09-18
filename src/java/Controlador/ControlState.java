package Controlador;

import Dao.EstadoDao;
import DataAccess.Conexion;
import Modelo.Estado;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControlState extends Conexion implements EstadoDao {
    private Estado estado;
    private List<Estado> listEstado = new ArrayList<Estado>();
    private ResultSet rsEstado;

    public ControlState() {
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public List<Estado> getListEstado() {
        return listEstado;
    }

    public void setListEstado(List<Estado> listEstado) {
        this.listEstado = listEstado;
    }

    public ResultSet getRsEstado() {
        return rsEstado;
    }

    public void setRsEstado(ResultSet rsEstado) {
        this.rsEstado = rsEstado;
    }
    @Override
    public List<Estado> findEstado(){
        String sentencia="SELECT * from Estado";
        try{
            this.rsEstado = findQuery(sentencia);
            while(rsEstado.next()){
                estado = new Estado();
            estado.setCodeState(rsEstado.getLong("codeState"));
            estado.setNameState(rsEstado.getString("nameState"));
            this.listEstado.add(estado);
            }
        }catch(SQLException e){
        }
        return listEstado;
    }
    
    @Override
    public boolean CreateEstado(Estado estado){
        boolean validate=false;
        try{
            String sentencia="INSERT into Estado values("+estado.getCodeState()+",'"+estado.getNameState()+"')";
            if(updateQuery(sentencia)){
                validate=true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return validate;
    }
}

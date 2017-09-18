package Controlador;

import Dao.ActividadDao;
import DataAccess.Conexion;
import Modelo.Actividad;
import Modelo.Estado;
import Modelo.Lugar;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControlActividad extends Conexion implements ActividadDao {
    private Actividad actividad;
    private Lugar lugar;
    private Estado estado;
    private List<Actividad> listActividad = new ArrayList<Actividad>();
    private List<Lugar> listLugar = new ArrayList<Lugar>();
    private List<Estado> listEstado = new ArrayList<Estado>();
    private ResultSet rsActividad;

    public ControlActividad() {
    }

    public Actividad getActividad() {
        return actividad;
    }

    public void setActividad(Actividad actividad) {
        this.actividad = actividad;
    }

    public Lugar getLugar() {
        return lugar;
    }

    public void setLugar(Lugar lugar) {
        this.lugar = lugar;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public List<Actividad> getListActividad() {
        return listActividad;
    }

    public void setListActividad(List<Actividad> listActividad) {
        this.listActividad = listActividad;
    }

    public List<Lugar> getListLugar() {
        return listLugar;
    }

    public void setListLugar(List<Lugar> listLugar) {
        this.listLugar = listLugar;
    }

    public List<Estado> getListEstado() {
        return listEstado;
    }

    public void setListEstado(List<Estado> listEstado) {
        this.listEstado = listEstado;
    }

    public ResultSet getRsActividad() {
        return rsActividad;
    }

    public void setRsActividad(ResultSet rsActividad) {
        this.rsActividad = rsActividad;
    }
    @Override
        public List<Actividad> findActividad(){
        String sentencia="SELECT * from Actividad";
        try{
            this.rsActividad = this.findQuery(sentencia);
            while(rsActividad.next()){
                actividad = new Actividad();
                lugar = new Lugar();
                estado = new Estado();
            actividad.setCodeActivity(rsActividad.getLong("codeActivity"));
            actividad.setNameActivity(rsActividad.getString("nameActivity"));
            lugar.setCodePlace(rsActividad.getLong("codePlace"));
            lugar.setNamePlace(findNameLugar(lugar.getCodePlace()));
            actividad.setLugar(lugar);
            actividad.setDescriptionActivity(rsActividad.getString("descriptionActivity"));
            actividad.setStartDate(rsActividad.getString("startDate"));
            actividad.setEndDate(rsActividad.getString("endDate"));
            actividad.setStartTime(rsActividad.getString("startTime"));
            actividad.setEndTime(rsActividad.getString("endTime"));
            actividad.setTypeActivity(rsActividad.getString("typeActivity"));
            estado.setCodeState(rsActividad.getLong("codeState"));
            estado.setNameState(findNameEstado(estado.getCodeState()));
            actividad.setEstado(estado);
            this.listActividad.add(actividad);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listActividad;
    }
    @Override
        public String findNameLugar(long lug){
        String nombreLugar="";
        String sentencia="SELECT namePlace from Lugar WHERE codePlace="+lug+"";
        try{
            ResultSet rsNombreLugar = this.findQuery(sentencia);
            if(rsNombreLugar.next()){
                nombreLugar = rsNombreLugar.getString("namePlace");
            }
        }catch(SQLException e){  
        }
        return nombreLugar;
    }
    @Override
        public String findNameEstado(long est){
        String nombreEstado="";
        String sentencia="SELECT nameState from Estado WHERE codeState="+est+"";
        try{
            ResultSet rsNombreEstado = this.findQuery(sentencia);
            if(rsNombreEstado.next()){
                nombreEstado = rsNombreEstado.getString("nameState");
            }
        }catch(SQLException e){  
        }
        return nombreEstado;
    }    
    @Override
    public boolean CreateActividad(Actividad act){
        boolean validate=false;
        String sentencia="INSERT INTO Actividad VALUES("+act.getCodeActivity()+",'"+act.getNameActivity()+"',"+act.getLugar().getCodePlace()+",'"+act.getDescriptionActivity()+"','"+act.getStartDate()+"','"+act.getEndDate()+"','"+act.getStartTime()+"','"+act.getEndTime()+"','"+act.getTypeActivity()+"',"+act.getEstado().getCodeState()+")";
    try{
        if(updateQuery(sentencia)){
            validate=true;
            }    
        }catch(SQLException e){
        }
            return validate;
    }
    @Override
    public boolean updateActividad(Actividad act){
       boolean validate=false;
    try{
        String sentencia="UPDATE Actividad set nameActivity='"+act.getNameActivity()+"', codePlace="+act.getLugar().getCodePlace()+", descriptionActivity='"+act.getDescriptionActivity()+"', startDate='"+act.getStartDate()+"', endDate='"+act.getEndDate()+"', startTime='"+act.getStartTime()+"', endTime='"+act.getEndTime()+"', typeActivity='"+act.getTypeActivity()+"', codeState="+act.getEstado().getCodeState()+" WHERE codeActivity="+act.getCodeActivity()+"";
        if(updateQuery(sentencia)){
            validate=true;
        }       
    }catch(SQLException e){
        e.printStackTrace();
    }
    return validate;
    }
}

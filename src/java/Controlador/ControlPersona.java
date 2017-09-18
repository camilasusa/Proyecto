package Controlador;

import Dao.PersonaDao;
import DataAccess.Conexion;
import Modelo.Area;
import Modelo.CDep;
import Modelo.Cargo;
import Modelo.Estado;
import Modelo.Persona;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControlPersona extends Conexion implements PersonaDao {
   private Persona persona;
   private Estado estado;
   private Area area;
   private Cargo cargo;
   private CDep cdep;
   private List<Persona> listPersona = new ArrayList<Persona>();
   private List<Estado> listEstado = new ArrayList<Estado>();
   private List<Area> listArea = new ArrayList<Area>();
   private List<Cargo> listCargo = new ArrayList<Cargo>();
   private List<CDep> listCDep = new ArrayList<CDep>();
   private ResultSet rsPersona;

    public ControlPersona() {
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }

    public CDep getCdep() {
        return cdep;
    }

    public void setCdep(CDep cdep) {
        this.cdep = cdep;
    }

    public List<Persona> getListPersona() {
        return listPersona;
    }

    public void setListPersona(List<Persona> listPersona) {
        this.listPersona = listPersona;
    }

    public List<Estado> getListEstado() {
        return listEstado;
    }

    public void setListEstado(List<Estado> listEstado) {
        this.listEstado = listEstado;
    }

    public List<Area> getListArea() {
        return listArea;
    }

    public void setListArea(List<Area> listArea) {
        this.listArea = listArea;
    }

    public List<Cargo> getListCargo() {
        return listCargo;
    }

    public void setListCargo(List<Cargo> listCargo) {
        this.listCargo = listCargo;
    }

    public List<CDep> getListCDep() {
        return listCDep;
    }

    public void setListCDep(List<CDep> listCDep) {
        this.listCDep = listCDep;
    }

    public ResultSet getRsPersona() {
        return rsPersona;
    }

    public void setRsPersona(ResultSet rsPersona) {
        this.rsPersona = rsPersona;
    }
    
   @Override
   public String findNameEstado(long estado){
       String nombreEstado="";
       String sentencia="SELECT nameState from Estado WHERE codeState="+estado+"";
       try{
           ResultSet rsNameEstado = this.findQuery(sentencia);
           if(rsNameEstado.next()){
               nombreEstado = rsNameEstado.getString("nameState");
        }
    }catch(SQLException e){
}
    return nombreEstado;
}
   @Override
   public String findNameArea(long area){
       String nombreArea="";
       String sentencia="SELECT nameArea from Area WHERE codeArea="+area+"";
       try{
           ResultSet rsNameArea = this.findQuery(sentencia);
           if(rsNameArea.next()){
               nombreArea = rsNameArea.getString("nameArea");
        }
    }catch(SQLException e){
}
    return nombreArea;
}
   @Override
   public String findNameCargo(long cargo){
       String nombreCargo="";
       String sentencia="SELECT namePosition from Cargo WHERE codePosition="+cargo+"";
       try{
           ResultSet rsNameCargo = this.findQuery(sentencia);
           if(rsNameCargo.next()){
               nombreCargo = rsNameCargo.getString("namePosition");
        }
    }catch(SQLException e){
}
    return nombreCargo;
}
   @Override
   public String findNameCDep(long cdep){
       String nombreCDep="";
       String sentencia="SELECT nameCDep from CDep WHERE codeCDep="+cdep+"";
       try{
           ResultSet rsNameCDep = this.findQuery(sentencia);
           if(rsNameCDep.next()){
               nombreCDep = rsNameCDep.getString("nameCDep");
        }
    }catch(SQLException e){
}
    return nombreCDep;
}
   @Override
    public List<Persona> findPersona(){
        String sentencia="SELECT * from Persona";
        try{
            this.rsPersona = this.findQuery(sentencia);
            while(rsPersona.next()){
                persona = new Persona();
                estado = new Estado();
                area = new Area();
                cargo = new Cargo();
                cdep = new CDep();
            persona.setIdPeople(rsPersona.getLong("idPeople"));
            persona.setDocumentPeople(rsPersona.getLong("documentPeople"));
            persona.setFullName(rsPersona.getString("fullName"));
            persona.setGender(rsPersona.getString("gender"));
            persona.setPhone(rsPersona.getLong("phone"));
            persona.setAddress(rsPersona.getString("address"));
            persona.setEmail(rsPersona.getString("email"));
            persona.setRegisteredBy(rsPersona.getString("registeredBy"));
            estado.setCodeState(rsPersona.getLong("codeState"));
            estado.setNameState(findNameEstado(estado.getCodeState()));
            area.setCodeArea(rsPersona.getLong("codeArea"));
            area.setNameArea(findNameArea(area.getCodeArea()));
            cargo.setCodePosition(rsPersona.getLong("codePosition"));
            cargo.setNamePosition(findNameCargo(cargo.getCodePosition()));
            cdep.setCodeCDep(rsPersona.getLong("codeCDep"));
            cdep.setNameCDep(findNameCDep(cdep.getCodeCDep()));
            persona.setEstado(estado);
            persona.setArea(area);
            persona.setCargo(cargo);
            persona.setCdep(cdep);
            this.listPersona.add(persona);
            }
        }catch(SQLException e){
        }
        return listPersona;
    }
    @Override
    public boolean UpdatePersona(Persona persona){
        boolean validate=false;
        try{
            String sentencia="UPDATE Persona set documentPeople="+persona.getDocumentPeople()+", fullName='"+persona.getFullName()+"', gender='"+persona.getGender()+"', phone="+persona.getPhone()+", address='"+persona.getAddress()+"', registeredBy='"+persona.getRegisteredBy()+"', codeState="+estado.getCodeState()+", codeArea="+area.getCodeArea()+", codePosition="+cargo.getCodePosition()+", codeCDep="+cdep.getCodeCDep()+" WHERE idPeople="+persona.getIdPeople()+"";
                if(updateQuery(sentencia)){
                    validate=true;
            }
        }catch(SQLException e){
            e.printStackTrace();
    }
        return validate;
    }
    @Override
    public boolean CreatePersona(Persona persona){
        boolean validate=false;
        try{
            String sentencia="INSERT into Persona values("+persona.getIdPeople()+","+persona.getDocumentPeople()+",'"+persona.getFullName()+"','"+persona.getGender()+"',"+persona.getPhone()+",'"+persona.getAddress()+"','"+persona.getEmail()+"','"+persona.getRegisteredBy()+"',"+persona.getEstado().getCodeState()+","+persona.getArea().getCodeArea()+","+persona.getCargo().getCodePosition()+","+persona.getCdep().getCodeCDep()+")";
            if(updateQuery(sentencia)){
                validate=true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return validate;
    }
}

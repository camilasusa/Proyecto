package Controlador;
import Dao.GrupoDao;
import DataAccess.Conexion;
import Modelo.Grupo;
import Modelo.Persona;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControlGrupo extends Conexion implements GrupoDao {
    private Grupo grupo;
    private Persona persona;
    private List<Grupo> listGrupo = new ArrayList<Grupo>();
    private List<Persona> listPersona = new ArrayList<Persona>();
    private ResultSet rsGrupo;

    public ControlGrupo() {
    }

    public Grupo getGrupo() {
        return grupo;
    }

    public void setGrupo(Grupo grupo) {
        this.grupo = grupo;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    public List<Grupo> getListGrupo() {
        return listGrupo;
    }

    public void setListGrupo(List<Grupo> listGrupo) {
        this.listGrupo = listGrupo;
    }

    public List<Persona> getListPersona() {
        return listPersona;
    }

    public void setListPersona(List<Persona> listPersona) {
        this.listPersona = listPersona;
    }

    public ResultSet getRsGrupo() {
        return rsGrupo;
    }

    public void setRsGrupo(ResultSet rsGrupo) {
        this.rsGrupo = rsGrupo;
    } 
    @Override
        public List<Grupo> findGrupo(){
        String sentencia="SELECT * from Grupo";
        try{
            this.rsGrupo = this.findQuery(sentencia);
            while(rsGrupo.next()){
                grupo = new Grupo();
                persona = new Persona();
            grupo.setIdGroup(rsGrupo.getLong("idGroup"));
            grupo.setNumberGroup(rsGrupo.getLong("numberGroup"));
            persona.setIdPeople(rsGrupo.getLong("idPeople"));
            persona.setFullName(findNamePersona(persona.getIdPeople()));
            grupo.setPersona(persona);
            this.listGrupo.add(grupo);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listGrupo;
    }
    @Override
    public String findNamePersona(long id){
        String nombrePersona="";
        String sentencia="SELECT fullName from Persona WHERE idPeople="+id+"";
        try{
            ResultSet rsNombrePersona = this.findQuery(sentencia);
            if(rsNombrePersona.next()){
                nombrePersona = rsNombrePersona.getString("fullName");
            }
        }catch(SQLException e){  
        }
        return nombrePersona;
    }
    @Override
    public boolean CreateGrupo(Grupo gru){
        boolean validate=false;
        String sentencia="INSERT INTO Grupo VALUES("+gru.getIdGroup()+","+gru.getNumberGroup()+","+gru.getPersona().getIdPeople()+")";
    try{
        if(updateQuery(sentencia)){
            validate=true;
            }    
        }catch(SQLException e){
        }
            return validate;
    }
    @Override
    public boolean updateGrupo(Grupo gru){
       boolean validate=false;
    try{
        String sentencia="UPDATE Grupo set numberGroup="+gru.getNumberGroup()+", idPeople="+persona.getIdPeople()+" WHERE idGroup="+gru.getIdGroup()+"";
        if(updateQuery(sentencia)){
            validate=true;
        }       
    }catch(SQLException e){
        e.printStackTrace();
    }
    return validate;
    }
}
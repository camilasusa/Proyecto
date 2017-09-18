package Dao;

import Modelo.Persona;
import java.util.List;

public interface PersonaDao {
    public String findNameEstado(long estado);
    public String findNameArea(long area);
    public String findNameCargo(long cargo);
    public String findNameCDep(long cdep);
    public List<Persona> findPersona();
    public boolean UpdatePersona(Persona persona);
    public boolean CreatePersona(Persona persona);
}

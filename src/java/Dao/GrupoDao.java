package Dao;

import Modelo.Grupo;
import java.util.List;

public interface GrupoDao {
    public List<Grupo> findGrupo();
    public String findNamePersona(long id);
    public boolean CreateGrupo(Grupo gru);
    public boolean updateGrupo(Grupo gru);
}

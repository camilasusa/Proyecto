package Dao;

import Modelo.Estado;
import java.util.List;

public interface EstadoDao {
    public List<Estado> findEstado();
    public boolean CreateEstado(Estado estado);
}

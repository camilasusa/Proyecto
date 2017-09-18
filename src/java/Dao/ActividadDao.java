
package Dao;

import Modelo.Actividad;
import java.util.List;

public interface ActividadDao {
    public List<Actividad> findActividad();
    public String findNameLugar(long lug);
    public String findNameEstado(long est);
    public boolean CreateActividad(Actividad act);
    public boolean updateActividad(Actividad act);
}

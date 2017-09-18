package Dao;

import Modelo.Lugar;
import java.util.List;

public interface LugarDao {
    public List<Lugar> findLugar();
    public boolean CreateLugar(Lugar lug);
    public boolean UpdateLugar(Lugar lug);
}

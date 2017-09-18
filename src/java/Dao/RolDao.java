package Dao;

import Modelo.Rol;
import java.util.List;

public interface RolDao {
    public List<Rol> findRol();
    public boolean CreateRol(Rol rol);
    public boolean UpdateRol(Rol rol);
}

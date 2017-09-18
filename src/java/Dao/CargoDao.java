package Dao;

import Modelo.Cargo;
import java.util.List;

public interface CargoDao {
     public List<Cargo> findCargo();
     public boolean CreateCargo(Cargo cargo);
     public boolean UpdateCargo(Cargo cargo);
}

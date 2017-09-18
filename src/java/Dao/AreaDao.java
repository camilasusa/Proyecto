package Dao;

import Modelo.Area;
import java.util.List;

public interface AreaDao {
    public List<Area> findArea();
    public boolean CreateArea(Area area);
    public boolean UpdateArea(Area area);
}

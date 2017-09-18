package Dao;

import Modelo.CDep;
import java.util.List;

public interface CDepDao {
    public List<CDep> findCDep();
    public boolean CreateCDep(CDep cdep);
}

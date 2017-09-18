package Modelo;

public class CDep {
    private long codeCDep;
    private String nameCDep;

    public CDep() {
    }

    public CDep(long codeCDep, String nameCDep) {
        this.codeCDep = codeCDep;
        this.nameCDep = nameCDep;
    }

    public long getCodeCDep() {
        return codeCDep;
    }

    public void setCodeCDep(long codeCDep) {
        this.codeCDep = codeCDep;
    }

    public String getNameCDep() {
        return nameCDep;
    }

    public void setNameCDep(String nameCDep) {
        this.nameCDep = nameCDep;
    }
}

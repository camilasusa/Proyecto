package Modelo;

public class Rol {
    private long codeRol;
    private String nameRol;

    public Rol() {
    }

    public Rol(long codeRol, String nameRol) {
        this.codeRol = codeRol;
        this.nameRol = nameRol;
    }

    public long getCodeRol() {
        return codeRol;
    }

    public void setCodeRol(long codeRol) {
        this.codeRol = codeRol;
    }

    public String getNameRol() {
        return nameRol;
    }

    public void setNameRol(String nameRol) {
        this.nameRol = nameRol;
    }
}

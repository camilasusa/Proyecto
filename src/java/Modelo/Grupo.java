package Modelo;

public class Grupo {
    private long idGroup;
    private long numberGroup;
    private Persona persona;

    public Grupo() {
    }

    public Grupo(long idGroup, long numberGroup, Persona persona) {
        this.idGroup = idGroup;
        this.numberGroup = numberGroup;
        this.persona = persona;
    }

    public long getIdGroup() {
        return idGroup;
    }

    public void setIdGroup(long idGroup) {
        this.idGroup = idGroup;
    }

    public long getNumberGroup() {
        return numberGroup;
    }

    public void setNumberGroup(long numberGroup) {
        this.numberGroup = numberGroup;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }
}
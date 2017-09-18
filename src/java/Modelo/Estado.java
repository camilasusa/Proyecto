package Modelo;

public class Estado {
   private long codeState;
   private String nameState;

    public Estado() {
    }
    public Estado(long codeState, String nameState) {
        this.codeState = codeState;
        this.nameState = nameState;
    }

    public long getCodeState() {
        return codeState;
    }

    public void setCodeState(long codeState) {
        this.codeState = codeState;
    }

    public String getNameState() {
        return nameState;
    }

    public void setNameState(String nameState) {
        this.nameState = nameState;
    }
}

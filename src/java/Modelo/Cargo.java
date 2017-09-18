package Modelo;

public class Cargo {
  private long codePosition;
  private String namePosition;

    public Cargo() {
    }
    
    public Cargo(long codePosition, String namePosition) {
        this.codePosition = codePosition;
        this.namePosition = namePosition;
    }

    public long getCodePosition() {
        return codePosition;
    }

    public void setCodePosition(long codePosition) {
        this.codePosition = codePosition;
    }

    public String getNamePosition() {
        return namePosition;
    }

    public void setNamePosition(String namePosition) {
        this.namePosition = namePosition;
    }
}

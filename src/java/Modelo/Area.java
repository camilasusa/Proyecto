package Modelo;

public class Area {
   private long codeArea;
   private String nameArea;

    public Area() {
    }

    public Area(long codeArea, String nameArea) {
        this.codeArea = codeArea;
        this.nameArea = nameArea;
    }

    public long getCodeArea() {
        return codeArea;
    }

    public void setCodeArea(long codeArea) {
        this.codeArea = codeArea;
    }

    public String getNameArea() {
        return nameArea;
    }

    public void setNameArea(String nameArea) {
        this.nameArea = nameArea;
    }
}
    
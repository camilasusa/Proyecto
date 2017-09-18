package Modelo;

public class Lugar {
   private long codePlace;
   private String namePlace;
   private String addressPlace;

    public Lugar() {
    }
    
    public Lugar(long codePlace, String namePlace, String addressPlace) {
        this.codePlace = codePlace;
        this.namePlace = namePlace;
        this.addressPlace = addressPlace;
    }

    public long getCodePlace() {
        return codePlace;
    }

    public void setCodePlace(long codePlace) {
        this.codePlace = codePlace;
    }

    public String getNamePlace() {
        return namePlace;
    }

    public void setNamePlace(String namePlace) {
        this.namePlace = namePlace;
    }

    public String getAddressPlace() {
        return addressPlace;
    }

    public void setAddressPlace(String addressPlace) {
        this.addressPlace = addressPlace;
    }
}

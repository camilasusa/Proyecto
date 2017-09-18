package Modelo;


public class Actividad {
   private long codeActivity;
   private String nameActivity;
   private Lugar lugar;
   private String descriptionActivity;
   private String startDate;
   private String endDate;
   private String startTime;
   private String endTime;
   private String typeActivity;
   private Estado estado;

    public Actividad() {
    }

    public Actividad(long codeActivity, String nameActivity, Lugar lugar, String descriptionActivity, String startDate, String endDate, String startTime, String endTime, String typeActivity, Estado estado) {
        this.codeActivity = codeActivity;
        this.nameActivity = nameActivity;
        this.lugar = lugar;
        this.descriptionActivity = descriptionActivity;
        this.startDate = startDate;
        this.endDate = endDate;
        this.startTime = startTime;
        this.endTime = endTime;
        this.typeActivity = typeActivity;
        this.estado = estado;
    }

    public long getCodeActivity() {
        return codeActivity;
    }

    public void setCodeActivity(long codeActivity) {
        this.codeActivity = codeActivity;
    }

    public String getNameActivity() {
        return nameActivity;
    }

    public void setNameActivity(String nameActivity) {
        this.nameActivity = nameActivity;
    }

    public Lugar getLugar() {
        return lugar;
    }

    public void setLugar(Lugar lugar) {
        this.lugar = lugar;
    }

    public String getDescriptionActivity() {
        return descriptionActivity;
    }

    public void setDescriptionActivity(String descriptionActivity) {
        this.descriptionActivity = descriptionActivity;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getTypeActivity() {
        return typeActivity;
    }

    public void setTypeActivity(String typeActivity) {
        this.typeActivity = typeActivity;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }
}
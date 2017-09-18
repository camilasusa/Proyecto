package Modelo;

public class PF {
  private long codeProgramTraining;
    private String nameProgramTraining;

    public PF() {
    }

    public PF(long codeProgramTraining, String nameProgramTraining) {
        this.codeProgramTraining = codeProgramTraining;
        this.nameProgramTraining = nameProgramTraining;
    }

    public long getCodeProgramTraining() {
        return codeProgramTraining;
    }

    public void setCodeProgramTraining(long codeProgramTraining) {
        this.codeProgramTraining = codeProgramTraining;
    }

    public String getNameProgramTraining() {
        return nameProgramTraining;
    }

    public void setNameProgramTraining(String nameProgramTraining) {
        this.nameProgramTraining = nameProgramTraining;
    }
}

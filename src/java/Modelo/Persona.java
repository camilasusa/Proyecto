package Modelo;

public class Persona {
    private long idPeople;
    private long documentPeople;
    private String fullName;
    private String gender;
    private long phone;
    private String address;
    private String email;
    private String registeredBy;
    private Estado estado;
    private Area area;
    private Cargo cargo;
    private CDep cdep;

    public Persona() {
    }

    public Persona(long idPeople, long documentPeople, String fullName, String gender, long phone, String address, String email, String registeredBy, Estado estado, Area area, Cargo cargo, CDep cdep) {
        this.idPeople = idPeople;
        this.documentPeople = documentPeople;
        this.fullName = fullName;
        this.gender = gender;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.registeredBy = registeredBy;
        this.estado = estado;
        this.area = area;
        this.cargo = cargo;
        this.cdep = cdep;
    }

    public long getIdPeople() {
        return idPeople;
    }

    public void setIdPeople(long idPeople) {
        this.idPeople = idPeople;
    }

    public long getDocumentPeople() {
        return documentPeople;
    }

    public void setDocumentPeople(long documentPeople) {
        this.documentPeople = documentPeople;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRegisteredBy() {
        return registeredBy;
    }

    public void setRegisteredBy(String registeredBy) {
        this.registeredBy = registeredBy;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }

    public CDep getCdep() {
        return cdep;
    }

    public void setCdep(CDep cdep) {
        this.cdep = cdep;
    }
}

    

    
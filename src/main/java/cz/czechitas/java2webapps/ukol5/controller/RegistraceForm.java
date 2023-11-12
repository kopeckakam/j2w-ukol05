package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.constraints.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.time.Period;

public class RegistraceForm {

    @NotBlank
    private String jmeno;
    @NotBlank
    private String prijmeni;
    @NotNull
    private LocalDate datumNarozeni;
    @Min(9)
    @Max(15)
    private int vek;
    @NotBlank
    private String pohlavi;
    @NotBlank
    private String turnus;
    @Email
    private String email;
    @Pattern(regexp = "[\\d]{0,9}")
    private String telefon;

    public RegistraceForm() {
    }

    public String getJmeno() {
        return jmeno;
    }

    public LocalDate getDatumNarozeni() {
        return datumNarozeni;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }

    public int getVek() {
        return vek;
    }

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public void setDatumNarozeni(LocalDate datumNarozeni) {
        Period period = datumNarozeni.until(LocalDate.now());
        this.vek = period.getYears();
        this.datumNarozeni = datumNarozeni;
    }

    public void setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }

    public String getPrijmeni() {
        return prijmeni;
    }

    public String getPohlavi() {
        return pohlavi;
    }

    public String getTurnus() {
        return turnus;
    }

    public void setPohlavi(String pohlavi) {
        this.pohlavi = pohlavi;
    }

    public void setTurnus(String turnus) {
        this.turnus = turnus;
    }

    public String getEmail() {
        return email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }
}

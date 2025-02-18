package org.example.practica09sanchezlanchacarlos;
import java.io.Serializable;

public class UsuarioBean implements Serializable {
    private String nombre;
    private String apellido;
    private String fechaNacimiento; // Usar String para compatibilidad con JSP

    public UsuarioBean() {}

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
}


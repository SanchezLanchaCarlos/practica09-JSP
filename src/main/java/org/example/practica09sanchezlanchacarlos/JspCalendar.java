package org.example.practica09sanchezlanchacarlos;

import java.util.Calendar;

public class JspCalendar {
    private int dia;
    private int mes;
    private int anio;

    public void setFechaNacimiento(String fecha) {
        if (fecha == null || fecha.isEmpty()) {
            throw new IllegalArgumentException("La fecha de nacimiento no puede estar vacía.");
        }

        String[] partes = fecha.split("-");
        if (partes.length != 3) {
            throw new IllegalArgumentException("Formato de fecha incorrecto. Debe ser YYYY-MM-DD.");
        }

        try {
            this.anio = Integer.parseInt(partes[0]);
            this.mes = Integer.parseInt(partes[1]);
            this.dia = Integer.parseInt(partes[2]);

            if (this.mes < 1 || this.mes > 12 || this.dia < 1 || this.dia > 31) {
                throw new IllegalArgumentException("Fecha de nacimiento no válida.");
            }
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("La fecha de nacimiento debe contener solo números.");
        }
    }

    public int getEdad() {
        Calendar hoy = Calendar.getInstance();
        int edad = hoy.get(Calendar.YEAR) - this.anio;

        if (hoy.get(Calendar.MONTH) + 1 < this.mes ||
                (hoy.get(Calendar.MONTH) + 1 == this.mes && hoy.get(Calendar.DAY_OF_MONTH) < this.dia)) {
            edad--;
        }

        return edad;
    }

    public String getSignoZodiaco() {
        String[] signos = {"Capricornio", "Acuario", "Piscis", "Aries", "Tauro", "Géminis",
                "Cáncer", "Leo", "Virgo", "Libra", "Escorpio", "Sagitario"};
        int[] diasLimite = {20, 19, 20, 20, 21, 21, 22, 22, 22, 23, 22, 21};

        if (dia <= diasLimite[mes - 1]) {
            return signos[mes - 1];
        } else {
            return signos[mes % 12];
        }
    }
}

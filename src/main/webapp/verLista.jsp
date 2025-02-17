<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Lista de Elementos</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<header>
    <h1><%= "Ver Lista de Deportes" %>
    </h1>
    <nav>
        <ul>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="verTabla.jsp">Ver Tabla</a></li>
        </ul>
        <button onclick="window.location.href='verZodiaco.jsp'">Ver Zodiaco</button>
    </nav>
</header>

<section class="lista-container">
    <%
        class Elemento {
            String nombre, grupo, imagen;
            int numero;
            String fecha;

            public Elemento(String nombre, String grupo, int numero, String imagen, String fecha) {
                this.nombre = nombre;
                this.grupo = grupo;
                this.numero = numero;
                this.imagen = imagen;
                this.fecha = fecha;
            }
        }

        List<Elemento> elementos = new ArrayList<>();
        elementos.add(new Elemento("Fútbol", "Grupal", 11, "imagenes/futbol.jpg", "1863"));
        elementos.add(new Elemento("Baloncesto", "Grupal", 5, "imagenes/baloncesto.jpeg", "1891"));
        elementos.add(new Elemento("Tenis", "Individual", 54, "imagenes/tenis.jpg", "-"));
        elementos.add(new Elemento("Padel", "Parejas", 35, "imagenes/padel.jpeg", "-"));
        elementos.add(new Elemento("Ping-Pong", "Individual", 48, "imagenes/ping-pong.jpg", "-"));
    %>

    <% for (Elemento e : elementos) { %>
    <article>
        <h2><%= e.nombre %>
        </h2>
        <img src="<%= e.imagen %>" alt="<%= e.nombre %>"width="300" height="200">
        <p><strong>Grupo:</strong> <%= e.grupo %>
        </p>
        <p><strong>Número:</strong> <%= e.numero %>
        </p>
        <p><strong>Fecha:</strong> <%= e.fecha %>
        </p>
    </article>
    <% } %>
</section>

<footer>
    <p><%= "Derechos reservados &copy; 2025 | Creado por el equipo de desarrollo" %>
    </p>
</footer>
</body>
</html>
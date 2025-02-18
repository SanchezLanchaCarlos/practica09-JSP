<%@ page import="org.example.practica09sanchezlanchacarlos.*" %>
<jsp:useBean id="calendario" class="org.example.practica09sanchezlanchacarlos.JspCalendar" scope="page" />
<jsp:useBean id="usuario" class="org.example.practica09sanchezlanchacarlos.UsuarioBean" scope="session" />
<jsp:setProperty name="usuario" property="*" />
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados - Edad y Signo Zodiacal</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<header>
    <h1>Resultados del Cálculo</h1>
    <nav>
        <ul>
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="verLista.jsp">Ver Lista</a></li>
            <li><a href="verTabla.jsp">Ver Tabla</a></li>
        </ul>
    </nav>
</header>

<section>
    <article>
        <h2>Datos Personales</h2>

        <%
            int edad = -1;
            String signo = "Desconocido";

            if (usuario.getFechaNacimiento() != null && !usuario.getFechaNacimiento().isEmpty()) {
                calendario.setFechaNacimiento(usuario.getFechaNacimiento());
                edad = calendario.getEdad();
                signo = calendario.getSignoZodiaco();
            }
        %>

        <p><strong>Nombre:</strong> <jsp:getProperty name="usuario" property="nombre"/></p>
        <p><strong>Apellido:</strong> <jsp:getProperty name="usuario" property="apellido"/></p>
        <p><strong>Fecha de Nacimiento:</strong> <jsp:getProperty name="usuario" property="fechaNacimiento"/></p>
        <p><strong>Edad:</strong> <%= (edad != -1) ? edad + " años" : "No calculada" %></p>
        <p><strong>Signo Zodiacal:</strong> <%= signo %></p>

        <div id="botones">
            <button onclick="location.href='index.jsp'">Volver al Formulario</button>
        </div>
    </article>

</section>

<footer>
    <p>Derechos reservados &copy; 2025 | Creado por el equipo de desarrollo</p>
</footer>

</body>
</html>

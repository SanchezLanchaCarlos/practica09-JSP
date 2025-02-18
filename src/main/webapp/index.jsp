<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="usuario" class="org.example.practica09sanchezlanchacarlos.UsuarioBean" scope="session" />
<jsp:setProperty name="usuario" property="*" />
<!DOCTYPE html>
<html>
<head>
    <title>Página de Inicio</title>
    <link rel="stylesheet" href="styles.css"/>
    <!--<script defer src="script.js"></script>-->
    <link rel="shortcut icon" href="imagenes/favicon.ico" type="image/x-icon">
</head>
<body>
    <header>
        <h1><%= "Bienvenido a nuestra página" %></h1>
        <nav>
            <ul>
                <!--<li><a href="hello-servlet">Hello Servlet</a></li>-->
                <li><a href="#autores">Autores</a></li>
                <li><a href="#descripcion">Descripción</a></li>
                <li><a href="#formulario">Formulario</a></li>
                <li><a href="verLista.jsp">Ver Lista</a></li>
                <li><a href="verTabla.jsp">Ver Tabla</a></li>
            </ul>
            <button onclick="window.location.href='verZodiaco.jsp'">Ver Zodiaco</button>
        </nav>
    </header>
    <section>
        <article id="autores">
            <h2>Autores</h2>
            <p>Esta página fue desarrollada por:</p>
            <ul>
                <li>Carlos Sánchez</li>
                <li>Alejandro Sánchez</li>
                <li>Pedro García</li>
                <li>Alberto Gutiérrez</li>
            </ul>
        </article>
        <article id="descripcion">
            <h2>Descripción</h2>
            <p>Aquí iría la descripción de la página</p>
        </article>
        <article id="formulario">
            <h2>Formulario</h2>

            <form id="personaForm" action="verZodiaco.jsp"  method="get">

                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required pattern="[A-Za-zÁÉÍÓÚáéíóúÑñ ]{2,50}" title="Solo letras, mínimo 2 caracteres">

                <label for="apellido">Apellido:</label>
                <input type="text" id="apellido" name="apellido" required pattern="[A-Za-zÁÉÍÓÚáéíóúÑñ ]{2,50}" title="Solo letras, mínimo 2 caracteres">

                <label for="fechaNacimiento">Fecha de Nacimiento:</label>
                <input type="date" id="fechaNacimiento" name="fechaNacimiento" required>

                <div id="botones">
                    <button type="submit">Enviar</button>
                    <button type="reset">Limpiar</button>
                </div>
            </form>
        </article>
    </section>
    <footer>
        <p><%= "Derechos reservados &copy; 2025 | Creado por el equipo de desarrollo" %></p>
    </footer>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Libros</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1><%= "Ver Tablas" %></h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="verLista.jsp">Ver Lista</a></li>
            </ul>
            <button onclick="window.location.href='verZodiaco.jsp'">Ver Zodiaco</button>
        </nav>
    </header>
        <%-- Simulación de datos de libros agrupados por categoría --%>
    <%
        Map<String, List<String[]>> librosPorCategoria = new HashMap<>();

        List<String[]> fantasia = new ArrayList<>();
        fantasia.add(new String[]{"El Hobbit", "J.R.R. Tolkien", "1937", "310"});
        fantasia.add(new String[]{"Harry Potter y la Piedra Filosofal", "J.K. Rowling", "1997", "223"});
        fantasia.add(new String[]{"Las Crónicas de Narnia", "C.S. Lewis", "1950", "767"});
        fantasia.add(new String[]{"El nombre del viento", "Patrick Rothfuss", "2007", "662"});
        fantasia.add(new String[]{"La historia interminable", "Michael Ende", "1979", "396"});
        fantasia.add(new String[]{"Alicia en el país de las maravillas", "Lewis Carroll", "1865", "192"});
        fantasia.add(new String[]{"Los cuentos de Beedle el Bardo", "J.K. Rowling", "2008", "105"});
        fantasia.add(new String[]{"La torre oscura", "Stephen King", "1982", "238"});

        List<String[]> cienciaFiccion = new ArrayList<>();
        cienciaFiccion.add(new String[]{"Dune", "Frank Herbert", "1965", "412"});
        cienciaFiccion.add(new String[]{"Neuromante", "William Gibson", "1984", "271"});
        cienciaFiccion.add(new String[]{"Fundación", "Isaac Asimov", "1951", "255"});
        cienciaFiccion.add(new String[]{"Snow Crash", "Neal Stephenson", "1992", "480"});
        cienciaFiccion.add(new String[]{"1984", "George Orwell", "1949", "328"});
        cienciaFiccion.add(new String[]{"El fin de la eternidad", "Isaac Asimov", "1955", "192"});
        cienciaFiccion.add(new String[]{"Los juegos del hambre", "Suzanne Collins", "2008", "374"});
        cienciaFiccion.add(new String[]{"Ready Player One", "Ernest Cline", "2011", "384"});

        List<String[]> terror = new ArrayList<>();
        terror.add(new String[]{"It", "Stephen King", "1986", "1138"});
        terror.add(new String[]{"El resplandor", "Stephen King", "1977", "447"});
        terror.add(new String[]{"Drácula", "Bram Stoker", "1897", "418"});
        terror.add(new String[]{"Frankenstein", "Mary Shelley", "1818", "280"});
        terror.add(new String[]{"El exorcista", "William Peter Blatty", "1971", "340"});
        terror.add(new String[]{"La llamada de Cthulhu", "H.P. Lovecraft", "1928", "36"});
        terror.add(new String[]{"El silencio de los corderos", "Thomas Harris", "1988", "338"});
        terror.add(new String[]{"Carrie", "Stephen King", "1974", "199"});

        List<String[]> historia = new ArrayList<>();
        historia.add(new String[]{"Sapiens", "Yuval Noah Harari", "2011", "443"});
        historia.add(new String[]{"Guns, Germs, and Steel", "Jared Diamond", "1997", "480"});
        historia.add(new String[]{"El origen de las especies", "Charles Darwin", "1859", "502"});
        historia.add(new String[]{"Historia del siglo XX", "Eric Hobsbawm", "1994", "640"});
        historia.add(new String[]{"Breve historia del tiempo", "Stephen Hawking", "1988", "212"});
        historia.add(new String[]{"Meditaciones", "Marco Aurelio", "180", "160"});
        historia.add(new String[]{"Los seis libros de la República", "Jean Bodin", "1576", "600"});
        historia.add(new String[]{"El príncipe", "Nicolás Maquiavelo", "1532", "140"});

        librosPorCategoria.put("Fantasía", fantasia);
        librosPorCategoria.put("Ciencia Ficción", cienciaFiccion);
        librosPorCategoria.put("Terror", terror);
        librosPorCategoria.put("Historia", historia);
    %>

    <%-- Recorremos cada categoría y generamos una tabla para cada una --%>
        <% for (Map.Entry<String, List<String[]>> categoria : librosPorCategoria.entrySet()) { %>
        <section>
            <article>
                <h2><%= categoria.getKey() %></h2>
                <div class="table-container">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Título</th>
                                <th>Autor</th>
                                <th>Año de Publicación</th>
                                <th>Páginas</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (String[] libro : categoria.getValue()) { %>
                            <tr>
                                <td><%= libro[0] %></td>
                                <td><%= libro[1] %></td>
                                <td><%= libro[2] %></td>
                                <td><%= libro[3] %></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </article>
        </section>
        <% } %>
    <footer>
        <p><%= "Derechos reservados &copy; 2025 | Creado por el equipo de desarrollo" %></p>
    </footer>
</body>
</html>

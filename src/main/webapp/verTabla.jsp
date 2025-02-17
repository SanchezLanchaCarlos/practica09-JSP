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
    <h1>Listado de Libros por Categoría</h1>
</header>
<main>
    <%-- Simulación de datos de libros agrupados por categoría --%>
    <%
        Map<String, List<String[]>> librosPorCategoria = new HashMap<>();

        List<String[]> fantasia = new ArrayList<>();
        fantasia.add(new String[]{"El Hobbit", "J.R.R. Tolkien", "1937", "310"});
        fantasia.add(new String[]{"Harry Potter y la Piedra Filosofal", "J.K. Rowling", "1997", "223"});

        List<String[]> cienciaFiccion = new ArrayList<>();
        cienciaFiccion.add(new String[]{"Dune", "Frank Herbert", "1965", "412"});
        cienciaFiccion.add(new String[]{"Neuromante", "William Gibson", "1984", "271"});

        librosPorCategoria.put("Fantasía", fantasia);
        librosPorCategoria.put("Ciencia Ficción", cienciaFiccion);
    %>

    <%-- Recorremos cada categoría y generamos una tabla para cada una --%>
    <% for (Map.Entry<String, List<String[]>> categoria : librosPorCategoria.entrySet()) { %>
    <section>
        <h2><%= categoria.getKey() %></h2>
        <div class="table-container">
            <table>
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
    </section>
    <% } %>
</main>
</body>
</html>

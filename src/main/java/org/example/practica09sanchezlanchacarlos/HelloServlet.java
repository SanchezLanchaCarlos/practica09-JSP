package org.example.practica09sanchezlanchacarlos;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><head><link rel='stylesheet' href='styles.css'/></head><body>");
        out.println("<header><h1>" + "Hola, soy Carlos" + "</h1></header>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}
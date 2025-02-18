document.getElementById("personaForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Evita el envío automático
    const nombre = document.getElementById("nombre").value;
    const apellido = document.getElementById("apellido").value;
    const fechaNacimiento = document.getElementById("fechaNacimiento").value;

    if (nombre && apellido && fechaNacimiento) {
        alert(`Registro realizado:\nNombre: ${nombre}\nApellido: ${apellido}\nFecha de Nacimiento: ${fechaNacimiento}`);
        document.getElementById("personaForm").submit();
    } else {
        alert("Por favor, completa todos los campos.");
    }
});
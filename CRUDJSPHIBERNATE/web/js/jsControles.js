function validar(form) {

    var dniPersona = document.getElementById("textDniPersona").value;
    var nombrePersona = document.getElementById("textNombrePersona").value;
    var apellidoPaterno = document.getElementById("textApellidoPaterno").value;
    var apellidoPaterno = document.getElementById("textApellidoMaterno").value;
    var fechaNacimiento = document.getElementById("textFechaVencimiento").value;

    if (isNaN(dniPersona) || dniPersona == null || dniPersona.length == 0 || /^\s+$/.test(dniPersona)) {
        alert("El campo dni persona esta vacio y debe ser numerico.");
        dniPersona.focus();
        return false;
    }

    if (nombrePersona == null || nombrePersona.length == 0 || /^\s+$/.test(nombrePersona)) {
        alert("El campo nombre persona esta vacio.");
        nombrePersona.focus();
        return false;
    }

    if (apellidoPaterno == null || apellidoPaterno.length == 0 || /^\s+$/.test(apellidoPaterno)) {
        alert("El campo apellido paterno esta vacio.");
        apellidoPaterno.focus();
        return false;
    }

    if (apellidoMaterno == null || apellidoMaterno.length == 0 || /^\s+$/.test(apellidoMaterno)) {
        alert("El campo apellido materno esta vacio.");
        apellidoMaterno.focus();
        return false;
    }


    if (fechaNacimiento == null || fechaNacimiento.length == 0 || /^\s+$/.test(fechaNacimiento)) {
        alert("El campo fecha de nacimiento esta vacio.");
        fechaNacimiento.focus();
        return false;
    }

    return true;
}

function actualizar(idPersona) {
    window.location.href = "./update?idPersona=" + idPersona;
}

function borrar(idPersona) {
    if (!confirm("¿Esta seguro que desea eliminar esta persona?")) {
        return false;
    } else {
        window.location.href = "./delete?idPersona=" + idPersona;
        document.location = url;
        return true;
    }
}


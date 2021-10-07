//Funcion global

function agregarRegistro() {
    // console.log("capturado");

    function capturar(apellido, nombre, telefono, correo, contrasena) {
        this.apellido = apellido;
        this.nombre = nombre;
        this.telefono = telefono;
        this.correo = correo;
        this.contrasena = contrasena;
    }

    let nombrecapturar = document.getElementById("nombre").value;
    let apellidocapturar = document.getElementById("apellido").value;
    let telefonocapturar = document.getElementById('telefono').value;
    let correocapturar = document.getElementById('correo').value;
    let contrasenacapturar = document.getElementById('contrasena').value;
    // console.log(nombrecapturar, apellidocapturar, telefonocapturar, correocapturar, contrasenacapturar);

    // arreglo global
    nuevosujeto = new capturar(apellidocapturar, nombrecapturar, telefonocapturar, correocapturar, contrasenacapturar);
    agregar();
    // console.log(registros);
    // return registros;
}
registros = [];

function agregar() {
    //console.log("capturado");
    // añadir elemento
    registros.push(nuevosujeto);
    //console.log(registros);
    // return registros;
}

function ordenarArreglo(arreglo) {
    registros.sort((a, b) => {
    const apellidoA = a.apellido;
    const apellidoB = b.apellido;
    if (apellidoA < apellidoB){
        return -1;
    }
    if (apellidoA > apellidoB){
        return 1;
    }
    return 0;
    });
    console.log(registros);
    return registros;
}

function filtrarCorreo(arreglo) {
    let regCorreo =  /[a-zA-Z0-9_.+-]+@gmail.com/;
    let arregloCorreo = [];
    for (let i = 0; i < registros.length; i++) {
        let correo = registros[i].correo;
        let valCorreo = regCorreo.test(correo);
        if (valCorreo === true) {
            arregloCorreo.push(correo);
        }
    }
    console.log(arregloCorreo);
    return arregloCorreo;
}

module.exports = { agregarRegistro,ordenarArreglo,filtrarCorreo,registros };

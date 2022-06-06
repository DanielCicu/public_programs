const palabras = [
    "CAMINO",
    "OBISPO",
    "RABANO",
    "BECADO",
    "CEBRAS",
    "FUTBOL",
    "FACTOR",
    "TELECO",
    "DECANO",
    "DANZAS",
    "ESPAÑA",
    "ITALIA",
    "CABLES",
    "DIODOS"
];
const rand_pal = Math.floor(Math.random() * palabras.length);
const palabra = palabras[rand_pal];
const letrasJugadas = [];
const min_intentos = 0;
let intentos = 15;

const areaFigura = document.getElementById("area_figura");
const botonjugar = document.getElementById("botonJugar");
const botonAdivinar = document.getElementById("botonAdivinar");
const divLetrasJugadas = document.getElementById("letrasJugadas");
const textLetra = document.getElementById("textletra");
const textAdivinar = document.getElementById("textAdivinar");
const divFrase = document.getElementById("frase");
const spanintentos = document.getElementById("intentos");

const cabeza = document.getElementById("cabeza");
const tronco = document.getElementById("tronco");
const piernas = document.getElementById("piernas");
const brazos = document.getElementById("brazos");
const poste = document.getElementById("poste");
const viga = document.getElementById("viga");
const soga = document.getElementById("soga");

const hayGanador = () => {

    if (intentos === min_intentos) {

        areaFigura.style.background = "#ffafaf";
        botonjugar.disabled = true;
        botonAdivinar.disabled = true;
        return;

    }

    let ganador = true;

    for (let i = 0; i < palabra.length; i++) {

        const letra = palabra[i];

        if (letra !== " ") {

            if (!letrasJugadas.includes(letra)) {
                ganador = false;
            }

        }

    }

    if (ganador) {

        botonjugar.disabled = true;
        botonAdivinar.disabled = true;
        alert("Acertó!!!");

    }

};

const reduceintentos = () => {

    intentos = intentos - 1;
    spanintentos.innerHTML = intentos;
    switch (intentos) {
        case 14:
            cabeza.style.display = "inline";
            break;
        case 12:
            tronco.style.display = "inline";
            break;
        case 10:
            piernas.style.display = "inline";
            break;
        case 7:
            brazos.style.display = "inline";
            break;
        case 5:
            poste.style.display = "inline";
            break;
        case 3:
            viga.style.display = "inline";
            break;
        case 0:
            soga.style.display = "inline";
            break;
    }
};

const muestraJuego = () => {

    divFrase.innerHTML = "";
    let i = 0;
    while (i < palabra.length) {

        let casilla = document.createElement("div");
        casilla.classList.add("casilla");

        if (letrasJugadas.includes(palabra[i])) {
            casilla.textContent = palabra[i];
        }

        divFrase.appendChild(casilla);
        i++;

    }

};

const muestraLetrasJugadas = (letra) => {

    const spanLetra = document.createElement("span");
    spanLetra.textContent = letra;
    divLetrasJugadas.appendChild(spanLetra);

};

const jugar = () => {

    const letra = textLetra.value.toUpperCase();
    const yaJugada = letrasJugadas.includes(letra);
    if (!yaJugada) {

        letrasJugadas.unshift(letra);
        muestraLetrasJugadas(letra);
        const inFrase = palabra.includes(letra);
        if (inFrase) {
            muestraJuego();
        } else {
            reduceintentos();
        }
        hayGanador();

    }

    textLetra.value = "";
    textLetra.focus();

};

const gen_espacios = () => {

    let i = 0;
    while (i < palabra.length) {

        let casilla = document.createElement("div");
        casilla.classList.add("casilla");
        divFrase.appendChild(casilla);
        i++;

    }

    console.log(palabra);

};

const ocultaPartes = () => {

    cabeza.style.display = "none";
    cabeza.style.display = "none";
    tronco.style.display = "none";
    piernas.style.display = "none";
    brazos.style.display = "none";
    poste.style.display = "none";
    viga.style.display = "none";
    soga.style.display = "none";

};

botonAdivinar.addEventListener("click", () => {
    if (palabra === textAdivinar.value.toUpperCase()) {
        alert("Acertó!!!");
    }
});

botonjugar.addEventListener("click", () => {
    jugar();
});

gen_espacios();

ocultaPartes();
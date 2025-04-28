fetch("http://localhost:3000/nincsenekeladva")
    .then(x => x.json())
    .then(y => myDisplay(y));


function myDisplay(y) {
    var sz = ""
    for (const elem of y) {
        document.getElementById("gridben").innerHTML += `
        <div class="col-sm-3"><span>Címe: ${elem.kozterulet}</span> <br> Falazat:<span id="falazat"> ${elem.falazat}</span> <br>  Ár:<span id="ar"> ${elem.ar}</span> <br> datum: <span id="datum"> ${elem.datum}</span> <hr> </div>
        `
    }
    sz++



}
fetch("http://localhost:3000/nincsenekeladva")
    .then(x => x.json())
    .then(d => masodikfeldat(d));

function masodikfeldat(d) {
    var le = ""
    for (const i of d) {
        document.getElementById("lenyiloban").innerHTML += `
        <option value="">${i.kozterulet} ${i.hazszam} (Ára: ${i.ar})</option>
        `
    }
    le++
}

function felvitel() {
    var sz1 = ""
    var sz2 = ""
    var sz3 = ""
    /*try{
        
    }
    catch{
        document.getElementById("hibauzenet").innerHTML = `
        <span class="pirosra">Az ár csak szám lehet!</span>
    `
    }*/
    if (document.getElementById("arinput").value == "") {
        document.getElementById("hibauzenet").innerHTML = `
            <span class="pirosra">Az árat kötelező megadni</span>
        `
        sz1++

    }
    else if (document.getElementById("nevinput").value == "") {
        document.getElementById("hibauzenet").innerHTML = `
        <span class="pirosra">Az nevet kötelező megadni</span>
    `
        sz2++

    }
    else if (document.getElementById("telefoninput").value == "") {
        document.getElementById("hibauzenet").innerHTML = `
        <span class="pirosra">Az telefonszámot kötelező megadni</span>
    `
        sz3++

    }
    var adatok={
        bevitel1:document.getElementById("arinput").value,
        bevitel2:document.getElementById("nevinput").value,
        bevitel3:document.getElementById("telefoninput").value,
    }
    fetch("http://localhost:3000/ajanlatfelvitel")
        .then(x => x.json())
        .then({
            method: "POST",
            body: JSON.stringify(adatok),
            headers: { "Content-type": "application/json; charset=UTF-8" }
        })




}
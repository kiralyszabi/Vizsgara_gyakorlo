const express = require('express')
var cors = require('cors')
var mysql = require('mysql')
const app = express()
const port = 3000

app.use(cors())
app.use(express.json())
app.use(express.urlencoded({ extended: true }));
app.use(express.static('kepek'))


var connection

function kapcsolat() {
  connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'kozvetito2025'
  })

  connection.connect()
}




app.get('/', (req, res) => {
  res.send('Hello World!')
})


app.get('/jatekos', (req, res) => {

  kapcsolat()
  connection.query('SELECT * from jatekos', function (err, rows, fields) {
    if (err) throw err

    console.log(rows)
    res.send(rows)
  })
  connection.end()
}),


app.get('/ingatlanok', (req, res) => {

  kapcsolat()
  connection.query('SELECT * from ingatlan order by kozterulet ', function (err, rows, fields) {
    if (err) throw err

    console.log(rows)
    res.send(rows)
  })
  connection.end()
})

// app.get('/jatekos', (req, res) => {
//   kapcsolat();
//   connection.query('SELECT * from jatekos', (err, result) => {
//     if(err) {
//       res.status(500).json('Hiba');
//     }
//     res.status(200).json(result);
//   });
//   connection.end();
// });


app.post('/hirdetesfelvitel', (req, res) => {

  kapcsolat()
  connection.query(`insert into hirdetes values(null,?,?,?,?)`,[req.body.bevitel1,req.body.bevitel2,req.body.bevitel3,req.body.bevitel4], function (err, rows, fields) {
    if (err){
      console.log("")
      res.status(500).send('Hiba')     
    }
    else{
    res.status(200).send('Sikeres felvitel')
  }
  })
  connection.end()
})

app.delete('/hirdetestorles', (req, res) => {

  kapcsolat()
  connection.query('delete from  hirdetes where hirdetes_id=?',[req.body.bevitel1], function (err, rows, fields) {
    if (err){
      console.log("")
      res.status(500).send('Hiba')     
    }
    else{
    res.status(200).send('Sikeres torles')
  }
  })
  connection.end()
})

// app.get('/jelentkezoFelvitel', (req, res) => {

//   kapcsolat();
//   connection.query('', [], function (err, result) {
//     if (err) {
//       res.status(500).json();
//     }
//     res.status(200).json();
//   })
//   connection.end();
// });


app.post('/ajanlatfelvitel', (req, res) => {

  kapcsolat()
  connection.query(`insert into ajanlat values(null,?,?,?,?)`,[req.body.bevitel1,req.body.bevitel2,req.body.bevitel3,req.body.bevitel4], function (err, rows, fields) {
    if (err){
      console.log("")
      res.status(500).send('Hiba')     
    }
    else{

    res.status(200).send('Sikeres felvitel')
  }
  })
  connection.end()
})


app.get('/nincsenekeladva', (req, res) => {

  kapcsolat()
  connection.query('SELECT * from hirdetes INNER JOIN ingatlan on ingatlan.ingatlan_id=hirdetes.ingatlanid WHERE hirdetes.allapot != "eladva"', function (err, rows, fields) {
    if (err){
      console.log("")
      res.status(500).send('Hiba')     
    }
    else{

    res.status(200).send(rows)
  }
  })
  connection.end()
})


app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
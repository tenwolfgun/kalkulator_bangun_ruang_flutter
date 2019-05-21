import 'package:flutter/material.dart';

class PrismaSegitiga extends StatefulWidget {
  @override
  _PrismaSegitigaState createState() => _PrismaSegitigaState();
}

class _PrismaSegitigaState extends State<PrismaSegitiga> {
  TextEditingController _alasSegitigaController;
  TextEditingController _tinggiSegitigaController;
  TextEditingController _tinggiPrismaController;
  TextEditingController _kelilingAlasController;

  @override
  void initState() {
    _alasSegitigaController = TextEditingController();
    _tinggiSegitigaController = TextEditingController();
    _tinggiPrismaController = TextEditingController();
    _kelilingAlasController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _alasSegitigaController?.dispose();
    _tinggiSegitigaController?.dispose();
    _tinggiPrismaController?.dispose();
    _kelilingAlasController?.dispose();
    super.dispose();
  }

  double _alasSegitiga = 0;
  double _tinggiSegitiga = 0;
  double _tinggiPrisma = 0;
  double _kelilingAlas = 0;
  double _lsPermukaan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Prisma Segitiga"),
        centerTitle: true,
      ),
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0, top: 10.0),
                child: Center(
                  child: Image.asset("img/prisma-segitiga.png", width: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "Luas Permukaan Prisma Segitiga",
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0, bottom: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Alas Segitiga",
                        ),
                        keyboardType: TextInputType.number,
                        controller: _alasSegitigaController,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0, bottom: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Tinggi Segitiga",
                        ),
                        keyboardType: TextInputType.number,
                        controller: _tinggiSegitigaController,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Keliling Alas",
                        ),
                        keyboardType: TextInputType.number,
                        controller: _kelilingAlasController,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Tinggi Prisma",
                        ),
                        keyboardType: TextInputType.number,
                        controller: _tinggiPrismaController,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                  child: Text("Hitung", style: TextStyle(fontSize: 15.0)),
                  onPressed: () {
                    setState(() {
                      _alasSegitiga =
                          double.parse(_alasSegitigaController.text);
                      _tinggiSegitiga =
                          double.parse(_tinggiSegitigaController.text);
                      _kelilingAlas =
                          double.parse(_kelilingAlasController.text);
                      _tinggiPrisma =
                          double.parse(_tinggiPrismaController.text);
                      _lsPermukaan = (_alasSegitiga * _tinggiSegitiga) +
                          (_kelilingAlas * _tinggiPrisma);
                    });
                  },
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                  child: Text(
                    "Luas permukaan prisma segitiga : ($_alasSegitiga * $_tinggiSegitiga) + ($_kelilingAlas * $_tinggiPrisma) = $_lsPermukaan",
                    style: TextStyle(fontSize: 20.0),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

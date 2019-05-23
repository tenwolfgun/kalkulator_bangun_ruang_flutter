import 'package:flutter/material.dart';
import 'dart:math' as math;

class Kerucut extends StatefulWidget {
  @override
  _KerucutState createState() => _KerucutState();
}

class _KerucutState extends State<Kerucut> {

  TextEditingController _jari2Controller;
  TextEditingController _garisPelukisController;

  @override
  void initState() {
    _jari2Controller = TextEditingController();
    _garisPelukisController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _jari2Controller?.dispose();
    _garisPelukisController?.dispose();
    super.dispose();
  }

  double _jari2 = 0;
  double _garisPelukis = 0;
  double _luasPermukaan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Kerucut"),
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
                  child: Image.asset("img/kerucut.png", width: 100.0,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "Luas Permukaan Kerucut",
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Jari-jari (r)"
                        ),
                        keyboardType: TextInputType.number,
                        controller: _jari2Controller,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Garis Pelukis (s)"
                        ),
                        keyboardType: TextInputType.number,
                        controller: _garisPelukisController,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                  child: Text("Hitung", style: TextStyle(fontSize: 15.0)),
                  onPressed: () {
                    setState(() {
                     _jari2 = double.parse(_jari2Controller.text);
                     _garisPelukis = double.parse(_garisPelukisController.text);
                     _luasPermukaan = (math.pi * math.pow(_jari2, 2)) + (math.pi * _jari2 * _garisPelukis);
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Text(
                  "(3.14 * $_jari2 * $_jari2) + (3.14 * $_jari2 * $_garisPelukis) = $_luasPermukaan",
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
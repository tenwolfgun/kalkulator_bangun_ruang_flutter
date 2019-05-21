import 'package:flutter/material.dart';
import 'dart:math' as math;

class Tabung extends StatefulWidget {
  @override
  _TabungState createState() => _TabungState();
}

class _TabungState extends State<Tabung> {

  TextEditingController _jari2Controller;
  TextEditingController _tinggiController;

  @override
  void initState() {
    _jari2Controller = TextEditingController();
    _tinggiController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _jari2Controller?.dispose();
    _tinggiController?.dispose();
    super.dispose();
  }

  double _jari2 = 0;
  double _tinggi = 0;
  double _lsPermukaan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Tabung"),
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
                  child: Image.asset("img/tabung.png", width: 100.0,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "Luas Permukaan Tabung",
                  style: TextStyle(
                    fontSize: 25.0
                  ),
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
                          labelText: "Tinggi (t)"
                        ),
                        keyboardType: TextInputType.number,
                        controller: _tinggiController,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                  child: Text(
                    "Hitung",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  onPressed: () {
                    setState(() {
                     _jari2 = double.parse(_jari2Controller.text);
                     _tinggi = double.parse(_tinggiController.text);
                     _lsPermukaan = 2 * math.pi * _jari2 * (_jari2 + _tinggi);
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Text(
                  "Luas Permukaan Tabung: 2 * 3.14 * $_jari2 * ($_jari2 + $_tinggi) = $_lsPermukaan",
                  style: TextStyle(fontSize: 20.0)
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
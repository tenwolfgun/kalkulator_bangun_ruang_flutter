import 'package:flutter/material.dart';

class LimasSegiempat extends StatefulWidget {
  @override
  _LimasSegiempatState createState() => _LimasSegiempatState();
}

class _LimasSegiempatState extends State<LimasSegiempat> {
  TextEditingController _lsSelubungController;
  TextEditingController _lsAlasController;

  @override
  void initState() {
    _lsSelubungController = TextEditingController();
    _lsAlasController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _lsSelubungController?.dispose();
    _lsAlasController?.dispose();
    super.dispose();
  }

  double _lsSelubung = 0;
  double _lsAlas = 0;
  double _lsPermukaan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Limas Segiempat"),
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
                  child: Image.asset("img/limas-segiempat.png", width: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text("Volume Limas Segiempat",
                    style: TextStyle(fontSize: 25.0)),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Luas Alas"),
                        keyboardType: TextInputType.number,
                        controller: _lsAlasController,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Luas Selubung"),
                        keyboardType: TextInputType.number,
                        controller: _lsSelubungController,
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
                      _lsSelubung = double.parse(_lsSelubungController.text);
                      _lsAlas = double.parse(_lsAlasController.text);
                      _lsPermukaan = _lsAlas + _lsSelubung;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Text(
                  "Luas Permukaan Limas Segiempat: $_lsAlas + $_lsSelubung = $_lsPermukaan",
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

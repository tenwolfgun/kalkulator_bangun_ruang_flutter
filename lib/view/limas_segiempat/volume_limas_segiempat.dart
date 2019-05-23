import 'package:flutter/material.dart';

class LimasSegiempat extends StatefulWidget {
  @override
  _LimasSegiempatState createState() => _LimasSegiempatState();
}

class _LimasSegiempatState extends State<LimasSegiempat> {

  TextEditingController _sisiController;
  TextEditingController _tinggiController;

  @override
  void initState() {
    _sisiController = TextEditingController();
    _tinggiController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _sisiController?.dispose();
    _tinggiController?.dispose();
    super.dispose();
  }

  double _sisi = 0;
  double _tinggi = 0;
  double _lsAlas = 0;
  double _volume = 0;

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
                child: Text(
                  "Volume Limas Segiempat",
                  style: TextStyle(fontSize: 25.0)
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
                          labelText: "Sisi"
                        ),
                        keyboardType: TextInputType.number,
                        controller: _sisiController,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Tinggi"
                        ),
                        keyboardType: TextInputType.number,
                        controller: _tinggiController,
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
                     _sisi = double.parse(_sisiController.text);
                     _tinggi = double.parse(_tinggiController.text);
                     _lsAlas = _sisi * _sisi;
                     _volume = 1/3 * _lsAlas * _tinggi;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Text(
                  "1/3 * $_lsAlas * $_tinggi = $_volume",
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
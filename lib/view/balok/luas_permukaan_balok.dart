import 'package:flutter/material.dart';

class Balok extends StatefulWidget {
  @override
  _BalokState createState() => _BalokState();
}

class _BalokState extends State<Balok> {
  TextEditingController _panjangController;
  TextEditingController _lebarController;
  TextEditingController _tinggiController;

  @override
  void initState() {
    _panjangController = TextEditingController();
    _lebarController = TextEditingController();
    _tinggiController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _panjangController?.dispose();
    _lebarController?.dispose();
    _tinggiController?.dispose();
    super.dispose();
  }

  double _panjang = 0;
  double _lebar = 0;
  double _tinggi = 0;
  double _lsPermukaan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Balok"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0, top: 10.0),
                child: Center(
                  child: Image.asset(
                    "img/balok.png",
                    width: 100.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "Luas Permukaan Balok",
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
                            labelText: "Panjang (P)"),
                        keyboardType: TextInputType.number,
                        controller: _panjangController,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Lebar (L)",
                        ),
                        keyboardType: TextInputType.number,
                        controller: _lebarController,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 0.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Tinggi (T)",
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
                      _panjang = double.parse(_panjangController.text);
                      _lebar = double.parse(_lebarController.text);
                      _tinggi = double.parse(_tinggiController.text);
                      _lsPermukaan = (2 * _panjang * _lebar) + (2 * _panjang * _tinggi) + (2 * _lebar * _tinggi);
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Text(
                  "Luas permukaan balok = $_lsPermukaan",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

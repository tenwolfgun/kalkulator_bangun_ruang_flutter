import 'package:flutter/material.dart';

class LimasSegitiga extends StatefulWidget {
  @override
  _LimasSegitigaState createState() => _LimasSegitigaState();
}

class _LimasSegitigaState extends State<LimasSegitiga> {
  TextEditingController _lsAlasController;
  TextEditingController _lsSelubungController;

  @override
  void initState() {
    _lsAlasController = TextEditingController();
    _lsSelubungController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _lsAlasController?.dispose();
    _lsSelubungController?.dispose();
    super.dispose();
  }

  double _lsAlas = 0;
  double _lsSelubung = 0;
  double _lsPermukaan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Volume Limas Segitiga"),
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
                  child: Image.asset("img/limas-segitiga.png", width: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "Luas Permukaan Limas Segitiga",
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
                      _lsAlas = double.parse(_lsAlasController.text);
                      _lsSelubung = double.parse(_lsSelubungController.text);
                      _lsPermukaan = _lsAlas + _lsSelubung;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                child: Text(
                  "$_lsAlas + $_lsSelubung = $_lsPermukaan",
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

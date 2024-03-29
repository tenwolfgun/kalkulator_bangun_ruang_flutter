import 'package:flutter/material.dart';
// import 'dart:math';

class Kubus extends StatefulWidget {
  @override
  _KubusState createState() => _KubusState();
}

class _KubusState extends State<Kubus> {
  // FocusNode _sisiFocus;

  TextEditingController _rusukControll;

  @override
  void initState() {
    super.initState();
    //   _sisiFocus = FocusNode();
    //   _sisiFocus.addListener(() {
    //     if (_sisiFocus.hasFocus) _sisiControll.clear();
    //   });
    _rusukControll = TextEditingController();
  }

  @override
  void dispose() {
    _rusukControll?.dispose();
    super.dispose();
  }

  double rusuk = 0;
  double keliling = 0;
  double lsSisi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Kalkulator Bangun Ruang - Kubus"),
      ),
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0, top: 10.0),
                child: Center(
                    child: Image.asset(
                  "img/kubus.png",
                  width: 100.0,
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Keliling dan Luas Salah Salah Satu Sisi",
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 30.0, left: 30.0, right: 30.0, bottom: 10.0),
                    padding:
                        EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                    // decoration:  BoxDecoration(
                    //   border: Border.all(color: Colors.blue)
                    // ),
                    child: TextField(
                      // focusNode: _sisiFocus,
                      // controller: _sisiControll,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Rusuk Kubus"),
                      keyboardType: TextInputType.number,
                      controller: _rusukControll,
                      // onChanged: (String str) {
                      //   setState(() {
                      //     rusuk = double.parse(str);
                      //     keliling = 12 * rusuk;
                      //     lsSisi = rusuk * rusuk;
                      //   });
                      // },
                    ),
                  )),
              RaisedButton(
                child: Text(
                  "Hitung",
                  style: TextStyle(fontSize: 15.0),
                ),
                onPressed: () {
                  setState(() {
                    rusuk = double.parse(_rusukControll.text);
                    keliling = 12 * rusuk;
                    lsSisi = rusuk * rusuk;
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 5.0),
                child: Text("Keliling kubus: 12 * $rusuk = $keliling",
                    style: TextStyle(fontSize: 20.0)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 5.0),
                child: Text("Luas salah satu sisi: $rusuk * $rusuk = $lsSisi",
                    style: TextStyle(fontSize: 20.0)),
              ),
              // Padding(
              //     padding: EdgeInsets.only(bottom: 5.0),
              //     child:  TextField(
              //       decoration:  InputDecoration(
              //         border: OutlineInputBorder(),
              //         hintText: "Rusuk kubus",
              //       ),
              //       keyboardType: TextInputType.number,
              //     ))
            ],
          ),
        ),
      ),
    );
  }
}

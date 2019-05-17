import 'package:flutter/material.dart';
import 'dart:math';

class Kubus extends StatefulWidget {
  @override
  _KubusState createState() => _KubusState();
}

class _KubusState extends State<Kubus> {
  // FocusNode _sisiFocus;

  TextEditingController _sisiControll;

  // @override
  // void initState() {
  //   super.initState();
  //   _sisiFocus = FocusNode();
  //   _sisiFocus.addListener(() {
  //     if (_sisiFocus.hasFocus) _sisiControll.clear();
  //   });
  //   // _sisiControll =  TextEditingController(text: "0");
  // }

  @override
  void initState() {
    _sisiControll =  TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _sisiControll?.dispose();
    super.dispose();
  }

  double sisi = 0;
  double volume = 0;
  double lsPermukaan = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title:  Text("Kalkulator Bangun Ruang - Kubus"),
      ),
      body: SingleChildScrollView(
        child:  Container(
          padding: EdgeInsets.all(10.0),
          child:  Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0, top: 10.0),
                child:  Center(
                    child:  Image.asset(
                  "img/kubus.png",
                  width: 100.0,
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child:  Text(
                  "Volume dan Luas Permukaan",
                  style:  TextStyle(fontSize: 25.0),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child:  Container(
                    margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0, bottom: 10.0),
                    padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                    // decoration:  BoxDecoration(
                    //   border: Border.all(color: Colors.blue)
                    // ),
                    child:  TextField(
                      // focusNode: _sisiFocus,
                      controller: _sisiControll,
                      decoration:  InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Sisi Kubus"),
                      keyboardType: TextInputType.number,
                      // onChanged: (String str) {
                      //   setState(() {
                      //     sisi = double.parse(str);
                      //     volume = pow(sisi, 3);
                      //     lsPermukaan = 6 * (sisi * sisi);
                      //   });
                      // },
                    ),
                  )),
              RaisedButton(
                child: Text("Hitung", style: TextStyle(fontSize: 15.0),),
                onPressed: () {
                  setState(() {
                    sisi = double.parse(_sisiControll.text);
                    volume = pow(sisi, 3);
                    lsPermukaan = 6 * (sisi * sisi);
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 7.0),
                child:  Text("Volume kubus = $volume",
                    style:  TextStyle(fontSize: 20.0)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 5.0),
                child:  Text("Luas permukaan = $lsPermukaan",
                    style:  TextStyle(fontSize: 20.0)),
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
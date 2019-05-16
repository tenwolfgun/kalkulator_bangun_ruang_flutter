import 'package:flutter/material.dart';
// import 'dart:math';

class Kubus extends StatefulWidget {
  @override
  _KubusState createState() => _KubusState();
}

class _KubusState extends State<Kubus> {

  // FocusNode _sisiFocus;

  // TextEditingController _sisiControll;

  // @override
  // void initState() {
  //   super.initState();
  //   _sisiFocus = FocusNode();
  //   _sisiFocus.addListener(() {
  //     if (_sisiFocus.hasFocus) _sisiControll.clear();
  //   });
  //   // _sisiControll = new TextEditingController(text: "0");
  // }

  double rusuk = 0;
  double keliling = 0;
  double lsSisi = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Kalkulator Bangun Ruang - Kubus"),
      ),
      resizeToAvoidBottomPadding: false,
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 30.0, top: 10.0),
              child: new Center(
                  child: new Image.asset(
                "img/kubus.png",
                width: 100.0,
              )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: new Text("Keliling dan Luas Salah Salah Satu Sisi", style: new TextStyle(fontSize: 25.0),),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: new Container(
                margin: EdgeInsets.all(30.0),
                padding: EdgeInsets.all(10.0),
                // decoration: new BoxDecoration(
                //   border: Border.all(color: Colors.blue)
                // ),
                child: new TextField(
                // focusNode: _sisiFocus,
                // controller: _sisiControll,
                decoration: new InputDecoration(
                    border: OutlineInputBorder(), labelText: "Rusuk Kubus"),
                keyboardType: TextInputType.number,
                onChanged: (String str){
                  setState(() {
                    rusuk = double.parse(str);
                    keliling = 12 * rusuk;
                    lsSisi = rusuk * rusuk;
                  });
                },
              ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 5.0),
              child: new Text("Keliling kubus = $keliling", style: new TextStyle(fontSize: 20.0)),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 5.0),
              child: new Text("Luas salah satu sisi = $lsSisi", style: new TextStyle(fontSize: 20.0)),
            ),
            // Padding(
            //     padding: EdgeInsets.only(bottom: 5.0),
            //     child: new TextField(
            //       decoration: new InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: "Rusuk kubus",
            //       ),
            //       keyboardType: TextInputType.number,
            //     ))
          ],
        ),
      ),
    );
  }
}

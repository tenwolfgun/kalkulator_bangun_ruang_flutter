import 'package:flutter/material.dart';
import 'dart:math';

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

  double sisi = 0;
  double volume = 0;
  double lsPermukaan = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Kalkulator Bangun Ruang - Kubus"),
      ),
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
              child: new Text("Volume dan Luas Permukaan", style: new TextStyle(fontSize: 25.0),),
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
                    border: OutlineInputBorder(), labelText: "Sisi Kubus"),
                keyboardType: TextInputType.number,
                onChanged: (String str){
                  setState(() {
                    sisi = double.parse(str);
                    volume = pow(sisi, 3);
                    lsPermukaan = 6*(sisi*sisi);
                  });
                },
              ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 5.0),
              child: new Text("Volume kubus = $volume", style: new TextStyle(fontSize: 20.0)),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 5.0),
              child: new Text("Luas permukaan = $lsPermukaan", style: new TextStyle(fontSize: 20.0)),
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

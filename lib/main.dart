import 'package:flutter/material.dart';
import 'dart:convert';
import './view/nav_kubus.dart' as halKubus;

void main() {
  runApp(new MaterialApp(
    title: "Kalkulator Ruang dan Bangun",
    home: new Home(),
    routes: <String, WidgetBuilder> {
      '/HalamanUtama': (BuildContext context) => new Home(),
      '/HalamanKubus': (BuildContext context) => new halKubus.NavKubus()
    }
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> data;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "Kalkulator Bangun Ruang"
        ),
      ),
      body: new Container(
        padding: EdgeInsets.only(top: 10.0),
        color: Colors.white70,
        child: new FutureBuilder(
          future: DefaultAssetBundle
            .of(context)
            .loadString('assets/daftar-rumus.json'),
          builder: (context, snapshot) {
            var newData = json.decode(snapshot.data.toString());

            return new ListView.builder(
              itemCount: newData == null ? 0 : newData.length,
              itemBuilder: (BuildContext context, index) {
                var post = newData[index];
                return new GestureDetector(
                onTap: () {
                  if (post['nama'] == "Kubus") {
                    Navigator.pushNamed(context, '/HalamanKubus');
                  }else {
                    print("not found");
                  }
                },
                child:new Card(
                  // shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
                  child: new Container(
                    padding: EdgeInsets.all(15.0),
                    child: new Row(
                      children: <Widget>[
                        // new CircleAvatar(
                        //   child: new Text(
                        //     newData[index]['nama'].substring(0, 1)
                        //   )
                        // ),
                        new Image.asset(newData[index]['img'], width: 50.0,),
                        new Padding(
                          padding: EdgeInsets.only(right: 10.0),
                        ),
                        new Text(
                          newData[index]['nama'], style: new TextStyle(
                            fontSize: 20.0
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                );
              },
            );
          },
        ),
      ),
    );
  }
  //   void onTapped(String which) {
  //   print("${which}");
  // }
}
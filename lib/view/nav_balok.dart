import 'package:flutter/material.dart';
import './balok/volume_balok.dart' as vlBalok;
import './balok/luas_permukaan_balok.dart' as lsBalok;
import './balok/keliling_balok.dart' as klBalok;

class NavBalok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title:  Text("Kalkulator Bangun Ruang - Balok"),
      ),
      body:  Container(
        padding: EdgeInsets.all(10.0),
        child:  ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                  leading: Image.asset(
                    "img/balok.png",
                    width: 50.0,
                  ),
                  title: Text(
                    "Volume Balok",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => vlBalok.Balok());
                    Navigator.push(context, route);
                  }),
            ),
            Card(
              child: ListTile(
                leading: Image.asset(
                  "img/balok.png",
                  width: 50.0,
                ),
                title: Text(
                  "Luas Permukaan Balok",
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => lsBalok.Balok());
                  Navigator.push(context, route);
                },
              ),
            ),
              Card(
              child: ListTile(
                leading: Image.asset(
                  "img/balok.png",
                  width: 50.0,
                ),
                title: Text(
                  "Diagonal Ruang Balok",
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => klBalok.Balok());
                  Navigator.push(context, route);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

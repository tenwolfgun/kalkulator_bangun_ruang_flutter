import 'package:flutter/material.dart';
import './bola/volume_bola.dart' as vlBola;
import './bola/luas_permukaan_bola.dart' as lsBola;

class NavBola extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Bola"),
        centerTitle: true,
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Image.asset(
                  "img/bola.png",
                  width: 50.0,
                ),
                title: Text(
                  "Volume Bola",
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {
                  Route route = MaterialPageRoute(
                    builder: (context) => vlBola.Bola()
                  );
                  Navigator.push(context, route);
                },
              ),
            ),
             Card(
              child: ListTile(
                leading: Image.asset(
                  "img/bola.png",
                  width: 50.0,
                ),
                title: Text(
                  "Luas Permukaan Bola",
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {
                  Route route = MaterialPageRoute(
                    builder: (context) => lsBola.Bola()
                  );
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
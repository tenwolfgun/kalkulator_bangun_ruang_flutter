import 'package:flutter/material.dart';
import './Tabung/volume_tabung.dart' as vlTabung;
import './Tabung/luas_permukaan_tabung.dart' as lsTabung;

class NavTabung extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Tabung"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Image.asset(
                  "img/tabung.png",
                  width: 50.0,
                ),
                title: Text(
                  "Volume Tabung",
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {
                  Route route = MaterialPageRoute(
                    builder: (context) => vlTabung.Tabung());
                    Navigator.push(context, route);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset(
                  "img/tabung.png",
                  width: 50.0,
                ),
                title: Text(
                  "Luas Permukaan Tabung",
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {
                  Route route = MaterialPageRoute(
                    builder: (context) => lsTabung.Tabung());
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

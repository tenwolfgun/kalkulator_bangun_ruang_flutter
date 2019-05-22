import 'package:flutter/material.dart';
import './kerucut/volume_kerucut.dart' as vlKerucut;
import './kerucut/luas_permukaan_kerucut.dart' as lsPermukaan;

class NavKerucut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Kerucut"),
        centerTitle: true,
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Image.asset("img/kerucut.png"),
                title: Text(
                  "Volume Kerucut",
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {
                  Route route = MaterialPageRoute(builder: (context) => vlKerucut.Kerucut());
                  Navigator.push(context, route);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("img/kerucut.png"),
                title: Text(
                  "Luas Permukaan Kerucut",
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {
                  Route route = MaterialPageRoute(builder: (context) => lsPermukaan.Kerucut());
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
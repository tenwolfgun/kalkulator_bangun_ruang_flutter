import 'package:flutter/material.dart';
import './limas_segiempat/volume_limas_segiempat.dart' as vlLimasSegiempat;

class NavLimasSegiempat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Limas Segiempat"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Image.asset("img/limas-segiempat.png", width: 50.0,),
              title: Text("Volume limas segiempat", style: TextStyle(fontSize: 20.0),),
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => vlLimasSegiempat.LimasSegiempat());
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
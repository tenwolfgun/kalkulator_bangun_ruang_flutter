import 'package:flutter/material.dart';
import './kubus_volume_luas.dart' as vlKubus;
import './kubus_keliling_luas_sisi.dart' as klKubus;

class NavKubus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Kalkulator Bangun Ruang - Kubus"),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                  leading: Image.asset(
                    "img/kubus.png",
                    width: 50.0,
                  ),
                  title: Text("Volume dan Luas Permukaan Kubus", style: TextStyle(fontSize: 20.0),),
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => vlKubus.Kubus());
                    Navigator.push(context, route);
                  }),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("img/kubus.png", width: 50.0,),
                title: Text("Keliling dan Luas Salah Satu Sisi Kubus", style: TextStyle(fontSize: 20.0),),
                onTap: () {
                  Route route = MaterialPageRoute(
                    builder: (context) => klKubus.Kubus()
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

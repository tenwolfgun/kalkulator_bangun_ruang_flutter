import 'package:flutter/material.dart';
import './limas_segitiga/volume_limas_segitiga.dart' as vlLimasSegitiga;
import './limas_segitiga/luas_permukaan_limas_segitiga.dart' as lsLimasSegitiga;

class NavLimasSegitiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator Bangun Ruang - Limas Seigitiga"),
        centerTitle: true,
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Image.asset("img/limas-segitiga.png", width: 50.0,),
                title: Text(
                  "Volume Limas Segitiga",
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {
                  Route route = MaterialPageRoute(
                    builder: (context) => vlLimasSegitiga.LimasSegitiga()
                  );
                  Navigator.push(context, route);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("img/limas-segitiga.png", width: 50.0,),
                title: Text(
                  "Luas Permukaan Limas Segitiga",
                  style: TextStyle(fontSize: 20.0),
                ),
                onTap: () {
                  Route route = MaterialPageRoute(
                    builder: (context) => lsLimasSegitiga.LimasSegitiga()
                  );
                  Navigator.push(context, route);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
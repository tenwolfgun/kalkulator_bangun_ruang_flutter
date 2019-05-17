import 'package:flutter/material.dart';
import './prisma_segitiga/volume_prisma_segitiga.dart' as vlPrismaSegitiga;
import './prisma_segitiga/luas_permukaan_prisma_segitigas.dart' as lsPermukaanSegitiga;

class NavPrismaSegitiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Kalkulator Bangun Ruang - Prisma Segitiga"),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                  leading: Image.asset(
                    "img/prisma-segitiga.png",
                    width: 50.0,
                  ),
                  title: Text("Volume Prisma Segitiga", style: TextStyle(fontSize: 20.0),),
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => vlPrismaSegitiga.PrismaSegitiga());
                    Navigator.push(context, route);
                  }),
            ),
            Card(
              child: ListTile(
                leading: Image.asset("img/prisma-segitiga.png", width: 50.0,),
                title: Text("Luas Permukaan Prisma Segitiga", style: TextStyle(fontSize: 20.0),),
                onTap: () {
                  Route route = MaterialPageRoute(
                    builder: (context) => lsPermukaanSegitiga.PrismaSegitiga()
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

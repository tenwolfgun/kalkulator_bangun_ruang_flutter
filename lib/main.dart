import 'package:flutter/material.dart';
import 'dart:convert';
// import 'package:flutter/cupertino.dart';
import './view/nav_kubus.dart' as halKubus;
import './view/nav_balok.dart' as halBalok;
import './view/nav_prisma_segitiga.dart' as halPrismaSegitiga;
import './view/nav_limas_segiempat.dart' as halLimasSegiempat;
import './view/nav_limas_segitiga.dart' as halLimasSegitiga;
import './view/nav_tabung.dart' as halTabung;
import './view/nav_kerucut.dart' as halKerucut;
import './view/nav_bola.dart' as halBola;
import './view/animation.dart' as animRoute;
// import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

void main() {
  runApp(new MaterialApp(
    title: "Kalkulator Ruang dan Bangun",
    home: new Home(),
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    // routes: <String, WidgetBuilder> {
    //   '/HalamanUtama': (BuildContext context) => new Home(),
    //   '/HalamanKubus': (BuildContext context) => new halKubus.NavKubus(),
    //   '/HalamanBalok': (BuildContext context) => new halBalok.NavBalok(),
    //   '/HalamanPrismaSegitiga': (BuildContext context) => new halPrismaSegitiga.NavPrismaSegitiga()
    // }
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final goToKubus = halKubus.NavKubus();
  final goToBalok = halBalok.NavBalok();
  final goToPrismaSegitiga = halPrismaSegitiga.NavPrismaSegitiga();
  final goToLimasSegiempat = halLimasSegiempat.NavLimasSegiempat();
  final goToLimasSegitiga  = halLimasSegitiga.NavLimasSegitiga();
  final goToTabung         = halTabung.NavTabung();
  final goToKerucut        = halKerucut.NavKerucut();
  final goToBola           = halBola.NavBola();

  List<String> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Kalkulator Bangun Ruang"
        ),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.language, color: Colors.white,),
            onPressed: null,
            // onPressed: () {
            //   UrlLauncher.launch("https://www.instagram.com/w0rm1995/");
            // }
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        color: Colors.white70,
        child: FutureBuilder(
          future: DefaultAssetBundle
            .of(context)
            .loadString('assets/daftar-rumus.json'),
          builder: (context, snapshot) {
            var newData = json.decode(snapshot.data.toString());

            return GridView.builder(
              itemCount: newData == null ? 0 : newData.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (BuildContext context, index) {
                var post = newData[index];
                return GestureDetector(
                  onTap: () {
                    if (post['nama'] == "Kubus") {
                      Navigator.push(context, animRoute.CustomPageRoute(goToKubus));
                    } else if (post['nama'] == "Balok"){
                      Navigator.push(context, animRoute.CustomPageRoute(goToBalok));
                    } else if (post['nama'] == "Prisma Segitiga") {
                      Navigator.push(context, animRoute.CustomPageRoute(goToPrismaSegitiga));
                    } else if (post['nama'] == "Limas Segiempat") {
                      Navigator.push(context, animRoute.CustomPageRoute(goToLimasSegiempat));
                    } else if (post['nama'] == "Limas Segitiga") {
                      Navigator.push(context, animRoute.CustomPageRoute(goToLimasSegitiga));
                    } else if (post['nama'] == "Tabung") {
                      Navigator.push(context, animRoute.CustomPageRoute(goToTabung));
                    } else if (post['nama'] == "Kerucut") {
                      Navigator.push(context, animRoute.CustomPageRoute(goToKerucut));
                    } else if (post['nama'] == "Bola") {
                      Navigator.push(context, animRoute.CustomPageRoute(goToBola));
                    }else {
                      print("not found");
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                  elevation: 8.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                      child: Center(
                        child: Image.asset(newData[index]['img'], fit: BoxFit.cover,),
                      )
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                      ),
                      Center(
                        child: Text(newData[index]['nama'], style: TextStyle(fontSize: 20.0),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      )
                    ],
                  ),
                ),
                  )
                );
              },
            );

            // return new ListView.builder(
            //   itemCount: newData == null ? 0 : newData.length,
            //   itemBuilder: (BuildContext context, index) {
            //     var post = newData[index];
            //     return new GestureDetector(
            //     onTap: () {
            //       if (post['nama'] == "Kubus") {
            //         Navigator.pushNamed(context, '/HalamanKubus');
            //       }else {
            //         print("not found");
            //       }
            //     },
            //     child:new Card(
            //       // shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
            //       child: new Container(
            //         padding: EdgeInsets.all(15.0),
            //         child: new Row(
            //           children: <Widget>[
            //             // new CircleAvatar(
            //             //   child: new Text(
            //             //     newData[index]['nama'].substring(0, 1)
            //             //   )
            //             // ),
            //             new Image.asset(newData[index]['img'], width: 50.0,),
            //             new Padding(
            //               padding: EdgeInsets.only(right: 10.0),
            //             ),
            //             new Text(
            //               newData[index]['nama'], style: new TextStyle(
            //                 fontSize: 20.0
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     );
            //   },
            // );
          },
        ),
      ),
    );
  }
  //   void onTapped(String which) {
  //   print("${which}");
  // }
}

// _launchURL() async {
//   const url = 'https://www.instagram.com/w0rm1995/';
// }
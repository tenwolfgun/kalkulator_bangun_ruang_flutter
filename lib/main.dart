import 'package:flutter/material.dart';
import 'dart:convert';
import './view/nav_kubus.dart' as halKubus;
import './view/nav_balok.dart' as halBalok;
import './view/nav_prisma_segitiga.dart' as halPrismaSegitiga;
// import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

void main() {
  runApp(new MaterialApp(
    title: "Kalkulator Ruang dan Bangun",
    home: new Home(),
    routes: <String, WidgetBuilder> {
      '/HalamanUtama': (BuildContext context) => new Home(),
      '/HalamanKubus': (BuildContext context) => new halKubus.NavKubus(),
      '/HalamanBalok': (BuildContext context) => new halBalok.NavBalok(),
      '/HalamanPrismaSegitiga': (BuildContext context) => new halPrismaSegitiga.NavPrismaSegitiga()
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Kalkulator Bangun Ruang"
        ),
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
                      Navigator.pushNamed(context, '/HalamanKubus');
                    } else if (post['nama'] == "Balok"){
                      Navigator.pushNamed(context, '/HalamanBalok');
                    } else if (post['nama'] == "Prisma Segitiga") {
                      Navigator.pushNamed(context, '/HalamanPrismaSegitiga');
                    }else {
                      print("not found");
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                  elevation: 6.0,
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
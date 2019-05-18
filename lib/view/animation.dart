import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import './nav_kubus.dart' as halKubus;
// import './nav_balok.dart' as halBalok;
// import './nav_prisma_segitiga.dart' as halPrismaSegitiga;
// import './nav_limas_segiempat.dart' as halLimasSegiempat;



class CustomPageRoute<T> extends PageRoute<T> {
      CustomPageRoute(this.child);

      @override
      // implement barrierColor
      Color get barrierColor => Colors.white24;

      @override
      String get barrierLabel => null;

      final Widget child;

      @override
      Widget buildPage(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      }

      @override
      bool get maintainState => true;

      @override
      Duration get transitionDuration => Duration(milliseconds: 500);
    }

// class KubusRoute extends CupertinoPageRoute {
//   KubusRoute()
//       : super(builder: (BuildContext context) => new halKubus.NavKubus());

//   // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
//   @override
//   Widget buildPage(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation) {
//     return new FadeTransition(opacity: animation, child: new halKubus.NavKubus());
//   }
// }

// class BalokRoute extends CupertinoPageRoute {
//   BalokRoute()
//       : super(builder: (BuildContext context) => new halBalok.NavBalok());

//   // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
//   @override
//   Widget buildPage(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation) {
//     return new FadeTransition(opacity: animation, child: new halBalok.NavBalok());
//   }
// }

// class PrismaSegitigaRoute extends CupertinoPageRoute {
//   PrismaSegitigaRoute()
//       : super(builder: (BuildContext context) => new halPrismaSegitiga.NavPrismaSegitiga());

//   // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
//   @override
//   Widget buildPage(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation) {
//     return new FadeTransition(opacity: animation, child: new halPrismaSegitiga.NavPrismaSegitiga());
//   }
// }

// class LimasSegiempatRoute extends CupertinoPageRoute {
//   LimasSegiempatRoute()
//       : super(builder: (BuildContext context) => new halLimasSegiempat.NavLimasSegiempat());

//   // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
//   @override
//   Widget buildPage(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation) {
//     return new FadeTransition(opacity: animation, child: new halLimasSegiempat.NavLimasSegiempat());
//   }
// }
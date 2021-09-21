import 'package:flutter/material.dart';

import '../main_menu_item.dart';

class FullBarImage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
              width: 0,
              color: Colors.white //Color(0xffDDDDDD)
          ),
        ),
        child: Icon(
          Icons.menu,
          size: 40,
          color: Colors.white,
        )
    );
  }
}

class FullUVULogo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Image(image: AssetImage('assets/mnlogo.png')),
    );
  }
}

class FullUVUTitle extends StatelessWidget {
  Widget build(BuildContext context) {
    return Text("UVU INNOVATION & EXCELLENCE INITIATIVE",
      style: TextStyle(
          fontSize: 24,
          color: Color(0xff275D38),
          fontFamily: 'Rajdhani'
      ),
      softWrap: true,
    );
  }
}

class FullUVUMenu extends StatefulWidget {
  FullUVUMenu({Key key, this.pgChg}) : super(key: key);

  final Function pgChg;

  _FullUVUMenuState createState() => _FullUVUMenuState();
}

class _FullUVUMenuState extends State<FullUVUMenu> {
  Widget build(BuildContext context) {
    return
      Container(
        height: 40,
        decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            border: Border.all(
                width: 1,
                color: Color(0xffDDDDDD)
            )
        ),
        child: Center(
            child:
            Container(
                constraints: BoxConstraints (maxWidth: 1200),
                child: Row(
                  children: [
                    MainMenuItem(title: "HOME"           , pgChg: widget.pgChg),
                    MainMenuItem(title: "PROJECT PORTAL" , pgChg: widget.pgChg),
                    MainMenuItem(title: "THE HUB"        , pgChg: widget.pgChg),
                    MainMenuItem(title: "CATALYSTS"      , pgChg: widget.pgChg),
                    MainMenuItem(title: "GET INVOLVED"   , pgChg: widget.pgChg),
                    MainMenuItem(title: "CONTACT US"     , pgChg: widget.pgChg),
                  ],
                )
            )
        ),
      );
  }
}
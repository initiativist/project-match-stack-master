import 'dart:html';
import 'package:flutter/material.dart';


class MainMenuItem extends StatefulWidget {
  MainMenuItem({Key key, this.title, this.pgChg}) : super(key:key);
  final String title;
  final Function pgChg;
  @override
  _MainMenuItemState createState() => _MainMenuItemState();
}

class _MainMenuItemState extends State<MainMenuItem> {

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (e) => _hover(true),
        onExit: (e) => _hover(false),
        child: GestureDetector(
          //onTap: ,
            child: Container(
                decoration: BoxDecoration(
                    color: _hovering ? Color(0xffDDDDDD) : Color(0xffF2F2F2)
                ),
                child: Container(
                    height: 40,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    alignment: Alignment.center,
                    child: TextButton(
                      child: Text(widget.title,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 12)
                      ),
                      onPressed: () => widget.pgChg(context, widget.title),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                    )
                )
            )
        )
    );
  }

  void _hover(mouseOn) {
    setState(() {
      _hovering = mouseOn;
    });
  }

}
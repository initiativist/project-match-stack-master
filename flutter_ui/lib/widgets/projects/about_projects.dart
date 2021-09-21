import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about/full_widgets.dart';

class FullAboutBox extends StatefulWidget {
  _FullAboutBoxState createState() => _FullAboutBoxState();
}

class _FullAboutBoxState extends State<FullAboutBox> {
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(1.2, 1.2),
              color: Colors.grey,
              blurRadius: 3,
              spreadRadius: 1,
            )
          ]
      ),
      height: 404,
      width: 258,
      child: Center(
          child: Column(
            children: [
              Expanded(
                  child: Center(
                    child: Column(
                      children: [
                        FullBoxTitle(),
                        Container(height: 20),
                        FullAboutTextPartOne(),
                        Container(height: 20),
                        FullSeparator(),
                        Container(height: 20),
                        FullAboutTextPartTwo(),
                        Container(height: 20),
                        FullGetInvolvedButton(),
                        Container(height: 5),
                        FullContactUsButton(),
                      ],
                    ),
                  )
              )
            ],
          )
      ),
    );
  }
}
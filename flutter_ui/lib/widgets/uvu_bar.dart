import 'package:flutter/material.dart';

import 'bar/full_widgets.dart';

class UVUBar extends StatelessWidget {
  UVUBar({Key key, this.pgChg}) : super(key:key);

  final Function pgChg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 140,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FullBarImage(),
                      FullUVULogo(),
                      FullUVUTitle(),
                      Icon(Icons.navigate_before,color: Colors.transparent,),
                    ],
                  ),
                ),
                FullUVUMenu(pgChg: pgChg,)
              ]
          )
      ),
    );
  }
}


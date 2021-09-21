import 'package:flutter/material.dart';
import 'package:project_match/widgets/uvu_bar.dart';

class CatalystsPage extends StatefulWidget {
  CatalystsPage({Key key, this.title, this.pgChg}) : super(key: key);
  final Function pgChg;
  final String title;

  @override
  _CatalystsPageState createState() => _CatalystsPageState();
}

class _CatalystsPageState extends State<CatalystsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 140),
          child: UVUBar(pgChg: widget.pgChg,)
      ),
      body: Container(),
    );

  }
}
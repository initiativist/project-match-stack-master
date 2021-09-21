import 'package:flutter/material.dart';
import 'package:project_match/widgets/uvu_bar.dart';

class TheHubPage extends StatefulWidget {
  TheHubPage({Key key, this.title, this.pgChg}) : super(key: key);
  final Function pgChg;
  final String title;

  @override
  _TheHubPageState createState() => _TheHubPageState();
}

class _TheHubPageState extends State<TheHubPage> {

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
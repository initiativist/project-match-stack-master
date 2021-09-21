import 'package:flutter/material.dart';
import 'package:project_match/widgets/uvu_bar.dart';

class GetInvolvedPage extends StatefulWidget {
  GetInvolvedPage({Key key, this.title, this.pgChg}) : super(key: key);
  final Function pgChg;
  final String title;

  @override
  _GetInvolvedPageState createState() => _GetInvolvedPageState();
}

class _GetInvolvedPageState extends State<GetInvolvedPage> {

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
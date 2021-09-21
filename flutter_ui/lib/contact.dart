import 'package:flutter/material.dart';
import 'package:project_match/widgets/uvu_bar.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key, this.title, this.pgChg}) : super(key: key);
  final Function pgChg;
  final String title;

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

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
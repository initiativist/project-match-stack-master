import 'package:flutter/material.dart';
import 'package:project_match/widgets/uvu_bar.dart';

class ProjectInformation extends StatefulWidget {
  ProjectInformation({Key key, this.title, this.pgChg}) : super(key: key);

  final Function pgChg;
  final String title;

  _ProjectInformationState createState() => _ProjectInformationState();
}

class _ProjectInformationState extends State<ProjectInformation> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
       preferredSize: Size(double.infinity, 140),
       child: UVUBar(pgChg: widget.pgChg,),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height-180,
        width: MediaQuery.of(context).size.width,
        child: Text(widget.title)
      ),
    );
  }
}
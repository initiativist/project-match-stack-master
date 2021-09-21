import 'package:flutter/material.dart';
import 'package:project_match/widgets/projects/project.dart';
import 'package:project_match/widgets/projects/project_details_framework.dart';
import 'project_retrieval.dart';

class FullProjectList extends StatefulWidget {
  FullProjectList({Key key, this.pgChg}) : super(key: key);

  final Function pgChg;

  List<Project> projectDeck = ProjectDatabase.getList();
  List<Widget> cardDeck = [];

  _FullProjectListState createState() => _FullProjectListState();
}

class _FullProjectListState extends State<FullProjectList> {

  List<Widget> buildDetails(){
    updateDecks();
    widget.projectDeck.forEach((element) =>
        widget.cardDeck.add(
            FullProjectDetails(project: element, pgChg: widget.pgChg,)
        )
    );
    return widget.cardDeck;
  }

  void updateDecks() {
    setState(() {
      widget.projectDeck = ProjectDatabase.getList();
    });
  }

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-180,
      child:ListView(
        children: buildDetails(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:project_match/widgets/projects/about/full_widgets.dart';
import 'package:project_match/widgets/projects/project.dart';

import 'details/full_widgets.dart';

class FullProjectDetails extends StatefulWidget { // 1200 wide

  FullProjectDetails({Key key, this.project, this.pgChg}) : super(key: key);

  final Function pgChg;
  final Project project;

  _FullProjectDetailsState createState() => _FullProjectDetailsState();
}

class _FullProjectDetailsState extends State<FullProjectDetails> {

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2,10,2,10,),
      height: 190,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(1.2, 1.2),
          )
        ],
        color: Colors.white,
      ),
      child: Center(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FullProjectImage(project: widget.project,),
                  Expanded (
                      child: Column( // project details organizer
                        children: [
                          Container(height: 6,),
                          FullTitleSponsor(project: widget.project,),
                          Container(height: 2),
                          CardFullSeparator(),
                          Container(height: 3),
                          FullDetailsCard(project: widget.project,)
                        ],
                      )
                  )
                ],
              ),
              FullGetInvolvedButton(pgChg: widget.pgChg),
            ],
          )
      ),
    );
  }
}
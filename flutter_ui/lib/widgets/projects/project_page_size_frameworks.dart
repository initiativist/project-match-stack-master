import 'package:flutter/material.dart';
import 'package:project_match/widgets/projects/about_projects.dart';
import 'package:project_match/widgets/projects/project_filters.dart';
import 'package:project_match/widgets/projects/project_list.dart';

class FullProjectsPage extends StatefulWidget {
  FullProjectsPage({Key key, this.pgChg}) : super(key: key);

  final Function pgChg;

  _FullProjectsPageState createState() => _FullProjectsPageState();
}

class _FullProjectsPageState extends State<FullProjectsPage> {
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Container (
                constraints: BoxConstraints(maxWidth: 1200),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FullProjectFilters(),
                    Container(width: 40,),
                    Expanded(child: FullProjectList(pgChg: widget.pgChg,),),
                    Container(width: 40,),
                    FullAboutBox(),
                  ],
                )
            )
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:project_match/widgets/projects/project_page_size_frameworks.dart';
import 'package:project_match/widgets/title_banner.dart';
import 'package:project_match/widgets/uvu_bar.dart';

class ProjectPage extends StatefulWidget {
  ProjectPage({Key key, this.title, this.pgChg}) : super(key: key);
  final Function pgChg;
  final String title;

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 140),
          child: UVUBar(pgChg: widget.pgChg,)
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            TitleBanner(imageAsset: 'assets/projects_banner.jpg'),
            Container(height: 40,),
            FullProjectsPage(), // from size framework
          ],
        ),
      ),
    );

  }
}
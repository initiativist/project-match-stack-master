import 'package:flutter/material.dart';
import 'package:project_match/widgets/projects/project.dart';

final bodyStyle = new TextStyle(
  fontFamily: 'Raleway',
  fontSize: 12,
);
final titleStyle = new TextStyle(
  fontFamily: 'Rajdhani',
  fontSize: 22,
  color: Color(0xff275D38),
);

class FullProjectImage extends StatefulWidget {
  FullProjectImage({Key key, this.project}) : super(key: key);

  final Project project;

  _FullProjectImageState createState() => _FullProjectImageState();
}

class _FullProjectImageState extends State<FullProjectImage> {
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
        width: 100,
        height: 100, // project image
        child: Image(
          image: AssetImage(widget.project.image),
          fit: BoxFit.fitHeight,
        ),
      );
  }
}

class FullTitleSponsor extends StatefulWidget {
  FullTitleSponsor({Key key, this.project}) : super(key: key);

  final Project project;

  _FullTitleSponsorState createState() => _FullTitleSponsorState();
}

class _FullTitleSponsorState extends State<FullTitleSponsor> {
  Widget build(BuildContext context) {
    return
      Container(
          height: 25,
          child: Row(
            children: [
              Expanded(child: Text(widget.project.title, style: titleStyle)), // project title
              Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(widget.project.sponsor, style: titleStyle),
                  )
              ), // project sponsor
              Container(width: 10,),
            ],
          )
      );
  }
}
class CardFullSeparator extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(width: 460, height: 1, decoration: BoxDecoration(color: Colors.grey),);
  }
}

class FullDetailsCard extends StatefulWidget {
  FullDetailsCard({Key key, this.project}) : super(key: key);
  final Project project;

  _FullDetailsCardState createState() => _FullDetailsCardState();
}

class _FullDetailsCardState extends State<FullDetailsCard> {
  Widget build(BuildContext context) {
    return
      Container(
          height: 110,
          child: Row(// actual project details
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded (
                  flex: 5,
                  child: Container(child: Text(widget.project.description, style: bodyStyle))
              ),
              Container(width: 3,),
              Container(width: 1, decoration: BoxDecoration(color: Colors.grey),),
              Container(width: 5,),
              Expanded (
                flex: 2,
                child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            widget.project.details,
                            style: bodyStyle,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(height: 12,),
                        Container(
                            child: Text(
                              widget.project.tags,
                              style: bodyStyle,
                              textAlign: TextAlign.left,
                            )
                        ),
                      ],
                    )
                ),
              ),
            ],
          )
      );
  }
}

class MoreInformationButton extends StatelessWidget {
  MoreInformationButton({Key key, this.pgChg, this.project}) : super(key: key);
  final Function pgChg;
  final Project project;
  Widget build(BuildContext context) {
    return
      Container(
        child: Center(
          child: RaisedButton(
            child: Text(
              "MORE INFORMATION",
              style: TextStyle(
                fontFamily: 'Rajdhani',
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            onPressed: () => "hi",
            color: Color(0xff275D38),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ); // get involved button
  }
}
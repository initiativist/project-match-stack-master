import 'package:flutter/material.dart';
import 'package:project_match/widgets/projects/project.dart';


final bodyStyle = new TextStyle(
  fontFamily: 'Raleway',
  fontSize: 12,
);

final buttonText = new TextStyle(
  fontFamily: 'Rajdhani',
  fontSize: 20,
  color: Colors.white,
);

class FullBoxTitle extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(height: 2, decoration: BoxDecoration(color: Color(0xff275D38)),),
            Container(height: 10,),
            Container(
              height: 40,
              width: 258,
              decoration: BoxDecoration(
                  color: Color(0xff275D38)
              ),
              child: Text(
                "About",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    fontSize: 20
                ),
                textAlign: TextAlign.center,
              ),
              alignment: Alignment.center,
            ),
          ],
        )
    );
  }
}

class FullAboutTextPartOne extends StatelessWidget {

  final String aboutOne = "Welcome to the Project Match Portal"
      + ".\n\nUse the filters on the left side of the screen to determine which projects you want to show up in the portal."
      + "\n\nIf you're interested in a project, you can click on it for more information.";

  Widget build(BuildContext context) {
    return
      Container(
          child: Container(
            child: Text(
              aboutOne,
              style: bodyStyle,
              textAlign: TextAlign.left,
            ),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          )
      );
  }
}

class FullSeparator extends StatelessWidget {
  Widget build(BuildContext context) => Container(width: 10, height: 1, decoration: BoxDecoration(color: Colors.grey));
}

class FullAboutTextPartTwo extends StatelessWidget {

  final String aboutTwo = "If you would like to submit a project, apply for leadership, or"
      + " see other ways to get involved, click below";

  Widget build(BuildContext context) {
    return
      Container(
          child: Container(
            child: Text(
              aboutTwo,
              style: bodyStyle,
              textAlign: TextAlign.left,
            ),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          )
      );
  }
}

class FullGetInvolvedButton extends StatelessWidget {
  FullGetInvolvedButton({Key key, this.pgChg, this.project}) : super(key: key);
  final Function pgChg;
  final Project project;
  Widget build(BuildContext context) {
    return
      Container(
        height: 30,
        child: RaisedButton(
          child: Text(
            "GET INVOLVED",
            style: buttonText,
          ),
          onPressed: () => pgChg(),
          padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
          color: Color(0xff275D38),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      );
  }
}

class FullContactUsButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return
      Container(
        height: 30,
        child: RaisedButton(
          child: Text(
            "CONTACT US",
            style: buttonText,
          ),
          onPressed: () => "",
          padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
          color: Color(0xff275D38),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      );
  }
}
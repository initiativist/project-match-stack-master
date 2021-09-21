import 'package:flutter/material.dart';

class FullBoxTitle extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        child: Column (
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
                "Filters",
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

class FullFiltersForm extends StatefulWidget {
  FullFiltersForm({Key key, this.formKey}) : super(key: key);

  final GlobalKey formKey;

  _FullFiltersFormState createState() => _FullFiltersFormState();
}

class _FullFiltersFormState extends State<FullFiltersForm> {
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Center(
                child: Form(
                    key: widget.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FullSearchTextField(),
                        Container(height: 10,),
                        FullHoursBetweenField(),
                        Container(height: 10,),
                        FullPaidPositionsField(),// paid
                        FullTagsField(),
                        Container(height: 10,),
                        Container(width: 250, height: 1, decoration: BoxDecoration(color: Colors.grey),),
                        Container(height: 10,),
                        UpdateButton(),
                      ],
                    )
                )
            )
        )
    );
  }
}

class FullSearchTextField extends StatefulWidget {
  _FullSearchTextFieldState createState() => _FullSearchTextFieldState();
}

class _FullSearchTextFieldState extends State<FullSearchTextField> {
  Widget build(BuildContext context) {
    return
      Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
          height: 30,// Keyword Search
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Search Keyword",
                contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0)
            ),
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 11,
            ),
          )
      );
  }
}

class FullHoursBetweenField extends StatefulWidget {
  _FullHoursBetweenFieldState createState() => _FullHoursBetweenFieldState();
}

class _FullHoursBetweenFieldState extends State<FullHoursBetweenField> {
  Widget build(BuildContext context) {
    return Container( // hours between
      child: Row(
        children: [
          Text("between ", style: TextStyle(fontFamily: 'Raleway')),
          Container(
            height: 20,
            width: 25,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "0",
              ),
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Text(" and ", style: TextStyle(fontFamily: 'Raleway')),
          Container(
            height: 20,
            width: 25,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "0",
              ),
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Text(" hrs/week", style: TextStyle(fontFamily: 'Raleway'))
        ],
      ),
    ); // Hours between
  }
}

class FullPaidPositionsField extends StatefulWidget {
  _FullPaidPositionsFieldState createState() => _FullPaidPositionsFieldState();
}

class _FullPaidPositionsFieldState extends State<FullPaidPositionsField> {
  Widget build(BuildContext context) {
    return Container(
          child: Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (bool myBool) => "",
              ),
              Text("Paid positions", style: TextStyle(fontFamily: 'Raleway'))
            ],
          )
      );
  }
}

class FullTagsField extends StatefulWidget {
  _FullTagsFieldState createState() => _FullTagsFieldState();
}

class _FullTagsFieldState extends State<FullTagsField> {
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
        height: 30,// Keyword Search
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Tags Separated by Commas",
              contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0)
          ),
          style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 11
          ),
        )
    ); // tags
  }
}

class UpdateButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container( //button for update
      height: 30,
      child: RaisedButton(
        child: Text(
          "UPDATE SEARCH",
          style: TextStyle(
            fontFamily: "Rajdhani",
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        onPressed: () => "", // This is the function for pulling from the field - add validation
        color: Color(0xff275D38),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
      ),
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
    );
  }
}
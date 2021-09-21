import 'package:flutter/material.dart';
import 'form/full_widgets.dart';

class FullProjectFilters extends StatefulWidget {
  _FullProjectFiltersState createState() => _FullProjectFiltersState();
}

class _FullProjectFiltersState extends State<FullProjectFilters> {

  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(1.2, 1.2),
                color: Colors.grey,
                blurRadius: 3,
                spreadRadius: 1,
              )
            ]
        ),
        height: 300,
        width: 258,
        child: Center(
            child: Column(
              children: [
                FullBoxTitle(),
                FullFiltersForm(formKey: _formKey,)
              ],
            )
        )
    );
  }
}


import 'package:flutter/material.dart';

class LearnWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const LearnWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _LearnWidgetState createState() => _LearnWidgetState();
}

class _LearnWidgetState extends State<LearnWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

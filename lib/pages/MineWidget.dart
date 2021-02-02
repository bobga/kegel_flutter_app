import 'package:flutter/material.dart';

class MineWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  const MineWidget({
    Key key,
    this.parentScaffoldKey,
  }) : super(key: key);
  @override
  _MineWidgetState createState() => _MineWidgetState();
}

class _MineWidgetState extends State<MineWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

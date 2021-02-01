import 'package:flutter/material.dart';

class SettingWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  const SettingWidget({
    Key key,
    this.parentScaffoldKey,
  }) : super(key: key);
  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

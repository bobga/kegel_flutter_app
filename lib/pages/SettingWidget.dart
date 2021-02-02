import 'package:flutter/material.dart';
import '../generated/l10n.dart';

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
  bool isReminder = true;
  bool isVibrate = true;
  bool isVoice = true;
  Color themeColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _con.scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Text(
            S.of(context).settings,
            //'Settings',
            style: Theme.of(context).textTheme.headline4.merge(
                TextStyle(letterSpacing: 1.3, fontWeight: FontWeight.bold)),
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/DayExercise');
            },
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                Icon(
                  Icons.attribution_rounded,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
            color: Colors.transparent,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(200),
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.15),
                    offset: Offset(0, 3),
                    blurRadius: 10)
              ],
            ),
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.shield,
                    color: Colors.red[400],
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    'Remove Ads',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  trailing: RaisedButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Theme.of(context).primaryColor.withAlpha(170),
                              Theme.of(context).primaryColor.withAlpha(200),
                              Theme.of(context).primaryColor.withAlpha(255),
                            ],
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child:
                          const Text('\$2.99', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  dense: true,
                  title: Text(
                    'Upgrade to remove ads',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.red),
                    ),
                    onPressed: () {},
                    color: Theme.of(context).primaryColorLight,
                    textColor: Theme.of(context).primaryColor,
                    child: Text("Why I see ads", //.toUpperCase(),
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              //color: Theme.of(context).primaryColor,
              color: Colors.white.withAlpha(200),
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.15),
                    offset: Offset(0, 3),
                    blurRadius: 10)
              ],
            ),
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.access_alarm_rounded,
                    color: Colors.yellow[900],
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    'Reminders',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  trailing: Switch(
                    value: isReminder,
                    onChanged: (value) {
                      setState(() {
                        isReminder = value;
                        print(isReminder);
                      });
                    },
                    activeTrackColor:
                        Theme.of(context).primaryColor.withOpacity(0.5),
                    activeColor: Theme.of(context).primaryColor,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: Text(
                      'Doing Kegel exercises 3 times a day can achieve the best results.',
                      style: isReminder
                          ? Theme.of(context).textTheme.subtitle1
                          : Theme.of(context).textTheme.subtitle1.merge(
                              TextStyle(color: Colors.black.withOpacity(0.6)))),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.red),
                    ),
                    onPressed: isReminder ? () => {} : null,
                    color: Theme.of(context).primaryColorLight,
                    textColor: Theme.of(context).primaryColor,
                    child: Text("+ Add reminder", //.toUpperCase(),
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              //color: Theme.of(context).primaryColor,
              color: Colors.white.withAlpha(200),
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.15),
                    offset: Offset(0, 3),
                    blurRadius: 10)
              ],
            ),
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.volume_up,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    'Sound options',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      width: 120,
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(26),
                        boxShadow: [
                          BoxShadow(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.15),
                              offset: Offset(0, 3),
                              blurRadius: 10)
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20.0)),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/img/vector_setting_vibration_blue.png"),
                            radius: 35,
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Text(
                            //S.of(context).profile_settings,
                            'Vibration',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Switch(
                            value: isVibrate,
                            onChanged: (value) {
                              setState(() {
                                isVibrate = value;
                                print(isVibrate);
                              });
                            },
                            activeTrackColor:
                                Theme.of(context).primaryColor.withOpacity(0.5),
                            activeColor: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      width: 120,
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(26),
                        boxShadow: [
                          BoxShadow(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.15),
                              offset: Offset(0, 3),
                              blurRadius: 10)
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20.0)),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/img/vector_setting_voice_blue.png"),
                            radius: 35,
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Text(
                            //S.of(context).profile_settings,
                            'Voice guide',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Switch(
                            value: isVoice,
                            onChanged: (value) {
                              setState(() {
                                isVoice = value;
                                print(isVoice);
                              });
                            },
                            activeTrackColor:
                                Theme.of(context).primaryColor.withOpacity(0.5),
                            activeColor: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(200),
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.15),
                    offset: Offset(0, 3),
                    blurRadius: 10)
              ],
            ),
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    'General settings',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                ListTile(
                  onTap: () {
                    print("tatp");
                  },
                  dense: false,
                  title: Text(
                    'Theme',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Wrap(
                    spacing: 12, // space between two icons
                    children: <Widget>[
                      Icon(
                        Icons.panorama_wide_angle_select,
                        color: Theme.of(context).primaryColor,
                      ), // icon-1
                      Text(
                        'Blue',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ), // icon-2
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    print("tatp");
                  },
                  dense: false,
                  title: Text(
                    'Gemder',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Wrap(
                    spacing: 12, // space between two icons
                    children: <Widget>[
                      Text(
                        'Female',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black,
                      ), // icon-2
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    print("tatp");
                  },
                  dense: false,
                  title: Text(
                    'Language options',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    print("tatp");
                  },
                  dense: false,
                  title: Text(
                    'Reset progress',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(200),
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.15),
                    offset: Offset(0, 3),
                    blurRadius: 10)
              ],
            ),
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.yellow[700],
                  ),
                  title: Text(
                    //S.of(context).profile_settings,
                    'Contact Us',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                ListTile(
                  onTap: () {
                    print("tatp");
                  },
                  dense: false,
                  title: Text(
                    'Privacy policy',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    print("tatp");
                  },
                  dense: false,
                  title: Text(
                    'Rate us',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  onTap: () {
                    print("tatp");
                  },
                  dense: false,
                  title: Text(
                    'Feedback',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

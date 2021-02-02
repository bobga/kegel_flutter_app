import 'package:flutter/material.dart';

class DayExerciseWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const DayExerciseWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _DayExerciseWidgetState createState() => _DayExerciseWidgetState();
}

class _DayExerciseWidgetState extends State<DayExerciseWidget> {
  final items = List<String>.generate(5, (i) => "Item $i");
  int selExe = 0;
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _con.scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Level1',
          style: Theme.of(context).textTheme.headline5.merge(
              TextStyle(letterSpacing: 1.3, fontWeight: FontWeight.bold)),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.all(20),
          height: 60,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              //side: BorderSide(color: Colors.red),
            ),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            child: Text("Start", //.toUpperCase(),
                style: TextStyle(fontSize: 26)),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () {},
        //padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            ListView(
              primary: true,
              children: <Widget>[
                ListView.separated(
                  padding: EdgeInsets.only(top: 280, bottom: 50),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: items.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 15);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(200),
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
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 55,
                          backgroundColor: selExe == index
                              ? Colors.blue[50]
                              : Colors.yellow[50],
                          child: Icon(
                            selExe == index
                                ? Icons.play_arrow_rounded
                                : Icons.bolt,
                            size: 35,
                            color: selExe == index
                                ? Colors.blue[400]
                                : Colors.yellow[900],
                          ),
                        ),
                        title: Text(
                          '3" tense, 3" relax',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        subtitle: Text(
                          'x10',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Container(
              color: Colors.grey[50],
              height: 250,
              child: Column(
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        'Day 1',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(200),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_alarm_rounded,
                          color: Colors.black,
                        ),
                        Text(
                          '23:00',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      //S.of(context).profile_settings,
                      'Exercises',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Icon(
                          Icons.content_copy,
                          color: Colors.grey,
                        ), // icon-1
                        Text(
                          '40',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

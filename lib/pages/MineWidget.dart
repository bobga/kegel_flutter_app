import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

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
  CalendarController _controller;
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _con.scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Mine',
            style: Theme.of(context).textTheme.headline4.merge(
                TextStyle(letterSpacing: 1.3, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                    title: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 18.0),
                      child: Text(
                        //S.of(context).profile_settings,
                        'Training',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                        width: 150,
                        decoration: BoxDecoration(
                          //color: Theme.of(context).primaryColor,
                          color: Colors.blue[700],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/images/bulb.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 18.0, top: 18.0),
                              child: Text(
                                'Total \nduration',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .merge(TextStyle(color: Colors.white70)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, top: 5.0, bottom: 18),
                              child: Row(
                                children: [
                                  Text(
                                    '3',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        .merge(TextStyle(color: Colors.white)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      'min',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .merge(
                                              TextStyle(color: Colors.white70)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                        width: 150,
                        decoration: BoxDecoration(
                          //color: Theme.of(context).primaryColor,
                          color: Colors.purple[700],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/images/bulb.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 18.0, top: 18.0),
                              child: Text(
                                'Total \ndays',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .merge(TextStyle(color: Colors.white70)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, top: 5.0, bottom: 18),
                              child: Row(
                                children: [
                                  Text(
                                    '1',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        .merge(TextStyle(color: Colors.white)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      'day',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .merge(
                                              TextStyle(color: Colors.white70)),
                                    ),
                                  ),
                                ],
                              ),
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
                    title: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 18.0),
                      child: Text(
                        //S.of(context).profile_settings,
                        'Duration',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      ),
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
                    title: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 18.0),
                      child: Text(
                        //S.of(context).profile_settings,
                        'Calendar',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Container(
                    child: TableCalendar(
                      initialCalendarFormat: CalendarFormat.month,
                      calendarStyle: CalendarStyle(
                          todayColor: Colors.blue,
                          selectedColor: Theme.of(context).primaryColor,
                          todayStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Colors.white)),
                      headerStyle: HeaderStyle(
                        centerHeaderTitle: true,
                        formatButtonDecoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        formatButtonTextStyle: TextStyle(color: Colors.white),
                        formatButtonShowsNext: false,
                      ),
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      // onDaySelected: (date, events) {
                      //   print(date.toUtc());
                      // },
                      builders: CalendarBuilders(
                        selectedDayBuilder: (context, date, events) =>
                            Container(
                                margin: const EdgeInsets.all(5.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Text(
                                  date.day.toString(),
                                  style: TextStyle(color: Colors.white),
                                )),
                        todayDayBuilder: (context, date, events) => Container(
                            margin: const EdgeInsets.all(5.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Text(
                              date.day.toString(),
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      calendarController: _controller,
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
                    onTap: () {
                      print("tatp");
                    },
                    dense: false,
                    title: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        //S.of(context).profile_settings,
                        'History',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .merge(TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.black,
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

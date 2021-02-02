import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ExerciseWidget extends StatefulWidget {
  @override
  _ExerciseWidgetState createState() => _ExerciseWidgetState();
}

class _ExerciseWidgetState extends State<ExerciseWidget> {
  bool _isRelax = true;
  bool _isPlay = false;
  bool _isPrivate = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black38, //change your color here
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed('/DayExercise', arguments: 0);
          },
        ),
        actions: [
          IconButton(
            iconSize: 40,
            icon: Image.asset(
              _isPrivate == false
                  ? "assets/img/ic_switch_private_off.png"
                  : "assets/img/ic_switch_private_on.png",
            ),
            onPressed: () {
              if (_isPrivate == false) {
                setState(() {
                  _isPrivate = true;
                });
              } else {
                setState(() {
                  _isPrivate = false;
                });
              }
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            width: screenSize.width,
            bottom: 150,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                      ),
                      onPressed: () {}),
                  GestureDetector(
                    onTap: () {
                      if (_isPlay == false) {
                        setState(() {
                          _isPlay = true;
                        });
                      } else {
                        setState(() {
                          _isPlay = false;
                        });
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 10,
                            color: Colors.grey.withOpacity(0.3),
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 35,
                        child: Icon(
                          _isPlay == false
                              ? Icons.play_arrow_rounded
                              : Icons.pause_rounded,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Row(
              children: [
                LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(
                    horizontal: 7,
                  ),
                  width: screenSize.width * 0.3,
                  lineHeight: 10.0,
                  percent: 1,
                  backgroundColor:
                      Theme.of(context).primaryColor.withOpacity(0.1),
                  progressColor: Theme.of(context).primaryColor,
                ),
                LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(
                    horizontal: 7,
                  ),
                  width: screenSize.width * 0.3,
                  lineHeight: 10.0,
                  percent: 0.3,
                  backgroundColor: Colors.orange.withOpacity(0.1),
                  progressColor: Colors.orange,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            child: Container(
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor:
                        Theme.of(context).primaryColor.withOpacity(0.1),
                    radius: 25,
                    child: IconButton(
                      icon: Icon(
                        Icons.vibration,
                        size: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor:
                        Theme.of(context).primaryColor.withOpacity(0.1),
                    radius: 25,
                    child: IconButton(
                      icon: Icon(
                        Icons.volume_up,
                        size: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor:
                        Theme.of(context).primaryColor.withOpacity(0.1),
                    radius: 25,
                    child: IconButton(
                      icon: Icon(
                        Icons.article,
                        size: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: screenSize.width,
            child: Column(
              children: [
                Text(
                  "1\" tense, 1\" relax",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "x1",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 80,
                  ),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: _isRelax == true
                        ? Colors.orange
                        : Theme.of(context).primaryColor,
                    child: Text(
                      _isRelax == true ? "Relax" : "Tense",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

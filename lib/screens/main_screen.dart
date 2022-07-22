import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uchinchidarsflutter/tools/alerts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var colorlist = new List<Color>.filled(16,Colors.teal);

  List<int> numberlist = [];
  int score = 0;
  int time = 0;
  late Timer timer;
  int objectindex = 15;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Game 15"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.teal,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "${score}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.teal,
                    child: Column(
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 320,
              width: 320,
              //  color: Colors.teal,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                primary: false,
                physics: ClampingScrollPhysics(),
                padding: EdgeInsets.all(20),
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(0);
                      });

                    },
                    child: Text(
                      "${numberlist[0]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[0],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(1);
                      });
                    },
                    child: Text(
                      "${numberlist[1]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[1],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(2);
                      });
                    },
                    child: Text(
                      "${numberlist[2]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[2],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(3);
                      });
                    },
                    child: Text(
                      "${numberlist[3]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[3],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(4);
                      });
                    },
                    child: Text(
                      "${numberlist[4]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[4],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(5);
                      });
                    },
                    child: Text(
                      "${numberlist[5]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[5],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(6);
                      });
                    },
                    child: Text(
                      "${numberlist[6]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[6],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(7);
                      });
                    },
                    child: Text(
                      "${numberlist[7]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[7],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(8);
                      });
                    },
                    child: Text(
                      "${numberlist[8]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[8],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(9);
                      });
                    },
                    child: Text(
                      "${numberlist[9]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[9],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(10);
                      });
                    },
                    child: Text(
                      "${numberlist[10]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[10],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(11);
                      });
                    },
                    child: Text(
                      "${numberlist[11]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[11],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(12);
                      });
                    },
                    child: Text(
                      "${numberlist[12]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[12],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(13);
                      });
                    },
                    child: Text(
                      "${numberlist[13]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[13],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(14);
                      });
                    },
                    child: Text(
                      "${numberlist[14]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[14],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        click(15);
                      });
                    },
                    child: Text(
                      "${numberlist[15]}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorlist[15],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      height: 50,
                      color: Colors.teal,
                      child: ElevatedButton(
                        child: Text("Finish"),
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        onPressed: () {},
                      )),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      height: 50,
                      color: Colors.teal,
                      child: ElevatedButton(
                        child: Text("Restart"),
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        onPressed: () {},
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void loadView() {
    objectindex = 15;
    numberlist.clear();
    for (int i = 0; i < 16; i++) {
      colorlist[i] = i < 15 ? Colors.teal : Colors.white;
      if (i < 15) {
        numberlist.add(i + 1);
      }
    }
    //numberlist.shuffle();
    numberlist.add(16);
    time = 0;
    score = 0;
  }

  void click(int clickIndex) {
    if ((clickIndex - objectindex).abs() == 1 ||
        (clickIndex - objectindex).abs() == 4) {
      colorlist[objectindex] = Colors.teal;
      colorlist[clickIndex] = Colors.white;

      int k = numberlist[objectindex];
      numberlist[objectindex] = numberlist[clickIndex];
      numberlist[clickIndex] = k;
      objectindex = clickIndex;
      score++;
      check();
    }
  }

  void check() {
    bool checked = true;
    for (int i = 0; i < numberlist.length; i++) {
      if (numberlist[i] != i + 1) {
        checked = false;
        break;
      }
      if (checked) {
        restart();
        showAwesomeDialog(context, "Congratulations !!!", "You are win");
      }
    }
  }

  void restart() {}
}

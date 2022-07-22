import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../buttons/action.dart';
import '../utils/hangmanWords.dart';
import '../screens/gameScreen.dart';
import '../screens/loadingScreen.dart';

class HomeScreen extends StatefulWidget {
  final HangmanWords hangmanWords = HangmanWords();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    widget.hangmanWords.readWords();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(child: Container()),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 8.0),
              child: Text(
                'SAVEME',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.0),
              ),
            ),
          ),
          Expanded(child: Container()),
          Center(
            child: Container(
//              padding: EdgeInsets.all(5.0),
              child: Image.asset(
                'images/gallow.png',
                height: height * 0.49,
              ),
            ),
          ),
          Expanded(child: Container()),
          Center(
            child: IntrinsicWidth(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
//                    width: 155,
                    height: 64,
                    child: ActionButton(
                      buttonTitle: 'Start',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GameScreen(
                              hangmanObject: widget.hangmanWords,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 18.0,
                  ),
                  Container(
//                    width: 155,
                    height: 64,
                    child: ActionButton(
                      buttonTitle: 'High Scores',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoadingScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          //SizedBox(height: 10.0,)
        ],
      )),
    );
  }
}
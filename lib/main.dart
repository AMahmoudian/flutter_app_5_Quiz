import 'package:flutter/material.dart';
import 'package:flutter_app_5_quiz/Questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  QuizPage();
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // Lists
  List<Widget> ScoreKeeper = [];
  List<String> QuestionKeeper = [
    'Rome is the capital of Italy',
    'Kabul is the capital of Afghanistan',
    'Qom is the capital of Iran',
    'Berlin is the capital of France',
    'New Delhi is the capital of India',
    'Baghdad is the capital of Iraq',
    'Doha is the capital of Syria'
  ];
  List<bool> AnswerKeeper = [true, true, false, false, true, true, false];

  int QuesitonnNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(33, 33, 33, 1),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 120,
                  ),
                  child: Text(
                    QuestionKeeper[QuesitonnNumber],
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: ElevatedButton(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'True',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      onPressed: () {
                        bool correctAnswer = AnswerKeeper[QuesitonnNumber];
                        if (correctAnswer == true) {
                          print('true');
                          setState(() {
                            QuesitonnNumber++;
                            ScoreKeeper.add(
                              Icon(
                                Icons.check,
                                size: 25,
                                color: Colors.green,
                              ),
                            );
                          });
                        } else {
                          print('False');
                          setState(() {
                            QuesitonnNumber++;
                            ScoreKeeper.add(
                              Icon(
                                Icons.clear,
                                size: 25,
                                color: Colors.red,
                              ),
                            );
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        primary: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: ElevatedButton(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'False',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      onPressed: () {
                        bool correctAnswer = AnswerKeeper[QuesitonnNumber];
                        if (correctAnswer != true) {
                          print('true');
                          setState(() {
                            QuesitonnNumber++;
                            ScoreKeeper.add(
                              Icon(
                                Icons.check,
                                size: 25,
                                color: Colors.green,
                              ),
                            );
                          });
                        } else {
                          print('False');
                          setState(() {
                            QuesitonnNumber++;
                            ScoreKeeper.add(
                              Icon(
                                Icons.clear,
                                size: 25,
                                color: Colors.red,
                              ),
                            );
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        primary: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Row(
                      children: ScoreKeeper,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

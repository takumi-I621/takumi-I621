import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}



class _CounterState extends State<Counter> {

  int countOne1 = 0;
  int countTwo2 = 0;
  int countThree3 = 0;
  int countFour4 = 0;
  int countFive5 = 0;

  void _incrementCounter() {
    setState(() {
      countOne1++;
      if (countOne1 == 10) {
        countOne1 = 0;
        countTwo2++;
      }
      if (countTwo2 == 10){
        countTwo2 = 0;
        countThree3++;
      }
      if (countThree3 == 10){
        countThree3 = 0;
        countFour4++;
      }
      if (countFour4 == 10){
        countFour4 = 0;
        countFive5++;
      }
      if (countFive5 == 10){
        countFive5 = 0;
      }
    });
  }
  void _resetCounter(){
    setState(() {
      countOne1 = 0;
      countTwo2 = 0;
      countThree3 = 0;
      countFour4 = 0;
      countFive5 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //ScaffoldウィジェットのappBarプロパティ
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Counter',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),

        //Scaffoldウィジェットのbodyプロパティ
        body:Stack(
          children: [
            Align(
              alignment: const Alignment(0, -0.5),
              child: Container(
                width: 360,
                height: 300,
                color: Colors.black87,
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: const Alignment(0, -0.4),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '$countFive5',
                        style: const TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                        ),
                      ),
                      width: 50,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, -0.4),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '$countFour4',
                        style: const TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                        ),
                      ),
                      width: 50,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, -0.4),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '$countThree3',
                        style: const TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                        ),
                      ),
                      width: 50,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, -0.4),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '$countTwo2',
                        style: const TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                        ),
                      ),
                      width: 50,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, -0.4),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '$countOne1',
                        style: const TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                        ),
                      ),
                      width: 50,
                      height: 220,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          )
                      ),
                    ),
                  ),
                ]
            ),

            //addボタンのサンプル
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                    child: Container(
                      margin:const EdgeInsets.only(top: 320),
                      width: 90,
                      height: 90,
                      child: ElevatedButton(
                        child: const Text(
                          '＋ add',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19.5,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          //ボタンの背景色
                          primary: Colors.grey[600],
                          //ボタンの枠色
                          side: const BorderSide(
                            color: Colors.black,
                          ),
                          //押したときの色↓
                          onPrimary: Colors.white,
                        ),
                        onPressed: (_incrementCounter),
                      ),
                    ),
                ),
                  //alignment: Alignment.center,
                const Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),),
                Center(
                    child: Container(
                      margin:const EdgeInsets.only(top: 5),
                      width: 100,
                      height: 35,
                      child: ElevatedButton(
                        child: const Text(
                          'reset',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),

                        style: ElevatedButton.styleFrom(
                          //ボタンの背景色
                          primary: Colors.grey[600],
                          //ボタンの枠色
                          side: const BorderSide(
                            color: Colors.black,
                          ),
                          //押したときの色↓
                          onPrimary: Colors.white,
                        ),
                        onPressed: (_resetCounter),
                      ),
                    )
                  //alignment: Alignment.center,

                ),
              ],
            )
          ],
        ),
      );
  }
}
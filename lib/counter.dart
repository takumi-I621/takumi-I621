import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
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
                      child: const Text(
                        '1',
                        style: TextStyle(
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
                      child: const Text(
                        '2',
                        style: TextStyle(
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
                      child: const Text(
                        '3',
                        style: TextStyle(
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
                      child: const Text(
                        '4',
                        style: TextStyle(
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
                      child: const Text(
                        '9',
                        style: TextStyle(
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
            )

          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            //SystemNavigator.pop();
          },
        )
    );
  }
}
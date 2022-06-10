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
                width: 300,
                height: 250,
                color: Colors.black,
              ),
            ),
          ],
        ),
    );
  }
}
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Example',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: SizedBox.expand(
        child: Container(
          color: Colors.lightBlueAccent,
        ),

      )

    );
  }
}

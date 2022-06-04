//→これでテンプレ展開する"stful"

import 'package:flutter/material.dart';
import 'next_page.dart';

class TestPage extends StatefulWidget {
  final String title;
  TestPage(this.title);
  //const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('テストページ'),
      ),
    );
  }
}

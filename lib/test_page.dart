//→これでテンプレ展開する"stful"

import 'package:flutter/material.dart';
import 'next_page.dart';

class TestPage extends StatefulWidget {
  //final String title;
  //TestPage(this.title);
  //const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ScaffoldウィジェットのappBarプロパティ
      appBar: AppBar(
        title: Text('テストページ'),
      ),
      //Scaffoldウィジェットのbodyプロパティ
      body: Column(
        children: [
          Container(
            width: 50,
            height: 80,
             color: Colors.blue,
          ),
          Container(
            width: 50,
            height: 80,
            color: Colors.green,
          ),
          Container(
            width: 150,
            child: Text(
             '練習文字列',
              style: TextStyle(
                fontSize: 40,
                color: Colors.red,
                //decoration: TextDecoration.lineThrough,
                fontStyle: FontStyle.italic,
              ),
              //「overflow」文字列が途中で途切れた時...で表示する工夫
              overflow: TextOverflow.ellipsis,
            ),
            //color: Colors.lightGreen,
          ),
        ],
      ),
      //「Drawer」画面はじにメニュー追加してドロワーをスワイプできるようにする
      drawer: Drawer(),
      //endDrawer: Drawer(),
      backgroundColor: Colors.yellowAccent,
    );
  }
}

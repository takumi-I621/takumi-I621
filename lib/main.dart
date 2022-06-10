import 'package:flutter/material.dart';

import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //List<String> titleList = ['amazon', '楽天', 'Yahoo!', 'みずほ銀行', 'セゾン'];
  //int _counter = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        //centerTitleをtrueでタイトル文字を中央寄せ
        centerTitle: true,
        title: const Text(
            'Home',
          style: TextStyle(
            fontSize: 30,
          ),

        ),
      ),

      //https://codezine.jp/article/detail/14711
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 100)),
                //ElevatedButton：動きのあるボタン
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text(
                      'カウンター1',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      //ボタンの背景色
                      primary: Colors.grey[300],
                      //ボタンの枠色
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      //押したときの色↓
                      onPrimary: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Counter()));
                    },
                  ),
                ),


                const Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text(
                      'カウンター3',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      //ボタンの背景色
                      primary: Colors.grey[300],
                      //ボタンの枠色
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      //押したときの色↓
                      onPrimary: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ),

              ],
            ),

            const Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),),

            Column(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 100)),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text(
                      'カウンター2',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      //ボタンの背景色
                      primary: Colors.grey[300],
                      //ボタンの枠色
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      //押したときの色↓
                      onPrimary: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ),

                const Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text(
                      'カウンター4',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      //ボタンの背景色
                      primary: Colors.grey[300],
                      //ボタンの枠色
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      //押したときの色↓
                      onPrimary: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),

          ],
        ),
      ),

    );
  }
}

//Memo 頭大文字はウィジェット
//memo 頭小文字はプロパティ
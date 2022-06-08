import 'package:flutter/material.dart';

import 'next_page.dart';

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

  void _incrementCounter() {
    setState(() {
      //_counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        //centerTitleをtrueでタイトル文字を中央寄せ
        centerTitle: true,
        title: Text('Home'),
      ),

      //https://codezine.jp/article/detail/14711
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 100)),
                Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'カウンター',
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    //color: Colors.blue,
                    width: 130,
                    height:50,
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(70),
                    color: Colors.red[200],
                ),
              ),

                const Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),),
                Container( color: Colors.red, width: 100, height:100 ),
              ],
            ),

            const Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),),

            Column(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 100)),
                Container( color: Colors.green, width: 100, height:100 ),

                const Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),),
                Container( color: Colors.orange, width: 100, height:100 ),
              ],
            ),

          ],
        ),
      ),

    );
  }
}


      /*body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(//Columnウィジェットのchildrenプロパティでウィジェットを縦に表示する
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Containerの重ね方
                  //https://www.choge-blog.com/programming/fluttercontainer-overlay/
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        //大枠の青コンテナ
                        child: Container(
                          width: 330,
                          height: 280,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(70),
                            color: Colors.blue[200],
                          ),
                        ),
                      ),
                      Align(
                        //中の小さい赤コンテナ
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            'カウンター',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(70),
                            color: Colors.red[200],
                          ),
                        ),
                      ),
                    ],
                  ),
                  //余白を設ける
                  Padding(padding: EdgeInsets.all(10)),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),*/



//Memo 頭大文字はウィジェット
//memo 頭小文字はプロパティ
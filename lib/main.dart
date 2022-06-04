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
  List<String> titleList = ['amazon', '楽天', 'Yahoo!', 'みずほ銀行', 'セゾン'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('パスワードポスト'),
      ),

      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (BuildContext context, int i){
            return Column(
              children: [
                ListTile(
                  onTap: (){
                    //画面遷移の処理を描く
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage(titleList[i])));
                  },
                  leading: Icon(Icons.vpn_key),
                  title: Text(titleList[i]),
                ),
                Divider(thickness: 1,),
              ],
            );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //ボタンが押された時の処理
          titleList.add('Google');
          print(titleList);
          setState(() {//SetState()でBuildを再度更新かける？
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}


//memo 頭大文字はウィジェット
//memo 頭小文字はプロパティ
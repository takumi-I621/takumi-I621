//↓StatefulWidgetとかContainerとかはmaterial.dartをインポートすると使える。
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'test_page.dart';


//↓クラス名にNextPageを指定している。
class NextPage extends StatefulWidget {
  final String title;
  NextPage(this.title);
  //const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),//widget.をつけると↑で定義しているtitle変数を使えるようになる。
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children:[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(//Columnウィジェットのchildrenプロパティでウィジェットを縦に表示する
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                 Container(
                    width: 50,
                    child: Text('ID')
                  ),
                  Container(
                  width: 20,
                  child: Text('：')),
                Text('毎回同じIDを表示'),
              ],
            ),
            //余白を設ける
            Padding(padding: EdgeInsets.all(10)),
             Row(
              children: [
                Container(
                  width: 50,
                  child: Text('PW')
                ),
                Container(
                  width: 20,
                  child: Text('：')
                ),
                Text('毎回同じPWを表示'),
              ],
            ),
          ],
        ),
      ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            //width: 100,
            child: TextButton(
              onPressed: (){
                //ボタン押下時の処理
                Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage()));
              },
              child: Text('テストページへ'),
            ),
            color: Colors.lightGreen,

          ),
    ],
    ),

    );
  }
}

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);


  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  Map<DateTime, List> _eventsList = {};

  DateTime _focused = DateTime.now();
  DateTime? _selected;

  int getHashCode(DateTime key) {
    return key.day * 100000 + key.month * 10000 + key.year;
  }
  @override
  void initState() {
    super.initState();

    _selected = _focused;
    _eventsList = {
      DateTime.now().subtract(const Duration(days: 10)): ['Test A', 'Test B'],
      DateTime.now(): ['Test C', 'Test D', 'Test E'],
    };
  }

  @override
  Widget build(BuildContext context) {

    final _events = LinkedHashMap<DateTime, List>(
      equals: isSameDay,
      hashCode: getHashCode,
    )..addAll(_eventsList);

    List getEvent(DateTime day) {
      return _events[day] ?? [];
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Calendar',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          TableCalendar(
            // 以下必ず設定が必要
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            eventLoader: getEvent,
            selectedDayPredicate: (day) {
              return isSameDay(_selected, day);
            },
            onDaySelected: (selected, focused){
              if (!isSameDay(_selected, selected)) {
                setState(() {
                  _selected = selected;
                  _focused = focused;
                });
              }
            },
            focusedDay: _focused,
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),),
          Column(
            children: [
              Container(

                  color:Colors.green,
                  width: double.infinity,
                  height: 150,

                  child: ListView(
                    shrinkWrap: true,
                    children: getEvent(_selected!)
                        .map((event) => ListTile(
                      title: Text(event.toString()),
                    ))
                        .toList(),
                  ),
              ),
              Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //Expandedのflex5で画面を2分割する。
                      Expanded(
                        flex: 5,
                        child: Container(
                          color:Colors.blue,
                          width: 100,
                          height: 150,
                          //Listで配列を取得する。
                          child: ListView(
                            shrinkWrap: true,
                            children: getEvent(_selected!)
                                .map((event) => ListTile(
                              title: Text(event.toString()),
                            ))
                                .toList(),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          color:Colors.red,
                          width: 100,
                          height: 150,
                          //Listで配列を取得する。
                          child: ListView(
                            shrinkWrap: true,
                            children: getEvent(_selected!)
                                .map((event) => ListTile(
                              title: Text(event.toString()),
                            ))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]


              )
            ],
          )

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('サンプルダイアログ'),
                content: const Text('ダイアログを閉じます。'),
                actions: <Widget>[
                  TextButton(
                    child: const Text("CANCEL"),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
